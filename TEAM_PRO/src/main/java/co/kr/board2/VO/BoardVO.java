package co.kr.board2.VO;

public class BoardVO {

	private int board_no;
	private String board_title;
	private String board_content;
	private String board_type;
	private String board_day;
	private int board_view;
	private int user_no;

	public BoardVO(int board_no, String board_title, String board_content, String board_type, String board_day,
			int board_view, int user_no) {
		super();
		this.board_no = board_no;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_type = board_type;
		this.board_day = board_day;
		this.board_view = board_view;
		this.user_no = user_no;
	}

	public BoardVO() {
		super();
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_type() {
		return board_type;
	}

	public void setBoard_type(String board_type) {
		this.board_type = board_type;
	}

	public String getBoard_day() {
		return board_day;
	}

	public void setBoard_day(String board_day) {
		this.board_day = board_day;
	}

	public int getBoard_view() {
		return board_view;
	}

	public void setBoard_view(int board_view) {
		this.board_view = board_view;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

}
