package co.kr.webhelper.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import co.kr.webheler.service.impl.WebHelperService;

@Service
public class WebhelperServiceimpl implements WebHelperService {

	@Override
	public List<String> Help(String bbttnn) {
		List<String> help = new ArrayList<String>();
		switch (bbttnn) {
		case "btn0": 
				help.clear();
				help.add(0, "로그인");
				help.add(1, "로그인은 소셜 로그인(카카오, 네이버, 구글)으로 가능합니다.");
				help.add(2, "자세한 사항은 홈페이지에 있는 FAQ 카테고리 혹은 문의를 이용해주세요.");
			break;
			
		case "btn1": 
				help.clear();
				help.add(0, "버그 및 오류");
				help.add(1, "아래의 내용을 먼저 확인 후에 버그 및 에러를 리포팅 해주세요.");
				help.add(2, "로코드 웹사이트는 브라우저(크롬)에 최적화 되어 있습니다.\n"
									+"현재 사용하시는 브라우저를 크롬으로 변경 후에 재시도 해주세요.");
				help.add(3, "로그아웃 하신 후에 다시 재로그인을 해주세요.");
				help.add(4, "새로고침을 해주세요");
				help.add(5, "VPN, 애드블록 등 기타 플러그인을	꺼주세요.");
				help.add(6, "자세한 사항은 홈페이지에 있는 FAQ 카테고리 혹은 문의를 이용해주세요.");
			break;
			
		case "btn2":
				help.clear();
				help.add(0, "계정");
				help.add(1, "관련 문의사항 버튼을 선택해주세요.");
			break;
		case "btn21":
				help.clear();
				help.add(0, "정보 변경");
				help.add(1, "현재는 닉네임과 비밀번호 정보 변경이 가능합니다.");
				help.add(2, "'내 정보'에서 닉네임과 비밀번호 변경이 가능합니다.");
				help.add(3, "자세한 사항은 홈페이지에 있는 FAQ 카테고리 혹은 문의를 이용해주세요.");
			break;
		case "btn22":
				help.clear();
				help.add(0, "비밀번호");
				help.add(1, "현재까지는 비밀번호 찾기 기능을 지원하지않고 있습니다.");
				help.add(2, "로코드 계정으로 문의주시면 실명확인을 거쳐 이전 계정 삭제를 도와드립니다.");
				help.add(3, "자세한 사항은 홈페이지에 있는 FAQ 카테고리 혹은 문의를 이용해주세요.");
			break;
		case "btn23":
				help.clear();
				help.add(0, "계정 탈퇴");
				help.add(1, "탈퇴는 '내 정보'란에서 가능합니다.");
				help.add(2, "탈퇴시 해당 계정의 모든 데이터가 삭제되며 복구가 불가능하니 신중히 결정해주세요.");
				help.add(3, "자세한 사항은 홈페이지에 있는 FAQ 카테고리 혹은 문의를 이용해주세요.");
			break;
			
		case "btn3":
				help.clear();
				help.add(0, "강의");
				help.add(1, "관련 문의사항 버튼을 선택해주세요.");
			break;
		case "btn31":
				help.clear();
				help.add(0, "동시 접속");
				help.add(1, "동시 접속 가능합니다.");
				help.add(2, "저희 로코드에서 시청하는 강의들은 Youtube와 연동되어 사이트를 이동하여 직접 학습할 수 있습니다.");
				help.add(3, "자세한 사항은 홈페이지에 있는 FAQ 카테고리를 이용해주세요.");
			break;
		case "btn32":
				help.clear();
				help.add(0, "최대 기기");
				help.add(1, "현재는 기기 등록을 지원하지 않습니다.");
				help.add(2, "Youtube를 이용한 수강이기 때문에 별도로 기기등록을 하지 않아도 수강이 가능합니다.");
				help.add(3, "자세한 사항은 홈페이지에 있는 FAQ 카테고리 혹은 문의를 이용해주세요.");
			break;
		case "btn33":
				help.clear();
				help.add(0, "수강평");
				help.add(1, "Youtube 내에서 가능합니다.");
				help.add(2, "로코드 자체 강의는 제작 계획이 없습니다.");
				help.add(3, "해당 Youtube에 댓글을 달아주세요.");
				help.add(4, "자세한 사항은 홈페이지에 있는 FAQ 카테고리 혹은 문의를 이용해주세요.");
			break;
		}
		
		return help;
	}
}
