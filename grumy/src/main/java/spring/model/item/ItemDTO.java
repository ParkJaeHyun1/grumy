package spring.model.item;

import java.util.Arrays;

public class ItemDTO {
	private int no; 
	private String image ;
	private String title ; 
	private String description ; // 리스트 content
	private String content ; //상세페이지
	private int price ; 
	private int salePrice ;
	private String[] itemColor ;  
	private String[] itemSize ; 
	private int[] count ; //상품 수량
	private String type; //카테고리
	public ItemDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ItemDTO(int no, String image, String title, String description, String content, int price, int salePrice,
			String[] itemColor, String[] itemSize, int[] count, String type) {
		super();
		this.no = no;
		this.image = image;
		this.title = title;
		this.description = description;
		this.content = content;
		this.price = price;
		this.salePrice = salePrice;
		this.itemColor = itemColor;
		this.itemSize = itemSize;
		this.count = count;
		this.type = type;
	}
	@Override
	public String toString() {
		return "ItemDTO [no=" + no + ", image=" + image + ", title=" + title + ", description=" + description
				+ ", content=" + content + ", price=" + price + ", salePrice=" + salePrice + ", itemColor="
				+ Arrays.toString(itemColor) + ", itemSize=" + Arrays.toString(itemSize) + ", count="
				+ Arrays.toString(count) + ", type=" + type + "]";
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public String[] getItemColor() {
		return itemColor;
	}
	public void setItemColor(String[] itemColor) {
		this.itemColor = itemColor;
	}
	public String[] getItemSize() {
		return itemSize;
	}
	public void setItemSize(String[] itemSize) {
		this.itemSize = itemSize;
	}
	public int[] getCount() {
		return count;
	}
	public void setCount(int[] count) {
		this.count = count;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
	
}
