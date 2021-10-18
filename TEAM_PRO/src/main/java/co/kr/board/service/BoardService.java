package co.kr.board.service;

import java.util.List;

import co.kr.board.VO.BoardUserVO;
import co.kr.board.VO.BoardVO;

public interface BoardService {

	public List<BoardVO> list(int page, String type, String keyword);

	public int total(String type, String keyword);

	public int max();

	public int insert(BoardVO vo);

	public BoardUserVO detail(int board_no);

	public int delete(int board_no);

	public int viewUp(BoardUserVO vo);

	public int modify(BoardUserVO vo);


}
