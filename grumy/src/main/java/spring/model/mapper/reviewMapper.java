package spring.model.mapper;

import java.util.ArrayList;
import java.util.Map;

import spring.model.review.reviewDTO;

public interface reviewMapper {
	int delete(int reviewNo);
	ArrayList<reviewDTO> list(Map map);
	int update(reviewDTO dto);
	int pcount();
	int total(Map map);
	int create(reviewDTO dto);
	ArrayList<reviewDTO> itemReviewlist(Map map);
	reviewDTO read(int reviewNo);
	int create_reply(reviewDTO dto);
}
