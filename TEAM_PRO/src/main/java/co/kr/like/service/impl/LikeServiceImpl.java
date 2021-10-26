package co.kr.like.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.like.service.LikeService;
import co.kr.like.service.mapper.LikeMapper;

@Service
public class LikeServiceImpl implements LikeService {
	
	@Autowired
	public LikeMapper likeMapper;

	@Override
	public int insert(HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		return likeMapper.insert(param);
	}

	@Override
	public int delete(int board_no, int user_no) {
		HashMap<String, Object> param= new HashMap<String, Object>();
		param.put("board_no", board_no);
		param.put("user_no", user_no);
		return likeMapper.delete(param);
	}

	@Override
	public int likeCnt(int board_no) {
		// TODO Auto-generated method stub
		return likeMapper.likeCnt(board_no);
	}

	@Override
	public int likeMax() {
		// TODO Auto-generated method stub
		return likeMapper.likeMax();
	}

	@Override
	public int likeBtn(HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		return likeMapper.likeBtn(param);
	}

	@Override
	public int likedelete(int board_no) {

		return likeMapper.likedelete(board_no);
	}

}
