package spring.model.mapper;

import java.util.List; 
import java.util.Map;

import spring.model.notice.NoticeDTO;

public interface noticeMapper {
	
	List<NoticeDTO> list(Map map);	
	int total(Map map);
	NoticeDTO read(int no);
	Map noread(int no);
	int create(NoticeDTO dto);
	int update(NoticeDTO dto);
	int passcheck(Map map);
	int delete(int no);
	List<NoticeDTO> list_();

}
