package spring.model.mapper;

import java.util.ArrayList;
import java.util.List;

import spring.model.community.communityDTO;
import spring.model.delivery.DeliveryDTO;
import spring.model.notice.NoticeDTO;
import spring.model.order.OrderItemDTO;

public interface AdminMapper {
	int total(int state);
	List<OrderItemDTO> list(int state);
	ArrayList<NoticeDTO> noticel(int rownum);
	ArrayList<DeliveryDTO> deliveryl(int rownum);
	ArrayList<communityDTO> communityl(int rownum);
	
}
