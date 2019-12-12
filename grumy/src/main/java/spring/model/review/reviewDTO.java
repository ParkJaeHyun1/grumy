package spring.model.review;

import org.springframework.web.multipart.MultipartFile;

public class reviewDTO {
	private int reviewNo;
	private String id;
	private String content;
	private String picture;
	private MultipartFile filenameMF ;
	private String itemPicture;
	private String itemTitle;
	private int height;
	private String weight;
	private String mySize;
	private String star;
	private String itemColor;
	private String itemSize;
	private String itemOptionNo;
	private int itemNo;
	private String replyContent;
	

	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public MultipartFile getFilenameMF() {
		return filenameMF;
	}
	public void setFilenameMF(MultipartFile filenameMF) {
		this.filenameMF = filenameMF;
	}
	public String getItemPicture() {
		return itemPicture;
	}
	public void setItemPicture(String itemPicture) {
		this.itemPicture = itemPicture;
	}

	public String getItemTitle() {
		return itemTitle;
	}
	public void setItemTitle(String itemTitle) {
		this.itemTitle = itemTitle;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}




	public void setWeight(String weight) {
		this.weight = weight;
	}




	public String getMySize() {
		return mySize;
	}




	public void setMySize(String mySize) {
		this.mySize = mySize;
	}




	public String getStar() {
		return star;
	}




	public void setStar(String star) {
		this.star = star;
	}




	public String getItemColor() {
		return itemColor;
	}




	public void setItemColor(String itemColor) {
		this.itemColor = itemColor;
	}




	public String getItemSize() {
		return itemSize;
	}




	public void setItemSize(String itemSize) {
		this.itemSize = itemSize;
	}




	public String getItemOptionNo() {
		return itemOptionNo;
	}




	public void setItemOptionNo(String itemOptionNo) {
		this.itemOptionNo = itemOptionNo;
	}




	public int getItemNo() {
		return itemNo;
	}




	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}





	public reviewDTO(int reviewNo, String id, String content, String picture, MultipartFile filenameMF,
			String itemPicture, String itemTitle, int height, String weight, String mySize, String star,
			String itemColor, String itemSize, String itemOptionNo, int itemNo) {
		super();
		this.reviewNo = reviewNo;
		this.id = id;
		this.content = content;
		this.picture = picture;
		this.filenameMF = filenameMF;
		this.itemPicture = itemPicture;
		this.itemTitle = itemTitle;
		this.height = height;
		this.weight = weight;
		this.mySize = mySize;
		this.star = star;
		this.itemColor = itemColor;
		this.itemSize = itemSize;
		this.itemOptionNo = itemOptionNo;
		this.itemNo = itemNo;

	}




	public reviewDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
}