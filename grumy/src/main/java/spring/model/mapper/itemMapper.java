package spring.model.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import spring.model.item.ItemDTO;


public interface itemMapper {
	ArrayList<ItemDTO> list(String type);
}
