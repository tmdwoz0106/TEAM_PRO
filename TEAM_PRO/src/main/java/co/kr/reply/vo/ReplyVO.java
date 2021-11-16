package co.kr.reply.vo;

public class ReplyVO {

	private int reply_no;
	private int board_no;
	private int user_no;
	private String reply_content;
	private String reply_day;
	private int reply_group;
	private int reply_depth;
	private String user_nick;

	public int getReply_no() {
		return reply_no;
	}

	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public String getReply_day() {
		return reply_day;
	}

	public void setReply_day(String reply_day) {
		this.reply_day = reply_day;
	}

	public int getReply_group() {
		return reply_group;
	}

	public void setReply_group(int reply_group) {
		this.reply_group = reply_group;
	}

	public int getReply_depth() {
		return reply_depth;
	}

	public void setReply_depth(int reply_depth) {
		this.reply_depth = reply_depth;
	}

	public String getUser_nick() {
		return user_nick;
	}

	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}

	public ReplyVO(int reply_no, int board_no, int user_no, String reply_content, String reply_day, int reply_group,
			int reply_depth, String user_nick) {
		super();
		this.reply_no = reply_no;
		this.board_no = board_no;
		this.user_no = user_no;
		this.reply_content = reply_content;
		this.reply_day = reply_day;
		this.reply_group = reply_group;
		this.reply_depth = reply_depth;
		this.user_nick = user_nick;
	}

	public ReplyVO() {
		super();
	}

}
