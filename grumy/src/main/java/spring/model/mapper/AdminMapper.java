package spring.model.mapper;

import java.util.ArrayList;
import java.util.Map;

import spring.model.board.BoardDTO;
import spring.model.member.MemberDTO;
import spring.model.notice.NoticeDTO;
import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;

public interface AdminMapper {
	int total(String state);
	int totalP(Map map);
	ArrayList<OrderDTO> list(Map map);
	ArrayList<NoticeDTO> noticel(int rownum);
	ArrayList<BoardDTO> deliveryl(int rownum);
	ArrayList<BoardDTO> communityl(int rownum);
	int updateState(Map map);
	MemberDTO read(String id);
	ArrayList<OrderItemDTO> orderCount(String id);
}
