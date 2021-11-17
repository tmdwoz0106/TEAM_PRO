package co.kr.webhelper;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebHeplerController {

	@RequestMapping(value = "/iframehome.do", method = RequestMethod.GET)
	public String iframehome() {
		System.out.println("::: iframehome :::");
		return "webhelper/webhelper";
	}
	
	@RequestMapping(value = "/booksearch.do", method = RequestMethod.GET)
	public String booksearch() {
		System.out.println("::: booksearch :::");
		return "webhelper/bookSearch";
	}
	
	@RequestMapping(value = "/faqtest.do", method = RequestMethod.GET)
	public ModelAndView faqajax(@RequestParam Map<String, Object> btn) {
		System.out.println("::: faqajax :::");
		
		ModelAndView json = new ModelAndView("jsonView");
		String bbttnn = (String) btn.get("id");
		List<String> message = new ArrayList<String>();
		switch (bbttnn) {
		case "btn0": 
				message.clear();
				message.add(0, "0.로그인");
				message.add(1, "로그인은 소셜 로그인(카카오, 네이버, 구글)으로 가능합니다.");
				json.addObject("result", message);
			break;
		case "btn1": 
				message.clear();
				message.add(0, "1.버그 및 오류");
				message.add(1, "아래의 내용을 먼저 확인 후에 버그 및 에러를 리포팅 해주세요.");
				message.add(2, "로코드 웹사이트는 브라우저(크롬)에 최적화 되어 있습니다.\n"
								+"현재 사용하시는 브라우저를 크롬으로 변경 후에 재시도 해주세요.");
				message.add(3, "로그아웃 하신 후에 다시 재로그인을 해주세요.");
				message.add(4, "새로고침을 해주세요");
				message.add(5, "VPN, 애드블록 등 기타 플러그인을	꺼주세요.");
				json.addObject("result", message);
			break;
		}
		return json;
	}
	
	@RequestMapping(value = "/faq.do", method = RequestMethod.GET)
	public String faqajax() {
		System.out.println("::: faqajax :::");
		return "webhelper/faq";
	}
	
}