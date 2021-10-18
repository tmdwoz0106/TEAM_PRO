package co.kr.board;

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
import co.kr.board.service.BoardService;

@Controller
public class BoardController {
	
	//브랜치 테스트 주영

	@Autowired
	public BoardService boardService;
	//----------------------------게시판 리스트-----------------------------------
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String list(HttpSession session,Model model) {

		return "board/list";
	}
	@RequestMapping(value = "/listGET.do", method = RequestMethod.GET)
	public ModelAndView list_ajax(int page, String type, String keyword) {
		ModelAndView json = new ModelAndView("jsonView");
		List<BoardVO> list = boardService.list(page,type,keyword);
		
		int endPage = (int)(Math.ceil(page*1.0/10))*10;
		int startPage = endPage-9;
		if(startPage <= 0) {
			startPage = 1;
		}
		
		int total = boardService.total(type,keyword);
		int totalPage = (int)(Math.ceil(total*1.0/10));
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		boolean prev = page > startPage;
		boolean next = page < startPage;
		
		json.addObject("list", list);
		json.addObject("endPage", endPage);
		json.addObject("startPage", startPage);
		json.addObject("prev", prev);
		json.addObject("next", next);
		return json;
	}
	//-------------------------------게시글 작성-------------------------------
	@RequestMapping(value = "/BoardInsert.do", method = RequestMethod.GET)
	public String insert(Model model,HttpSession session) {
		int max = boardService.max();
		int user_no = Integer.parseInt(session.getAttribute("user_no").toString());
		
		model.addAttribute("max", max+1);
		model.addAttribute("user_no", user_no);
		return "board/insert";
	}
	@RequestMapping(value = "/InsertBoard.do", method = RequestMethod.POST)
	public ModelAndView insert_Post(BoardVO vo) {
		ModelAndView json = new ModelAndView("jsonView");
		boardService.insert(vo);
		return json;
	}
	//-------------------------------게시글 상세보기-------------------------------
	@RequestMapping(value = "/BoardDetail.do", method = RequestMethod.GET)
	public String detail(int board_no,Model model,HttpSession session) {
		BoardUserVO vo = boardService.detail(board_no);
		vo.setBoard_view(vo.getBoard_view()+1);
		boardService.viewUp(vo);
		
		model.addAttribute("vo", vo);
		return "board/detail";
	}
	//-------------------------------게시글 삭제-------------------------------
	@RequestMapping(value = "/BoardDelete.do", method = RequestMethod.POST)
	public ModelAndView delete(int board_no) {
		ModelAndView json = new ModelAndView("jsonView");
		boardService.delete(board_no);
		return json;
	}
	//-------------------------------게시글 수정-------------------------------
	@RequestMapping(value = "/BoardModify.do", method = RequestMethod.GET)
	public String modify(int board_no,Model model) {
		BoardUserVO vo = boardService.detail(board_no);
		model.addAttribute("vo", vo);
		return "board/modify";
	}
	@RequestMapping(value = "/ModifyBoard.do", method = RequestMethod.POST)
	public ModelAndView modify_Post(BoardUserVO vo) {
		ModelAndView json = new ModelAndView("jsonView");
		boardService.modify(vo);
		return json;
	}
}
