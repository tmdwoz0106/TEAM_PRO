package co.kr.socket;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;



@RequestMapping("/echo")
public class EchoHandler extends TextWebSocketHandler {
	

	@Autowired
	ChattingLOG chatLog;
	

	//세션 리스트
    private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

    private static Logger logger = LoggerFactory.getLogger(EchoHandler.class);

    //클라이언트가 연결 되었을 때 실행
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        sessionList.add(session);
        logger.info("{} 연결됨", session.getId());
        System.out.println("{} 연결됨");
        Map<String, Object> map = session.getAttributes();
        TextMessage hello = new TextMessage((String)map.get("user_nick")+"님이 입장했습니다.");
        
        for(WebSocketSession sess : sessionList){
            sess.sendMessage(hello);
        }
    }

    //클라이언트가 웹소켓 서버로 메시지를 전송했을 때 실행
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        logger.info("{}로 부터 {} 받음", session.getId(), message.getPayload());
        //모든 유저에게 메세지 출력
        for(WebSocketSession sess : sessionList){
            sess.sendMessage(new TextMessage(message.getPayload()));
        }
        chatLog.inputChatLog(message.getPayload());
    }
    //클라이언트 연결을 끊었을 때 실행
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
    	
        logger.info("{} 연결 끊김.", session.getId());
        System.out.println("{} 연결 끊김");
        Map<String, Object> map = session.getAttributes();
        TextMessage bye = new TextMessage((String)map.get("chatID")+"님이 퇴장했습니다.");
        
        for(WebSocketSession sess : sessionList){
            if(sess.getId().equals(session.getId())) {
            	continue; 	
            }
            sess.sendMessage(bye);
        }

        sessionList.remove(session);
    }

}


