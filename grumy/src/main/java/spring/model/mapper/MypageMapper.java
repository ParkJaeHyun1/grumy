package spring.model.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import spring.model.board.BoardDTO;
import spring.model.member.MemberDTO;
import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;

public interface MypageMapper {

	MemberDTO read(String id);
	ArrayList<OrderItemDTO> orderCount(String id);
	List<OrderDTO> orderlist(Map map);
	int ordertotal(Map map);
	int mytotal(Map map);
	List<BoardDTO> mylist(Map map);
}
