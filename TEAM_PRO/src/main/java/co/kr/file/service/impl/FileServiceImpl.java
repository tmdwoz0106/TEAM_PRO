package co.kr.file.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.file.VO.FileVO;
import co.kr.file.service.FileService;
import co.kr.file.service.mapper.FileMapper;

@Service
public class FileServiceImpl implements FileService{

	@Autowired
	public FileMapper fileMapper;

	@Override
	public int fileMax() {
		return fileMapper.fileMax();
	}

	@Override
	public int insert(FileVO fvo) {
		return fileMapper.insert(fvo);
	}

	@Override
	public List<FileVO> fileList(int board_no) {
		return fileMapper.fileList(board_no);
	}

	@Override
	public int delete(int board_no) {
		return fileMapper.delete(board_no);
	}

}
