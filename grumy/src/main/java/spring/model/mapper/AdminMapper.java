package spring.model.mapper;

import java.util.ArrayList;
import java.util.Map;

import spring.model.community.communityDTO;
import spring.model.delivery.DeliveryDTO;
import spring.model.notice.NoticeDTO;
import spring.model.order.OrderDTO;

public interface AdminMapper {
	int total(int state);
	ArrayList<OrderDTO> list(int state);
	ArrayList<NoticeDTO> noticel(int rownum);
	ArrayList<DeliveryDTO> deliveryl(int rownum);
	ArrayList<communityDTO> communityl(int rownum);
	
}
