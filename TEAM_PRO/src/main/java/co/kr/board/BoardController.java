package co.kr.board;

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
import co.kr.board.service.BoardService;
import co.kr.file.VO.FileVO;
import co.kr.file.service.FileService;
import co.kr.like.service.LikeService;
import co.kr.reply.service.ReplyService;
import co.kr.reply.vo.ReplyVO;

@Controller
public class BoardController {
	
	
	@Autowired
	public BoardService boardService;
	
	@Autowired
	public LikeService likeService;
	
	@Autowired
	public ReplyService replyService;
	
	@Autowired
	public FileService fileService;
	
	@Resource(name = "uploadPath")
	String uploadPath;
	
	@RequestMapping(value = "/head.do", method = RequestMethod.GET)
	public String head(HttpSession session,Model model) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		if(session.getAttribute("user_no") != null) {
			int user_no = Integer.parseInt(session.getAttribute("user_no").toString());
			param.put("user_no", user_no);
			model.addAttribute("user_no", user_no);
		}else {
			int user_no = 0;
			param.put("user_no", user_no);
			model.addAttribute("user_no", user_no);	
		}
		return "head/header";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(HttpSession session,Model model) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		if(session.getAttribute("user_no") != null) {
			int user_no = Integer.parseInt(session.getAttribute("user_no").toString());
			param.put("user_no", user_no);
			model.addAttribute("user_no", user_no);
			System.out.println("세션에 저장된 유저넘버 : "+user_no);
		}else {
			int user_no = 0;
			param.put("user_no", user_no);
			model.addAttribute("user_no", user_no);
		}
		return "main/main";
	}
	
	//----------------------------게시판 리스트-----------------------------------
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(HttpSession session,Model model) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		if(session.getAttribute("user_no") != null) {
			int user_no = Integer.parseInt(session.getAttribute("user_no").toString());
			param.put("user_no", user_no);
			model.addAttribute("user_no", user_no);
			System.out.println(user_no);
		}else {
			int user_no = 0;
			param.put("user_no", user_no);
			model.addAttribute("user_no", user_no);
			System.out.println(user_no);
		}
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
		boolean next = page < endPage;
		
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
	public String insert_Post(BoardVO vo,FileVO Fvo,MultipartFile[] file) throws IOException {
		//파일 업로드
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
		boardService.insert(vo);
		return "board/list";
	}
	//-------------------------------게시글 상세보기-------------------------------
	@RequestMapping(value = "/BoardDetail.do", method = RequestMethod.GET)
	public String detail(int board_no,Model model,HttpSession session) {
		String user_nick = (String)session.getAttribute("user_nick");
		List<ReplyVO> list = replyService.list(board_no);
		List<FileVO> File = fileService.fileList(board_no);
		int replyMax = replyService.replyMax();
		BoardUserVO vo = boardService.detail(board_no);
		vo.setBoard_view(vo.getBoard_view()+1);
		boardService.viewUp(vo);
		
		//좋아요 로직 넣을 곳 
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
		return "board/detail";
	}
	//-------------------------------게시글 삭제-------------------------------
	@RequestMapping(value = "/BoardDelete.do", method = RequestMethod.POST)
	public ModelAndView delete(int board_no) {
		ModelAndView json = new ModelAndView("jsonView");
		replyService.replyDelete(board_no);
		likeService.likedelete(board_no);
		boardService.delete(board_no);
		fileService.delete(board_no);
		return json;
	}
	//-------------------------------게시글 수정-------------------------------
	@RequestMapping(value = "/BoardModify.do", method = RequestMethod.GET)
	public String modify(int board_no,Model model) {
		BoardUserVO vo = boardService.detail(board_no);
		List<FileVO> list = fileService.fileList(board_no);
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
		return "board/modify";
	}
	@RequestMapping(value = "/ModifyBoard.do", method = RequestMethod.POST)
	public String modify_Post(BoardUserVO vo,int board_no,MultipartFile[] file,FileVO fvo) throws IOException {
//		ModelAndView json = new ModelAndView("jsonView");
		boardService.modify(vo);
		//파일 수정//기존 파일 삭제 후 새로 추가하는 파일을 업로드시킴
		fileService.delete(board_no);
		System.out.println("fvo : "+fvo);
		int fileMax = fileService.fileMax();
		if(file[0].getSize() != 0) {
		for(int i = 0; i < file.length; i++) {
			System.out.println(i);
			String file_name = file[i].getOriginalFilename();
			String file_path = uploadPath+"\\"+file_name;
			File target = new File(uploadPath, file_name);
			
			FileCopyUtils.copy(file[i].getBytes(), target);
			
			fvo.setFile_no(fileMax+1+i);
			fvo.setFile_name(file_name);
			fvo.setFile_path(file_path);
			
			fileService.insert(fvo);
		}
		}
		return "redirect:/BoardDetail.do?board_no="+vo.getBoard_no();
	}
	@RequestMapping(value = "/locode.do", method = RequestMethod.GET)
	public String Locode(Model model,HttpSession session) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		if(session.getAttribute("user_no") != null) {
			int user_no = Integer.parseInt(session.getAttribute("user_no").toString());
			param.put("user_no", user_no);
			model.addAttribute("user_no", user_no);
		}else {
			int user_no = 0;
			param.put("user_no", user_no);
			model.addAttribute("user_no", user_no);	
		}
		return "board/locode";
	}
	
	@RequestMapping(value = "/adverpop.do", method = RequestMethod.GET)
	public String adver() {
		return "adver/adver";
	}
}
