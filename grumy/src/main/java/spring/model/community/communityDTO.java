package spring.model.community;

import org.springframework.web.multipart.MultipartFile;

public class communityDTO {
	private int no               ;
	private String id            ;
	private String content       ;
	private String itemNo        ;
	private String itemPicture   ;
	private String itemTitle     ;
	private String picture       ;
	private String filesize      ;
	private String wdate;
	private MultipartFile filenameMF ;
	private String passwd        ;
	
	public communityDTO() {
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getItemNo() {
		return itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
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

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getFilesize() {
		return filesize;
	}

	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}

	public MultipartFile getFilenameMF() {
		return filenameMF;
	}

	public void setFilenameMF(MultipartFile filenameMF) {
		this.filenameMF = filenameMF;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	@Override
	public String toString() {
		return "communityDTO [no=" + no + ", id=" + id + ", content=" + content + ", itemNo=" + itemNo
				+ ", itemPicture=" + itemPicture + ", itemTitle=" + itemTitle + ", picture=" + picture + ", filesize="
				+ filesize + ", filenameMF=" + filenameMF + ", passwd=" + passwd+ ", wdate=" + wdate + "]";
	}

	public communityDTO(int no, String id, String content, String itemNo, String itemPicture, String itemTitle,
			String picture, String filesize, MultipartFile filenameMF, String passwd,String wdate) {
		super();
		this.no = no;
		this.id = id;
		this.content = content;
		this.itemNo = itemNo;
		this.itemPicture = itemPicture;
		this.itemTitle = itemTitle;
		this.picture = picture;
		this.filesize = filesize;
		this.filenameMF = filenameMF;
		this.passwd = passwd;
		this.wdate=wdate;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	
}
