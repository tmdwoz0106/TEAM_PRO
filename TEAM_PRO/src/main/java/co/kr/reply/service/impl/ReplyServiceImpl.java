package co.kr.reply.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.reply.service.ReplyService;
import co.kr.reply.service.mapper.ReplyMapper;
import co.kr.reply.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	public ReplyMapper replyMapper;

	@Override
	public List<ReplyVO> list(int board_no) {
		return replyMapper.list(board_no);
	}

	@Override
	public int replyMax() {
		return replyMapper.replyMax();
	}
}
