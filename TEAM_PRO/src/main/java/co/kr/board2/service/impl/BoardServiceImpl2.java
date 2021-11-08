package co.kr.board2.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.board.VO.BoardUserVO;
import co.kr.board.VO.BoardVO;
import co.kr.board2.service.BoardService2;
import co.kr.board2.service.mapper.BoardMapper2;

@Service
public class BoardServiceImpl2 implements BoardService2{

	@Autowired
	public BoardMapper2 boardMapper;

	@Override
	public int total(String keyword, String type, String board_type) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("keyword", keyword);
		param.put("type", type);
		param.put("board_type", board_type);
		return boardMapper.total(param);
	}

	@Override
	public List<BoardVO> list(int page, String keyword, String type, String board_type) {
		int amount = 10;
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("endRn", page*amount);
		param.put("startRn", (page-1)*amount);
		param.put("type", type);
		param.put("keyword", keyword);
		param.put("board_type", board_type);
		return boardMapper.list(param);
	}
}
