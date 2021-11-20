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
			break;
		}
		
		return help;
	}
}
