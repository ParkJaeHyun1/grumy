package spring.model.review;

import org.springframework.web.multipart.MultipartFile;

public class reviewDTO {
	private int no;
	private String id;
	private int itemNo;
	private String itemOption;
	private String content;
	private String picture;
	private MultipartFile filenameMF ;
	private String filesize;
	private String itemPicture;
	private String itemTitle;
	private String height;
	private String weight;
	private String mysize;
	private String star;
	
	public reviewDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getItemNo() {
		return itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	public String getItemOption() {
		return itemOption;
	}

	public void setItemOption(String itemOption) {
		this.itemOption = itemOption;
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

	public String getFilesize() {
		return filesize;
	}

	public void setFilesize(String filesize) {
		this.filesize = filesize;
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

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getMysize() {
		return mysize;
	}

	public void setMysize(String mysize) {
		this.mysize = mysize;
	}

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	@Override
	public String toString() {
		return "reviewDTO [no=" + no + ", id=" + id + ", itemNo=" + itemNo + ", itemOption=" + itemOption + ", content="
				+ content + ", picture=" + picture + ", filenameMF=" + filenameMF + ", filesize=" + filesize
				+ ", itemPicture=" + itemPicture + ", itemTitle=" + itemTitle + ", height=" + height + ", weight="
				+ weight + ", mysize=" + mysize + ", star=" + star + "]";
	}

}