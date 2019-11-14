package spring.model.mapper;

import java.util.List;

import spring.model.admin.AdminDTO;

public interface AdminMapper {
	int count(int stat);
	List<AdminDTO> list(int stat);
}
