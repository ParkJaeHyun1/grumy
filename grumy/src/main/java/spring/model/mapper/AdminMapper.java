package spring.model.mapper;

import java.util.ArrayList;
import java.util.List;

import spring.model.admin.AdminDTO;
import spring.model.delivery.DeliveryDTO;
import spring.model.notice.NoticeDTO;

public interface AdminMapper {
	int count(int stat);
	List<AdminDTO> list(int stat);
	ArrayList<NoticeDTO> noticel(int rownum);
	ArrayList<DeliveryDTO> deliveryl(int rownum);
	
}
