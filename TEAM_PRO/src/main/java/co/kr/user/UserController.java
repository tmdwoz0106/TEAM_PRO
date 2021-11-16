package co.kr.user;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import co.kr.user.VO.UserVO;
import co.kr.user.service.UserService;
@Controller
public class UserController {
	
	

	@Autowired
	public UserService userService;
	//----------------------------로그인---------------------------
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		
		return "user/login";
	}
	@RequestMapping(value = "/loginPost.do", method = RequestMethod.POST)
	public ModelAndView login_post(UserVO vo,HttpSession session) {
		ModelAndView json = new ModelAndView("jsonView");
		vo = userService.login(vo,session);
		json.addObject("vo", vo);
		return json;
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
	
//	@RequestMapping(value = "/socalLogin.do", method=RequestMethod.GET)
//	public String LoginForm() {
//		
//		System.out.println("소셜 로그인 페이지 이동합니다 ");
//		return "user/login2";
//	}
	
	@RequestMapping(value = "/slogin.do", method=RequestMethod.GET)
	public String Logincallback1(HttpSession session) {
		//int i= userService.userCheck(userid);
		System.out.println("콜백 처리 부분 ...");
		System.out.println("세션유저값"+ session.getAttribute("ssid"));
		//session.getAttribute("ssid");
	   
		return "user/login2";
	}

	@RequestMapping(value = "/naverlogin.do", method=RequestMethod.POST)
	public ModelAndView socalTest(@RequestParam (name="user_id") 
	String user_id,HttpSession session,String user_nick)
	{
		
		session.setAttribute("ssid",user_id);
		ModelAndView json= new ModelAndView("jsonView");
		
	    int i = userService.userCheck(user_id);
	    System.out.println("유저아이디"+i);
	    int j=userService.sessionUser(user_nick);

		if (i!= 0) {
			int k = userService.socialLogin(user_id);
			
				//session.setAttribute("user_no", k);
				session.setAttribute("user_nick", j);
				System.out.println("회원번호"+j);
		}

		json.addObject("result",i);
	
	   
		return json;
		
	}
	
	
	
	
	@RequestMapping(value = "/test", method=RequestMethod.GET)
	public String test(@RequestParam (name="user_id") 
	String user_id,HttpSession session)
	{
		session.setAttribute("ssid",user_id);
		System.out.println("userid는:"+user_id);	 
	     
		return "user/login2"; 
		
	}
	
	
	@RequestMapping(value = "/chat.do/{user_nick:.+}", method=RequestMethod.GET)
	public String chat(@PathVariable("user_nick") String user_nick,
	HttpServletRequest req)
	{
		HttpSession session=req.getSession();
	    user_nick= (String)session.getAttribute("ssid");
	    System.out.println("세션  usernick(유저컨트롤러에서 호출)"+user_nick);
	    System.out.println("채팅페이지 이동합니다!! ");
	    
		return "chatting/chat"; 
		
	}
	
	@RequestMapping(value = "/room.do", method=RequestMethod.GET)
	public String chatKakao()
	{
	
	    System.out.println("채팅페이지 이동합니다!! ");
	    
		return "chat2/Room1"; 
		
	}
	
	@RequestMapping(value = "/room2.do", method=RequestMethod.GET)
	public String chatKakao2(HttpServletRequest req,HttpSession session
			)
	{
	 String usernick= (String) session.getAttribute("user_nick");
	    System.out.println("세션에저장 유저 닉네임"+usernick);
	    System.out.println("채팅페이지 이동합니다!! ");
	    
		return "chat2/Room2"; 
		
	}
}
