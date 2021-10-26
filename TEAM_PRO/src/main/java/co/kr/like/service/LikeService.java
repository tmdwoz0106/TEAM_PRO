package co.kr.like.service;

import java.util.HashMap;

public interface LikeService {

	public int insert(HashMap<String, Object> param);

	public int delete(int board_no, int user_no);

	public int likeCnt(int board_no);

	public int likeMax();

	public int likeBtn(HashMap<String, Object> param);

	public int likedelete(int board_no);

}
