package co.kr.file.service.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import co.kr.file.VO.FileVO;

@Mapper
public interface FileMapper {

	public int fileMax();

	public int insert(FileVO fvo);

	public List<FileVO> fileList(int board_no);

	public int delete(int board_no);

}
