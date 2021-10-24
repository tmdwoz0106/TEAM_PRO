package co.kr.reply;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.kr.reply.service.ReplyService;
import co.kr.reply.vo.ReplyVO;

@Controller
public class ReplyController {

	@Autowired
	public ReplyService replyService;
	
	@RequestMapping(value = "/replyInsert.do", method = RequestMethod.GET)
	public String reply_insert(ReplyVO vo) {
		replyService.insert(vo);
		return "redirect:/BoardDetail.do?board_no="+vo.getBoard_no();
	}
	
	@RequestMapping(value = "/replyDelete.do", method = RequestMethod.POST)
	public ModelAndView reply_delete(int reply_no) {
		ModelAndView json = new ModelAndView("jsonView");
		replyService.delete(reply_no);
		return json;
	}
	@RequestMapping(value = "/replyModify.do", method = RequestMethod.GET)
	public String reply_modify(ReplyVO vo) {
		replyService.modify(vo);
		return "redirect:/BoardDetail.do?board_no="+vo.getBoard_no();
	}
}
