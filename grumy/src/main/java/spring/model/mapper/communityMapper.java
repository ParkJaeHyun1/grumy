package spring.model.mapper;

import java.util.ArrayList;
import java.util.Map;

import spring.model.community.communityDTO;

public interface communityMapper {
	int update(communityDTO dto);
	ArrayList<communityDTO> list(Map map);
	int create(communityDTO dto);
	communityDTO read(int communityNo);
	int delete(int communityNo);
	int create_reply(communityDTO dto);
	String getname(String id);
}
