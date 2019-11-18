package spring.model.community;

public class communityDTO {
	private int no            ;
	private String id         ;
	private String itemno     ;
	private String content    ;
	private String passwd     ;
	private String image      ;
	public communityDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "communityDTO [no=" + no + ", id=" + id + ", itemno=" + itemno + ", content=" + content + ", passwd="
				+ passwd + ", image=" + image + "]";
	}
	public communityDTO(int no, String id, String itemno, String content, String passwd, String image) {
		super();
		this.no = no;
		this.id = id;
		this.itemno = itemno;
		this.content = content;
		this.passwd = passwd;
		this.image = image;
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
	public String getItemno() {
		return itemno;
	}
	public void setItemno(String itemno) {
		this.itemno = itemno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
}
