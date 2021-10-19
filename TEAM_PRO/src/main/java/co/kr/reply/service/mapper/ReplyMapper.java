package co.kr.reply.service.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import co.kr.reply.vo.ReplyVO;

@Mapper
public interface ReplyMapper {

	public List<ReplyVO> list(int board_no);

}
