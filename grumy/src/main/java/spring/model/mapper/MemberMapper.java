package spring.model.mapper;

import java.util.List;
import java.util.Map;

import spring.model.member.MemberDTO;

public interface MemberMapper {
	int create(MemberDTO dto);
	int delete(String id);
	int duplicateEmail(String email);
	int duplicateId(String id);
	String findid(Map map);
	String findpw(Map map);
	String getGrade(String id);
	List<MemberDTO> list(Map map);
	int loginCheck(Map<String,String> map);
	MemberDTO read(String id);
	int total(Map map);
	int update(MemberDTO dto);
	int updateFile(Map map);
	int updatePasswd(Map map);
	
}
