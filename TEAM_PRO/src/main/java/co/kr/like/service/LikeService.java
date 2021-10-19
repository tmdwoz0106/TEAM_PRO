package co.kr.like.service;

import java.util.HashMap;

public interface LikeService {

	int insert(HashMap<String, Object> param);

	int delete(int board_no, int user_no);

	int likeCnt(int board_no);

	int likeMax();

	int likeBtn(HashMap<String, Object> param);

}
