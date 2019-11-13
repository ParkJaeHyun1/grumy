package spring.model.mapper;

import java.util.List;
import java.util.Map;

import spring.model.notice.NoticeDTO;

public interface noticeMapper {
	
	List<NoticeDTO> list(Map map);	
	int total(Map map);

}
