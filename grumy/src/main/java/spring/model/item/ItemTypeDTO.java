package spring.model.item;

public class ItemTypeDTO {
	private String type;
	private String parentType;
	
	
	public ItemTypeDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ItemTypeDTO(String type, String parentType) {
		super();
		this.type = type;
		this.parentType = parentType;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getParentType() {
		return parentType;
	}
	public void setParentType(String parentType) {
		this.parentType = parentType;
	}
	
	
}
