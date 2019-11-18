package spring.model.mapper;

import java.util.ArrayList;
import java.util.Map;

import spring.model.review.reviewDTO;

public interface reviewMapper {
	ArrayList<reviewDTO> list();
	reviewDTO read(int no);
	int pcount();
	int total(Map map);

}
