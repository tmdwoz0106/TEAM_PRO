package co.kr.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
 
import org.springframework.web.bind.annotation.GetMapping;
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
	@RequestMapping(value = "slogin.do" ,method = RequestMethod.GET)
	public String slogin_page() {
		
		return "user/socialLogin";
	}
	// 소셜로그인 parameter값 받아오기
	@GetMapping("/test")
	public String posttest(@RequestParam(name="userid")String userid,Model model,HttpSession session) {
		System.out.println("\n\n\n\n\n");
		System.out.println("userid =="+userid);
		//model.addAttribute("userid", userid );
		session.setAttribute("ssID", userid);
		
		return userid;
	}
	//카카오 아이디와 DB 확인
	@RequestMapping(value="/kakaoLogin.do",method = RequestMethod.POST)
	public ModelAndView kakaoLogin(String user_id,HttpSession session,UserVO vo) {
		ModelAndView json = new ModelAndView("jsonView");
		
		
		int i =userService.idCheck(user_id);
		if(i!=0) {
			
			int k = userService.socialLogin(user_id);
			if(k !=0) {
				session.setAttribute("user_no", k);
			}
		}
		
	    json.addObject("result",i);
	    
		
		return json;
	}
}
