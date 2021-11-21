package co.kr.socket;

public class ChatLogVO {
	String user_nick;
	String time;
	String text;
	public String getUser_nick() {
		return user_nick;
	}
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public ChatLogVO(String user_nick, String time, String text) {
		this.user_nick = user_nick;
		this.time = time;
		this.text = text;
	}
	@Override
	public String toString() {
		return "ChatLogVO [id=" + user_nick + ", time=" + time + ", text=" + text + "]";
	}
	
	
}
