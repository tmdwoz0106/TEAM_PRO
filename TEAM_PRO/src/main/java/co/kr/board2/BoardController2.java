package co.kr.board2;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.kr.board.VO.BoardUserVO;
import co.kr.board.VO.BoardVO;
import co.kr.board2.service.BoardService2;
import co.kr.file.VO.FileVO;
import co.kr.file.service.FileService;
import co.kr.like.service.LikeService;
import co.kr.reply.service.ReplyService;
import co.kr.reply.vo.ReplyVO;
import co.kr.user.VO.UserVO;

@Controller
public class BoardController2 {

	@Autowired
	public BoardService2 boardService;
	
	@Autowired
	public LikeService likeService;
	
	@Autowired
	public ReplyService replyService;
	
	@Autowired
	public FileService fileService;
	
	@Resource(name = "uploadPath")
	String uploadPath;
	
	
	@RequestMapping(value = "/list.do",method = RequestMethod.GET)
	public String list_detail(String board_type,Model model,HttpSession session) {
		if(session.getAttribute("user_no") != null) {
			int user_no = Integer.parseInt(session.getAttribute("user_no").toString());
			model.addAttribute("user_no", user_no);
		}else {
			int user_no = 0;
			model.addAttribute("user_no", user_no);
		}
		model.addAttribute("board_Type", board_type);
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
	
	@RequestMapping(value = "/detailType.do", method = RequestMethod.GET)
	public String type_detail(int board_no,Model model,HttpSession session,String board_type) {
		String user_nick = (String)session.getAttribute("user_nick");
		BoardUserVO vo = boardService.detail(board_no);
		List<ReplyVO> list = replyService.list(board_no);
		List<FileVO> File = fileService.fileList(board_no);
		int replyMax = replyService.replyMax();
		
		vo.setBoard_view(vo.getBoard_view()+1);
		boardService.cntUP(vo);

		int likeCnt = likeService.likeCnt(board_no);
		
		int likeMax = likeService.likeMax();
		
		HashMap<String, Object> param = new HashMap<String, Object>();

		if(session.getAttribute("user_no") != null) {
			int user_no = Integer.parseInt(session.getAttribute("user_no").toString());
			param.put("board_no", board_no);
			param.put("user_no", user_no);
			int likeBtn = likeService.likeBtn(param);
			model.addAttribute("likeBtn", likeBtn);
			model.addAttribute("user_no", user_no);
		}else {
			int user_no = 0;
			param.put("board_no", board_no);
			param.put("user_no", user_no);
			int likeBtn = likeService.likeBtn(param);
			model.addAttribute("likeBtn", likeBtn);
			model.addAttribute("user_no", user_no);
		}
		model.addAttribute("file", File);
		
		model.addAttribute("likeMax", likeMax+1);
		model.addAttribute("like", likeCnt);
		
		model.addAttribute("user_nick", user_nick);
		model.addAttribute("replyMax", replyMax+1);
		model.addAttribute("list", list);
		model.addAttribute("vo", vo);
		model.addAttribute("board_type", board_type);
		return "board2/detail";
	}
	//--------------------------where like 사용--------------------------
	@RequestMapping(value = "/typeList.do", method = RequestMethod.GET)
	public String typeList(String board_type,String board_content,Model model,HttpSession session) {
		if(session.getAttribute("user_no") != null) {
			int user_no = Integer.parseInt(session.getAttribute("user_no").toString());
			model.addAttribute("user_no", user_no);
		}else {
			int user_no = 0;
			model.addAttribute("user_no", user_no);
		}
		System.out.println(board_type);
		System.out.println(board_content);
		model.addAttribute("board_type",board_type);
		model.addAttribute("content",board_content);
		return "board2/typeList";
	}
	@RequestMapping(value = "/TypeList.do", method = RequestMethod.GET)
	public ModelAndView typeList_ajax(int page, String keyword, String type,String board_type, String board_content) {
		ModelAndView json = new ModelAndView("jsonView");
		List<BoardUserVO> list = boardService.TypeList(page,keyword,type,board_type,board_content);
		int endPage = (int)(Math.ceil(page*1.0/10))*10;
		int startPage = endPage - 9;
		if(startPage <= 0) {
			startPage = 1;
		}
		
		int Typetotal = boardService.Typetotal(keyword,type,board_type,board_content);
		int TypetotalPage = (int)(Math.ceil(Typetotal*1.0/10));
		if(endPage > TypetotalPage) {
			endPage = TypetotalPage;
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
	//-------------------------타입별 추가----------------------------------
	@RequestMapping(value = "/TypeInsert.do", method = RequestMethod.GET)
	public String TypeInsert(Model model,HttpSession session) {
		int max = boardService.max();
		int user_no = Integer.parseInt(session.getAttribute("user_no").toString());
		
		model.addAttribute("max", max+1);
		model.addAttribute("user_no", user_no);
		return "board2/insert";
	}
	@RequestMapping(value = "/InsertType.do", method = RequestMethod.POST)
	public String InsertType(BoardVO vo,FileVO Fvo,MultipartFile[] file) throws IOException {
		int fileMax = fileService.fileMax();
		for(int i = 0; i < file.length; i++) {
			if(file[i].getOriginalFilename() != "") {
			String file_name = file[i].getOriginalFilename();
			String file_path = uploadPath +"\\" + file_name;
			File target = new File(uploadPath, file_name);
			FileCopyUtils.copy(file[i].getBytes(), target);
			Fvo.setFile_name(file_name);
			Fvo.setFile_path(file_path);
			Fvo.setFile_no(fileMax+1+i);
			
			fileService.insert(Fvo);
			}
		}
		boardService.Insert(vo);
		return "redirect:/detailType.do?board_no="+vo.getBoard_no();
	}
}
