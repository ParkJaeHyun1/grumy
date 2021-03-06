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
	int updateState(Map map);							//주문상태변경	norder테이블
	int updateStateP(Map map);							//주문상태변경	orderitem테이블
	int cstotal(String category);						//고객요청 건 갯수
	int priceTotal(String state);						//정산예정, 정산예정금
	int moneyP(Map map);								//오늘, 예정 정산리스트를 위한 페이징처리
	
	ArrayList<ItemDTO> iteml(Map map);					//재고관리리스트
	int itemC(Map map);									//재고관리 페이징처리

	ArrayList<OrderDTO> moneyl(Map map);				//오늘, 예정 정산리스트
	ArrayList<OrderDTO> chartl();						//차트리스트
	ArrayList<OrderDTO> chartlp();						//차트리스트 결제금액별도
	ArrayList<OrderItemDTO> readPList(String orderno);	//read페이지 목록에서의 리스트
	MemberDTO read(String id);							//로그인 아이디 가져오기
	OrderDTO readP(Map map);							//read페이지
	ArrayList<OrderItemDTO> orderCount(String id);		//read페이지 상단바에서의 합계
	
	int pdateCheck(String orderno);						//결제일 체크
	int updatePdate(String orderno);					//결제일 생성
}
