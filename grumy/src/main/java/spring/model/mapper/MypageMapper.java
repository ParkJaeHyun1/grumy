package spring.model.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import spring.model.member.MemberDTO;
import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;

public interface MypageMapper {

	MemberDTO read(String id);
	ArrayList<OrderItemDTO> orderCount(String id);
	ArrayList<OrderItemDTO> orderCount2(String id);
	List<OrderDTO> list(Map map);
	int total(Map map);
}
