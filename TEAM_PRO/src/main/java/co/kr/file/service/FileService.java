package co.kr.file.service;

import java.util.List;

import co.kr.file.VO.FileVO;

public interface FileService {

	public int fileMax();

	public int insert(FileVO fvo);

	public List<FileVO> fileList(int board_no);

	public int delete(int board_no);

}
