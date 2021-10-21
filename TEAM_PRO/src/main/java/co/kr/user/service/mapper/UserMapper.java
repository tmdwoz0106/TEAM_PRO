package co.kr.user.service.mapper;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;

import co.kr.user.VO.UserVO;

@Mapper
public interface UserMapper {

	public int userCheck(String user_id);

	public UserVO login(HashMap<String, Object> param);

	public int max();

	public List<UserVO> idCheck(UserVO vo);

	public int join(UserVO vo);

	public int socialLogin(String user_id);

	
}
