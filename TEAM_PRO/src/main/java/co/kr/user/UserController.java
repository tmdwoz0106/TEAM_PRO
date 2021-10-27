package co.kr.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping(value = "/socalLogin.do", method=RequestMethod.GET)
	public String LoginForm() {
		
		System.out.println("소셜 로그인 페이지 이동합니다 ");
		return "user/login2";
	}
	
	@RequestMapping(value = "/callback", method=RequestMethod.GET)
	public String Logincallback1() {
		//int i= userService.userCheck(userid);
		System.out.println("콜백 처리 부분 ...");
		return "user/login2";
	}
	@RequestMapping(value = "/callback2", method=RequestMethod.GET)
	public String Logincallback2() {
		//int i= userService.userCheck(userid);
		System.out.println("콜백 처리 부분 ...");
		return "user/login2";
	}
	
	
	@RequestMapping(value = "/naverlogin.do", method=RequestMethod.POST)
	public ModelAndView socalTest(@RequestParam (name="user_id") 
	String userid,HttpSession session)
	{
	
		ModelAndView json= new ModelAndView("jsonView");
		System.out.println(userService.userCheck(userid));
        ////아이디 찾기 
	    int i = userService.userCheck(userid);
	    System.out.println("유저아이디"+i);

		if (i!= 0) {
			int k = userService.socialLogin(userid);
			if (k != 0) {
				session.setAttribute("user_no", k);
				System.out.println("회원번호"+k);
			} 
		}
		json.addObject("result",i);
	    System.out.println("userid는:"+userid);	 
	   
		return json;
		
	}
	
	
	@RequestMapping(value = "/test", method=RequestMethod.GET)
	public String test(@RequestParam (name="user_id") 
	String userid,HttpSession session)
	{
		session.setAttribute("ssid",userid);
		System.out.println("userid는:"+userid);	 
	     
		return "login2";
		
	}

}
