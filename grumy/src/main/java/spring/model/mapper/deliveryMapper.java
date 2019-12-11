package spring.model.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import spring.model.delivery.DeliveryDTO;
import spring.model.order.OrderDTO;

public interface deliveryMapper {
	List<DeliveryDTO> list(Map map);
	int total(Map map);
	int create(DeliveryDTO dto);
	DeliveryDTO read(int no);
	Map noread(int no);
	int delete(int ref);
	int update(DeliveryDTO dto);
	int create_reply(DeliveryDTO dto);
	String getname(String id);
	List<DeliveryDTO> list_();


}
