package spring.model.mapper;

import java.util.ArrayList;

import spring.model.member.MemberDTO;
import spring.model.order.OrderItemDTO;

public interface MypageMapper {

	MemberDTO read(String id);
	ArrayList<OrderItemDTO> orderCount(String id);
}
