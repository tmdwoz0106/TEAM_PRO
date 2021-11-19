package co.kr.user.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import co.kr.user.VO.UserVO;

public interface UserService {

	public UserVO login(UserVO vo,HttpSession session,String decryptedUID,String decryptedPWD);

	public int max();

	public int join(UserVO vo);

	public UserVO userDetail(int user_no);

	public int userDelete(int user_no);

	public int modify(UserVO vo);

	public int idCheck(String user_id);

	public int socialLogin(String user_id);

	public List<UserVO> list(int page, String keyword, String type);

	public int userTotal(String keyword, String type);


}
