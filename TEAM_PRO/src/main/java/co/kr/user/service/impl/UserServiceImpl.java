package co.kr.user.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.user.VO.UserVO;
import co.kr.user.service.UserService;
import co.kr.user.service.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	public UserMapper userMapper;

	// ---------------------------------------로그인------------------------------
	@Override
	public UserVO login(UserVO vo, HttpSession session) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		int i = userMapper.userCheck(vo.getUser_id());
		if (i > 0) {
			param.put("user_id", vo.getUser_id());
			param.put("user_pw", vo.getUser_pw());
			vo = userMapper.login(param);
			if (vo == null) {
				vo = new UserVO();
				vo.setMsg("잘못된 비밀번호입니다.");
				return vo;
			} else {
				session.setAttribute("user_no", vo.getUser_no());
				return vo;
			}
		} else {
			vo = new UserVO();
			vo.setMsg("없는 아이디입니다.");
			return vo;
		}
	}

	// -------------------------------회원가입-----------------------------
	@Override
	public int max() {
		return userMapper.max();
	}

	@Override
	public int join(UserVO vo) {
//		vo = new UserVO();
		List<UserVO> list = userMapper.idCheck(vo);
		for (int i = 0; i < list.size(); i++) {
			if (vo.getUser_id().equals(list.get(i).getUser_id())) {
				vo.setMsg("이미 등록된 아이디입니다.");
				return 0;
			}
		}
		return userMapper.join(vo);

	}
}
