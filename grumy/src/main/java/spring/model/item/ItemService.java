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
}