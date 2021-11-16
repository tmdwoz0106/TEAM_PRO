package co.kr.board2.service;

import java.util.List;

import co.kr.board.VO.BoardUserVO;
import co.kr.board.VO.BoardVO;
import co.kr.user.VO.UserVO;

public interface BoardService2 {

	public int total(String keyword, String type, String board_type);

	public List<BoardVO> list(int page, String keyword, String type, String board_type);

	public BoardUserVO detail(int board_no);

	public int cntUP(BoardUserVO vo);

	public List<BoardUserVO> TypeList(int page, String keyword, String type,String board_type, String board_content);

	public int Typetotal(String keyword, String type,String board_type, String board_content);

	public int Insert(BoardVO vo);

	public int max();



}
