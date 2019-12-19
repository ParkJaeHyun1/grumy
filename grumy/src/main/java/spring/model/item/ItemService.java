package spring.model.item;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.model.mapper.itemMapper;

@Service
public class ItemService {
	@Autowired
	itemMapper itemMapper;
	
	public boolean delete(int itemNo) {
		int pflag = itemMapper.delete(itemNo);
		
		if (pflag == 1 ) {
			int	flag = itemMapper.deleteOption(itemNo);
			if(flag>0)
				return true;
		}
		return false;
	}
	
	public boolean create(ItemDTO dto) {
		int cnt = itemMapper.insertItem(dto);
		
		if(cnt<1)
			return false;
		
		for(ItemOptionDTO itemOption : dto.getItemOptionList()) {
			itemOption.setItemNo(dto.getItemNo());
			cnt +=itemMapper.insertItemOption(itemOption);
		}

		return cnt==1+dto.getItemOptionList().size() ? true:false ;
	}

	public boolean update(ItemDTO dto) {
		int cnt = itemMapper.updateItem(dto);
		
		if(cnt<1)
			return false;
		
		for(ItemOptionDTO itemOption : dto.getItemOptionList())
			cnt +=itemMapper.insertItemOption(itemOption);

		return cnt==1+dto.getItemOptionList().size() ? true:false ;
	}
}
