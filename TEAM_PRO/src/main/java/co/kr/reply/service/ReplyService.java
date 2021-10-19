package co.kr.reply.service;

import java.util.List;

import co.kr.reply.vo.ReplyVO;

public interface ReplyService {

	public List<ReplyVO> list(int board_no);

	public int replyMax();

}
