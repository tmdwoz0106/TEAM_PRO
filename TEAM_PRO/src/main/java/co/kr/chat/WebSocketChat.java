package co.kr.chat;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.RemoteEndpoint.Basic;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.socket.WebSocketSession;

import co.kr.user.VO.UserVO;

@Controller
@ServerEndpoint(value = "/echo.do")
public class WebSocketChat {
	
	private static final List<Session> sessionList= new ArrayList<Session>();
	
	private static final Logger logger=LoggerFactory.getLogger(WebSocketChat.class);
	
	public WebSocketChat() {
		System.out.println("웹소켓 서버 객체 생성");
	}
	
	@OnOpen
	public void open (Session session,
			@PathParam("user_nick") String user_nick) {
		logger.info("Open session id"+session.getId());
		
		//WebSocketSession webSession= null;
		
		// 현재 로그인된 멤버 
		//String chatMember = (String) webSession.getAttributes().get("user_nick");

		
		try {
			final Basic basic= session.getBasicRemote();
			basic.sendText("대화방에 연결되었습니다");
			//basic.sendText(""+session.getUserPrincipal()+"님이입장");
			//basic.sendText(chatMember+"");
			
			
			//basic.sendText(userVO.getUser_id()+"님이 입장하셨습니다");
			System.out.println(user_nick+"세션 유저닉");
			
			//숫자로 나옴...
			System.out.println("현재접속자수 "+session.getId());
			//basic.sendText(session2.getAttribute("user_no")+"님이 입장하셨습니다");
		}catch (Exception e) {
		       System.out.println(e.getMessage());
		}
		sessionList.add(session);
	}
	
	//모든사용자에게 메세지 전달
	private void sendAllSesiionToMessage(Session self, String sender,String messge) {
		//String chatMember = (String) session.getAttributes().get("user");

		try {
			for(Session session:WebSocketChat.sessionList) {
				if(!self.getId().equals(session.getId())){
					session.getBasicRemote().sendText(sender+":"+messge);
				}
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	//내가 입력하는 메세지
	@OnMessage
	public void onMessage(String message, Session session) {
		
		String sender= message.split(",")[1];
		message=message.split(",")[0];
		
		logger.info("Message From"+sender+":"+message);
		
		try {
			final Basic basic= session.getBasicRemote();
			basic.sendText("[나]"+ message);
		}catch (Exception e) {
		       System.out.println(e.getMessage());
		}
		sendAllSesiionToMessage(session, sender, message);
		
	}
	
	@OnError
	public void onError(Throwable e, Session session) {
		
	}
	
	@OnClose
	public void onClose(Session session) {
		logger.info("Session"+session.getId()+"has ended");
		sessionList.remove(session);
	}

}
