package spring.model.mapper;

import java.util.ArrayList;
import java.util.Map;

import spring.model.community.communityDTO;

public interface communityMapper {
	ArrayList<communityDTO> list(Map map);
}
