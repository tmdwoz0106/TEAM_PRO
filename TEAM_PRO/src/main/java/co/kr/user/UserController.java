package co.kr.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.kr.board.service.BoardService;
import co.kr.file.service.FileService;
import co.kr.reply.service.ReplyService;
import co.kr.user.VO.UserVO;
import co.kr.user.service.UserService;
@Controller
public class UserController {

	@Autowired
	public UserService userService;
	@Autowired
	public BoardService boardService;
	@Autowired
	public ReplyService replyService;
	@Autowired
	public FileService fileService;
	
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
}
