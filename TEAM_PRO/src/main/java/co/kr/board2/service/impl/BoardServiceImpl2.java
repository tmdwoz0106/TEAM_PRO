package co.kr.board2.service.impl;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import java.util.Date;

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

	@Override
	public BoardUserVO detail(int board_no) {
		return boardMapper.detail(board_no);
	}

	@Override
	public int cntUP(BoardUserVO vo) {
		return boardMapper.cntUp(vo);
	}

	@Override
	public List<BoardUserVO> TypeList(int page, String keyword, String type,String board_type, String board_content) {
		int amount = 10;
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("startRn", (page-1)*amount);
		param.put("endRn", page*amount);
		param.put("type", type);
		param.put("keyword",keyword);
		param.put("board_type",board_type);
		param.put("board_content",board_content);
		
		return boardMapper.TypeList(param);
	}

	@Override
	public int Typetotal(String keyword, String type,String board_type, String board_content) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("type", type);
		param.put("keyword",keyword);
		param.put("board_type",board_type);
		param.put("board_content",board_content);
		return boardMapper.Typetotal(param);
	}

	@Override
	public int Insert(BoardVO vo) {
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		vo.setBoard_day(simple.format(date));
		return boardMapper.insert(vo);
	}

	@Override
	public int max() {
		return boardMapper.max();
	}


}
