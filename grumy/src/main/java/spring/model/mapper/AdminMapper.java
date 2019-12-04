package spring.model.mapper;

import java.util.ArrayList;
import java.util.List;

import spring.model.admin.AdminDTO;
import spring.model.community.communityDTO;
import spring.model.delivery.DeliveryDTO;
import spring.model.notice.NoticeDTO;

public interface AdminMapper {
	int total(int stat);
	List<AdminDTO> list(int stat);
	ArrayList<NoticeDTO> noticel(int rownum);
	ArrayList<DeliveryDTO> deliveryl(int rownum);
	ArrayList<communityDTO> communityl(int rownum);
	
}
