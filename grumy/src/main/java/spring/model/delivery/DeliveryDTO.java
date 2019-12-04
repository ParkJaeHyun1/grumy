package spring.model.delivery;

import org.springframework.web.multipart.MultipartFile;

public class DeliveryDTO {
	private int no;
	private String subject;
	private String writer;
	private String content;
	private String wdate;
	private String passwd;
	private int ref;
	private int indent;
	private String id;
	private char lev;
	private String check_read;
	public DeliveryDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "DeliveryDTO [no=" + no + ", subject=" + subject + ", writer=" + writer + ", content=" + content
				+ ", wdate=" + wdate + ", passwd=" + passwd  + ", ref=" + ref
				+ ", indent=" + indent + ", id=" + id + ", lev=" + lev + ", check_read=" + check_read + "]";
	}
	public DeliveryDTO(int no, String subject, String writer, String content, String wdate, String passwd, int ref, int indent, String id, char lev, String check_read) {
		super();
		this.no = no;
		this.subject = subject;
		this.writer = writer;
		this.content = content;
		this.wdate = wdate;
		this.passwd = passwd;
		this.ref = ref;
		this.indent = indent;
		this.id = id;
		this.lev = lev;
		this.check_read = check_read;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getIndent() {
		return indent;
	}
	public void setIndent(int indent) {
		this.indent = indent;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public char getLev() {
		return lev;
	}
	public void setLev(char lev) {
		this.lev = lev;
	}
	public String getCheck_read() {
		return check_read;
	}
	public void setCheck_read(String check_read) {
		this.check_read = check_read;
	}

	
	}
