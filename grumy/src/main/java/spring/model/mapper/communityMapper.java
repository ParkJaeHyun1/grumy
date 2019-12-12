package spring.model.mapper;

import java.util.List;
import java.util.Map;

import spring.model.board.BoardDTO;

public interface communityMapper {
	int update(BoardDTO dto);
	List list(Map map);
	int create(BoardDTO dto);
	BoardDTO read(int board_no);
	int delete(int board_no);
	int create_reply(BoardDTO dto);
	String getname(String id);
	int total(Map map);
	List list_();
}
