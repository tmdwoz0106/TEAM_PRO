package co.kr.webhelper.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import co.kr.webheler.service.impl.WebHelperService;

@Service
public class WebhelperServiceimpl implements WebHelperService {

	@Override
	public HashMap<String, String> Help() {
		HashMap<String, String> help = new HashMap<String, String>();
		
		return help;
	}
}
