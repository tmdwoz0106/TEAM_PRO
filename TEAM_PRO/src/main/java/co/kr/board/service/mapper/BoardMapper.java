package co.kr.board.service.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import co.kr.board.VO.BoardUserVO;
import co.kr.board.VO.BoardVO;

@Mapper
public interface BoardMapper {

	public List<BoardVO> list(HashMap<String, Object> param);

	public int total(HashMap<String, Object> param);

	public int max();

	public int insert(BoardVO vo);

	public BoardUserVO detail(int board_no);

	public int delete(int board_no);

	public int viewUp(BoardUserVO vo);

	public int modify(BoardUserVO vo);

}
