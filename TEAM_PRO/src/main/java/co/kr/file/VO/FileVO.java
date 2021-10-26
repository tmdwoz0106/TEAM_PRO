package co.kr.file.VO;

public class FileVO {

	private int file_no;
	private int board_no;
	private String file_name;
	private String file_path;

	public int getFile_no() {
		return file_no;
	}

	public void setFile_no(int file_no) {
		this.file_no = file_no;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getFile_path() {
		return file_path;
	}

	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}

	public FileVO(int file_no, int board_no, String file_name, String file_path) {
		super();
		this.file_no = file_no;
		this.board_no = board_no;
		this.file_name = file_name;
		this.file_path = file_path;
	}

	public FileVO() {
		super();
	}

}
