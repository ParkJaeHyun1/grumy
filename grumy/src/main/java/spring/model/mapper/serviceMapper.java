package spring.model.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import spring.model.board.BoardDTO;
import spring.model.order.OrderDTO;

public interface serviceMapper {
	List<BoardDTO> list(Map map);
	int total(Map map);
	int create(BoardDTO dto);
	BoardDTO read(int board_no);
	Map noread(int board_no);
	int delete(int ref);
	int update(BoardDTO dto);
	int create_reply(BoardDTO dto);
	String getname(String id);
	List<BoardDTO> list_();
	int indelete(int board_no);
	int refcount(int ref);


}
