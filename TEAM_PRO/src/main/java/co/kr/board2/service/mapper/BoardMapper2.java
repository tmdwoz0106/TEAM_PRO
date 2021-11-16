package co.kr.board2.service.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import co.kr.board.VO.BoardUserVO;
import co.kr.board.VO.BoardVO;
import co.kr.user.VO.UserVO;

@Mapper
public interface BoardMapper2 {

	public List<BoardVO> list(HashMap<String, Object> param);

	public int total(HashMap<String, Object> param);

	public BoardUserVO detail(int board_no);

	public int cntUp(BoardUserVO vo);

	public List<BoardUserVO> TypeList(HashMap<String, Object> param);

	public int Typetotal(HashMap<String, Object> param);

	public int insert(BoardVO vo);

	public int max();

}
