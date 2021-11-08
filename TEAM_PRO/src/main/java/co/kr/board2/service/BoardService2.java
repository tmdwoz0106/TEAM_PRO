package co.kr.board2.service;

import java.util.List;

import co.kr.board.VO.BoardUserVO;
import co.kr.board.VO.BoardVO;

public interface BoardService2 {

	int total(String keyword, String type, String board_type);

	List<BoardVO> list(int page, String keyword, String type, String board_type);

}
