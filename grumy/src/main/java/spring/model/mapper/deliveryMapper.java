package spring.model.mapper;

import java.util.List;
import java.util.Map;

import spring.model.delivery.DeliveryDTO;

public interface deliveryMapper {
	List<DeliveryDTO> list(Map map);
	int total(Map map);
	int create(DeliveryDTO dto);
	DeliveryDTO read(int no);
	Map noread(int no);
	int delete(int no);

}