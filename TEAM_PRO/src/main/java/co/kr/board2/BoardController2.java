package co.kr.board2;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.kr.board.VO.BoardUserVO;
import co.kr.board.VO.BoardVO;
import co.kr.board2.service.BoardService2;

@Controller
public class BoardController2 {

	@Autowired
	public BoardService2 boardService;
	
	@RequestMapping(value = "/list.do",method = RequestMethod.GET)
	public String list_detail(String board_type,Model model,HttpSession session) {
		if(session.getAttribute("user_no") != null) {
			int user_no = Integer.parseInt(session.getAttribute("user_no").toString());
			model.addAttribute("user_no", user_no);
		}else {
			int user_no = 0;
			model.addAttribute("user_no", user_no);
		}
		model.addAttribute("type", board_type);
		return "board2/list";
	}
	@RequestMapping(value = "/listType.do", method = RequestMethod.GET)
	public ModelAndView list_Detail(int page, String keyword, String type,String board_type) {
		ModelAndView json = new ModelAndView("jsonView");
		List<BoardVO> list = boardService.list(page,keyword,type,board_type);
		int endPage = (int)(Math.ceil(page*1.0/10))*10;
		int startPage = endPage - 9;
		if(startPage <= 0) {
			startPage = 1;
		}
		
		int total = boardService.total(keyword,type,board_type);
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
}
