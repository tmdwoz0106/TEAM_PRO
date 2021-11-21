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
	public UserVO login(UserVO vo, HttpSession session,String decryptedUID,String decryptedPWD) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		int i = userMapper.userCheck(decryptedUID);
		System.out.println(i);
		if (i > 0) {
			param.put("user_id", decryptedUID);
			param.put("user_pw", decryptedPWD);
			vo = userMapper.login(param);
			if (vo == null) {
				vo = new UserVO();
				vo.setMsg("잘못된 비밀번호입니다.");
				return vo;
			} else {
				session.setAttribute("user_no", vo.getUser_no());
				session.setAttribute("user_nick", vo.getUser_nick());
				System.out.println(session.getAttribute("user_nick"));
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

	@Override
	public UserVO userDetail(int user_no) {
		return userMapper.userDetail(user_no);
	}

	@Override
	public int userDelete(int user_no) {
		return userMapper.userDelete(user_no);
	}

	@Override
	public int modify(UserVO vo) {
		return userMapper.userModify(vo);
	}
	
	public int idCheck(String user_id) {
	
		return userMapper.userCheck(user_id);
	}


	@Override
	public int socialLogin(String user_id) {
		return userMapper.socialLogin(user_id);
	}

	@Override
	public List<UserVO> list(int page, String keyword, String type) {
		int amount = 10;
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("startRn", (page-1)*amount);
		param.put("endRn", page*amount);
		param.put("keyword", keyword);
		param.put("type", type);
		return userMapper.list(param);
	}

	@Override
	public int userTotal(String keyword, String type) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("keyword", keyword);
		param.put("type", type);
		return userMapper.userTotal(param);
	}
}
