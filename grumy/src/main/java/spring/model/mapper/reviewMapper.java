package spring.model.mapper;

import java.util.ArrayList;


import spring.model.review.reviewDTO;

public interface reviewMapper {
	ArrayList<reviewDTO> list();
	reviewDTO read(int no);
}
