package spring.model.mapper;

import java.util.List;
import java.util.Map;

import spring.model.member.MemberDTO;

public interface MemberMapper {
	int create(MemberDTO dto);
	int delete(Map map);
	int duplicateId(String id);
	int duplicateEmail(String email);
	String findid(Map map);
	String findpw(Map map); 
	String getGrade(String id);
	int loginCheck(Map<String,String> map);
	MemberDTO read(String id);
	int update(MemberDTO dto);
	List<MemberDTO> list(Map map);
	int total(Map map);
	String findemail(String id);
	String findphone(String id);
	int decreasePoint(Map map);
	int increasePoint(Map map);
	int adminupdate(MemberDTO dto);
	int admindelete(String id);
	
}
