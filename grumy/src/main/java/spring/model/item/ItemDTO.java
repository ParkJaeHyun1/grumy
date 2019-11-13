package spring.model.item;

import java.util.ArrayList;

public class ItemDTO {
	private int no; 
	private String name; 
	private String image ;
	private String title ; 
	private String description ; // 리스트 content
	private String content ; //상세페이지
	private int price ; 
	private int salePrice ;
	private String color ;  
	private String sizes ; 
	private int count ; //상품 수량
	private String type; //카테고리
	private String[] colorList;
	public ItemDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ItemDTO(int no, String name, String image, String title, String description, String content, int price,
			int salePrice, String color, String sizes, int count, String type, String[] colorList) {
		super();
		this.no = no;
		this.name = name;
		this.image = image;
		this.title = title;
		this.description = description;
		this.content = content;
		this.price = price;
		this.salePrice = salePrice;
		this.color = color;
		this.sizes = sizes;
		this.count = count;
		this.type = type;
		this.colorList = colorList;
	}
	@Override
	public String toString() {
		return "ItemDTO [no=" + no + ", name=" + name + ", image=" + image + ", title=" + title + ", description="
				+ description + ", content=" + content + ", price=" + price + ", salePrice=" + salePrice + ", color="
				+ color + ", sizes=" + sizes + ", count=" + count + "]";
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getSizes() {
		return sizes;
	}
	public void setSizes(String sizes) {
		this.sizes = sizes;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String[] getColorList() {
		return colorList;
	}
	public void setColorList(String[] colorList) {
		this.colorList = colorList;
	}
	
}
