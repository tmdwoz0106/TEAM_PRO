package co.kr.board2.service.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import co.kr.board.VO.BoardUserVO;
import co.kr.board.VO.BoardVO;

@Mapper
public interface BoardMapper2 {

	List<BoardVO> list(HashMap<String, Object> param);

	int total(HashMap<String, Object> param);

}
