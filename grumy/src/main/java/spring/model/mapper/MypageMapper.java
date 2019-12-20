package spring.model.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import spring.model.board.BoardDTO;
import spring.model.member.MemberDTO;
import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;
import spring.model.review.reviewDTO;

public interface MypageMapper {

	MemberDTO read(String id);
	ArrayList<OrderItemDTO> orderCount(String id);
	List<OrderDTO> orderlist(Map map);
	List<OrderDTO> allorderlist(Map map);
	int ordertotal(Map map);
	int mytotal(Map map);
	int cstotal(Map map);
	List<BoardDTO> mylist(Map map);
	List<OrderDTO> cslist(Map map);
	ArrayList<reviewDTO> rlist(Map map);
}
