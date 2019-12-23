package spring.model.mapper;

import java.util.ArrayList;
import java.util.Map;

import spring.model.board.BoardDTO;
import spring.model.item.ItemDTO;
import spring.model.member.MemberDTO;
import spring.model.notice.NoticeDTO;
import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;

public interface AdminMapper {
	int total(String state);							//리스트 합계
	int totalP(Map map);								//페이징처리를 위한 리스트 합계
	ArrayList<OrderDTO> list(Map map);					//리스트
	ArrayList<NoticeDTO> noticel(int rownum);			//공지목록띄우기
	ArrayList<BoardDTO> deliveryl(int rownum);			//배송문의
	ArrayList<BoardDTO> communityl(int rownum);			//상품문의
	int updateState(Map<String,String> map);							//주문상태변경	norder테이블
	int updateStateP(Map<String,String> map);							//주문상태변경	orderitem테이블
	int cstotal(String category);
	
	ArrayList<ItemDTO> iteml();
	ArrayList<OrderDTO> chartl();
	ArrayList<OrderItemDTO> readPList(String orderno);	//read페이지 목록에서의 리스트
	MemberDTO read(String id);							//read페이지
	OrderDTO readP(Map map);							//로그인 아이디 가져오기
	ArrayList<OrderItemDTO> orderCount(String id);		//read페이지 상단바에서의 합계
}
