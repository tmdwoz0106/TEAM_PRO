package co.kr.like.service.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LikeMapper {

	int insert(HashMap<String, Object> param);

	int delete(int board_no, int user_no);

	int likeCnt(int board_no);

	int likeMax();

	int likeBtn(HashMap<String, Object> param);

	int delete(HashMap<String, Object> param);

}
