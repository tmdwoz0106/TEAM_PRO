package co.kr.reply.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
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

	@Override
	public int insert(ReplyVO vo) {
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		vo.setReply_day(simple.format(date));
		return replyMapper.insert(vo);
	}

	@Override
	public int delete(int reply_no) {
		return replyMapper.delete(reply_no);
	}

	@Override
	public int modify(ReplyVO vo) {
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		vo.setReply_day(simple.format(date));
		return replyMapper.modify(vo);
	}

	@Override
	public int replyDelete(int board_no) {
		return replyMapper.replyDelete(board_no);
	}
}
