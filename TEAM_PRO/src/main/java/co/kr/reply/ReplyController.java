package co.kr.reply;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import co.kr.reply.service.ReplyService;

@Controller
public class ReplyController {

	@Autowired
	public ReplyService replyService;
}
