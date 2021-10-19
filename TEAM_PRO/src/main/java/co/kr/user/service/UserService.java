package co.kr.user.service;

import javax.servlet.http.HttpSession;

import co.kr.user.VO.UserVO;

public interface UserService {

	public UserVO login(UserVO vo,HttpSession session);

	public int max();

	public int join(UserVO vo);

	public int idCheck(String userid);

}
