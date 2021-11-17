package co.kr.user;

import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.crypto.Cipher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
 
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.kr.board.service.BoardService;
import co.kr.file.service.FileService;
import co.kr.reply.service.ReplyService;
import co.kr.user.VO.UserVO;
import co.kr.user.service.UserService;
@Controller
public class UserController {
	
	private HttpSession session = null;
	//
	@Autowired
	public UserService userService;
	@Autowired
	public BoardService boardService;
	@Autowired
	public ReplyService replyService;
	@Autowired
	public FileService fileService;
	
	@Autowired
	JavaMailSender mailSender;
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	public String decryptRsa(PrivateKey privateKey, String securedValue) {
		 String decryptedValue = "";
		 try{
			Cipher cipher = Cipher.getInstance("RSA");
		   /**
			* 암호화 된 값은 byte 배열이다.
			* 이를 문자열 폼으로 전송하기 위해 16진 문자열(hex)로 변경한다. 
			* 서버측에서도 값을 받을 때 hex 문자열을 받아서 이를 다시 byte 배열로 바꾼 뒤에 복호화 과정을 수행한다.
			*/
			byte[] encryptedBytes = hexToByteArray(securedValue);
			cipher.init(Cipher.DECRYPT_MODE, privateKey);
			byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
			decryptedValue = new String(decryptedBytes, "utf-8"); // 문자 인코딩 주의.
		 }catch(Exception e)
		 {
			 logger.info("decryptRsa Exception Error : "+e.getMessage());
		 }
			return decryptedValue;
	} 
	/** 
	 * 16진 문자열을 byte 배열로 변환한다. 
	 */
	 public static byte[] hexToByteArray(String hex) {
		if (hex == null || hex.length() % 2 != 0) {
			return new byte[]{};
		}
	 
		byte[] bytes = new byte[hex.length() / 2];
		for (int i = 0; i < hex.length(); i += 2) {
			byte value = (byte)Integer.parseInt(hex.substring(i, i + 2), 16);
			bytes[(int) Math.floor(i / 2)] = value;
		}
		return bytes;
	}
	//----------------------------로그인---------------------------
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(HttpServletRequest request,HttpServletResponse response) throws NoSuchAlgorithmException, InvalidKeySpecException {
		HttpSession session = request.getSession();

		
		KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
		generator.initialize(1024);
		KeyPair keyPair = generator.genKeyPair();
		KeyFactory keyFactory = KeyFactory.getInstance("RSA");
		PublicKey publicKey = keyPair.getPublic();
		PrivateKey privateKey = keyPair.getPrivate();
 
		session.setAttribute("_RSA_WEB_Key_", privateKey);   //세션에 RSA 개인키를 세션에 저장한다.
		RSAPublicKeySpec publicSpec = (RSAPublicKeySpec) keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);
		String publicKeyModulus = publicSpec.getModulus().toString(16);
		String publicKeyExponent = publicSpec.getPublicExponent().toString(16);
		
