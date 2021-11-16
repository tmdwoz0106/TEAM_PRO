package co.kr.board.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.board.VO.BoardUserVO;
import co.kr.board.VO.BoardVO;
import co.kr.board.service.BoardService;
import co.kr.board.service.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	public BoardMapper boardMapper;

	@Override
	public List<BoardVO> list(int page, String type, String keyword) {
		int amount = 10;
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("startRn", (page-1)*amount);
		param.put("endRn", page*amount);
		param.put("type", type);
		param.put("keyword", keyword);
		return boardMapper.list(param);
	}

	@Override
	public int total(String type, String keyword) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("type", type);
		param.put("keyword", keyword);
		return boardMapper.total(param);
	}

	@Override
	public int max() {
		return boardMapper.max();
	}

	@Override
	public int insert(BoardVO vo) {
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		vo.setBoard_day(simple.format(date));
		return boardMapper.insert(vo);
	}

	@Override
	public BoardUserVO detail(int board_no) {
		return boardMapper.detail(board_no);
	}

	@Override
	public int delete(int board_no) {
		return boardMapper.delete(board_no);
	}

	@Override
	public int viewUp(BoardUserVO vo) {
		return boardMapper.viewUp(vo);
	}

	@Override
	public int modify(BoardUserVO vo) {
		return boardMapper.modify(vo);
	}
}
