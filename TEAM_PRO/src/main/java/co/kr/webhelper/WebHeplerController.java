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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.kr.webhelper.service.WebhelperServiceimpl;

@Controller
public class WebHeplerController {
	
	@Autowired
	WebhelperServiceimpl webservice;
	
	@RequestMapping(value = "/iframehome.do", method = RequestMethod.GET)
	public String iframehome() {
		return "webhelper/webhelper";
	}
	
	@RequestMapping(value = "/booksearch.do", method = RequestMethod.GET)
	public String booksearch() {
		return "webhelper/bookSearch";
	}
	
	@RequestMapping(value = "/faqtest.do", method = RequestMethod.GET)
	public ModelAndView faqajax(@RequestParam Map<String, Object> btn) {
		ModelAndView json = new ModelAndView("jsonView");
		String bbttnn = (String) btn.get("id");
		List<String> message = new ArrayList<String>();
		message = webservice.Help(bbttnn);
		json.addObject("result", message);
		return json;
	}
	
	@RequestMapping(value = "/faq.do", method = RequestMethod.GET)
	public String faqajax() {
		return "webhelper/faq";
	}
	
}