		request.setAttribute("RSAModulus", publicKeyModulus);  //로그인 폼에 Input Hidden에 값을 셋팅하기위해서
		request.setAttribute("RSAExponent", publicKeyExponent);   //로그인 폼에 Input Hidden에 값을 셋팅하기위해서
		return "user/login";
	}
	//
	@RequestMapping(value = "/loginPost.do", method = RequestMethod.POST)
	public ModelAndView login_post(UserVO vo,HttpSession session,HttpServletRequest request) {
		ModelAndView json = new ModelAndView("jsonView");
		
		String user_id = (String) request.getParameter("encryptedID");
		String user_pw = (String) request.getParameter("encryptedPWD");
		System.out.println(user_id);
		System.out.println(user_pw);
		session = request.getSession();
		PrivateKey privateKey = (PrivateKey) session.getAttribute("_RSA_WEB_Key_");

		String decryptedUID= decryptRsa(privateKey, user_id);
		String decryptedPWD = decryptRsa(privateKey, user_pw);

		System.out.println(decryptedUID);
		System.out.println(decryptedPWD);		
		
		vo = userService.login(vo,session,decryptedUID,decryptedPWD);
		json.addObject("vo", vo);
		return json;
		//	
	}
	//-----------------------------로그아웃---------------------------
	@RequestMapping(value = "/logout.do", method = RequestMethod.POST)
	public ModelAndView logout(HttpSession session) {
		ModelAndView json = new ModelAndView("jsonView");
		session.invalidate();
		return json;
	}
	//----------------------------회원가입----------------------------
	@RequestMapping(value = "/userJoin.do", method = RequestMethod.GET)
	public String joinus(Model model) {
		int max = userService.max();
		model.addAttribute("max", max+1);
		System.out.println("유저 마지막 번호 : "+max);
		return "user/joinus";
	}
	
	@RequestMapping(value = "/JoinUser.do", method = RequestMethod.POST)
	public ModelAndView joinus_post(UserVO vo) {
		ModelAndView json = new ModelAndView("jsonView");
		if(userService.join(vo) > 0) {
			json.addObject("msg", "회원가입 성공");
			json.addObject("result", "1");
		}else{
			json.addObject("msg", vo.getMsg());
			json.addObject("0", "result");
		}
		return json;
	}
	
	//-------------------------이메일 체크---------------------------------
	@RequestMapping(value = "/checkMail.do", method = RequestMethod.POST)
	   public ModelAndView sendMail(String mail) {
	      ModelAndView json = new ModelAndView("jsonView");
	      Random random = new Random(); // 난수
	      String authCode = ""; // 인증번호

	      SimpleMailMessage message = new SimpleMailMessage();
	      message.setTo(mail);
	      for (int i = 0; i < 3; i++) {
	         int index = random.nextInt(25) + 65; // a~z 알파벳
	         authCode += (char) index;
	      }
	      int numIndex = random.nextInt(9999) + 1000;// 4자리 랜덤정수
	      authCode += numIndex;
	      message.setSubject("[locode] 귀하의 계정 생성을 위한 인증 코드를 확인해 주세요.");
	      message.setText("[locode]귀하의 인증번호는 " + authCode+"입니다.계정 생성에 동의한다면 회원가입 창에 인증 번호를 입력해 주세요.문제가 있다면, 관리자에게 문의 바랍니다.");
	      mailSender.send(message);
	      System.out.println(authCode+"오토코드");
	      json.addObject("authCode", authCode);
	      return json;
	   }

	//-------------------------내정보 보러가기-------------------------------
	@RequestMapping(value = "/userDetail.do", method = RequestMethod.GET)
	public String user_Detail(int user_no,Model model) {
		UserVO vo = userService.userDetail(user_no);
		model.addAttribute("vo", vo);
		return "user/detail";
	}
	
	//-------------------------회원 탈퇴------------------------------------
	@RequestMapping(value = "/userDelete.do", method = RequestMethod.POST)
	public ModelAndView user_delete(int user_no,HttpSession session) {
		ModelAndView json = new ModelAndView("jsonView");
		userService.userDelete(user_no);
		session.invalidate();
		return json;
	}
	//--------------------------회워정보 변경----------------------------------
	@RequestMapping(value = "/userModify.do", method = RequestMethod.POST)
	public ModelAndView user_modify(UserVO vo) {
		ModelAndView json = new ModelAndView("jsonView");
		userService.modify(vo);
		return json;
	}
	//카카오 소셜로그인 
	@RequestMapping(value = "slogin.do" ,method = RequestMethod.GET)
	public String slogin_page(String user_id,HttpSession session) {
		session.getAttribute("ssID");
		return "user/socialLogin";
	}
	//구글 소셜로그인
	@RequestMapping(value = "slogin2.do" ,method = RequestMethod.GET)
	public String slogin2_page(String user_id,HttpSession session) {
		session.setAttribute("ssID",user_id);
		return "user/socialLogin";
	}
	
	
	// 카카오 소셜로그인 parameter값 받아오기
	@GetMapping("/test")
	public void kakaopost(@RequestParam(name="userid")String userid,HttpSession session) {
		System.out.println("\n\n\n\n\n");
		System.out.println("userid =="+userid);
		
		session.setAttribute("ssID", userid);
	}

	//소셜로그인 아이디와 DB 확인
	@RequestMapping(value="/social.do",method = RequestMethod.POST)
	public ModelAndView social(String user_id,UserVO vo,HttpSession session) {
		ModelAndView json = new ModelAndView("jsonView");
		
		int i =userService.idCheck(user_id);
		if(i!=0) {
			
			int k = userService.socialLogin(user_id);
			if(k !=0) {
				session.setAttribute("user_no", k);
				System.out.println(k);
			}
		}
	    json.addObject("result",i);
		return json;
	}
	//----------------------------관리자 유저 정보확인----------------------------
	@RequestMapping(value = "/userInfo.do",method = RequestMethod.GET)
	public String userDelete() {
		
		return "user/userInfo";
	}
	@RequestMapping(value = "/infoUser.do", method = RequestMethod.GET)
	public ModelAndView user_info(int page, String keyword, String type) {
		ModelAndView json = new ModelAndView("jsonView");
		List<UserVO> list = userService.list(page,keyword,type);
		int endPage = (int)(Math.ceil(page*1.0/10))*10;
		int startPage = endPage - 9;
		if(startPage <= 0) {
			startPage = 1;
		}
		int total = userService.userTotal(keyword,type);
		int totalPage = (int)(Math.ceil(total*1.0/10));
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		boolean prev = page > 1;
		boolean next = page < endPage;
		
		json.addObject("list", list);
		json.addObject("endPage", endPage);
		json.addObject("startPage", startPage);
		json.addObject("prev", prev);
		json.addObject("next", next);
		return json;
	}
	
	//-------------------------관리자 유저 삭제-----------------------------
	@RequestMapping(value = "/deleteUser.do", method = RequestMethod.POST)
	public ModelAndView userdelete(int user_no) {
		ModelAndView json = new ModelAndView("jsonView");
		System.out.println("들어오는 유저 넘버 : " + user_no);
		userService.userDelete(user_no);
		return json;
	}
}
