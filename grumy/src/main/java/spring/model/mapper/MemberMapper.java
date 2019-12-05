package spring.model.mapper;

import java.util.Map;

import spring.model.member.MemberDTO;

public interface MemberMapper {
	int create(MemberDTO dto);
	int delete(Map map);
	int duplicateId(String id);
	String findid(Map map);
	String findpw(Map map);
	String getGrade(String id);
	int loginCheck(Map<String,String> map);
	MemberDTO read(String id);
	int update(MemberDTO dto);

}
