package co.kr.user.VO;

public class UserVO {

	private int user_no;
	private String user_id;
	private String user_pw;
	private String user_name;
	private int user_birth;
	private int user_phone;
	private String user_nick;
	private String msg;
	public UserVO(int user_no, String user_id, String user_pw, String user_name, int user_birth, int user_phone,
			String user_nick, String msg) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_phone = user_phone;
		this.user_nick = user_nick;
		this.msg = msg;
	}
	public UserVO() {
		super();
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(int user_birth) {
		this.user_birth = user_birth;
	}
	public int getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(int user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_nick() {
		return user_nick;
	}
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}


}
