package spring.model.delivery;

import org.springframework.web.multipart.MultipartFile;

public class DeliveryDTO {
	private int no;
	private String subject;
	private String writer;
	private String content;
	private String wdate;
	private String passwd;
	private String file1;
	private MultipartFile fileMF;
	private int ref;
	private int indent;
	public DeliveryDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DeliveryDTO(int no, String subject, String writer, String content, String wdate, String passwd, String file1,
			MultipartFile fileMF, int ref, int indent) {
		super();
		this.no = no;
		this.subject = subject;
		this.writer = writer;
		this.content = content;
		this.wdate = wdate;
		this.passwd = passwd;
		this.file1 = file1;
		this.fileMF = fileMF;
		this.ref = ref;
		this.indent = indent;
	}
	@Override
	public String toString() {
		return "DeliveryDTO [no=" + no + ", subject=" + subject + ", writer=" + writer + ", content=" + content
				+ ", wdate=" + wdate + ", passwd=" + passwd + ", file1=" + file1 + ", fileMF=" + fileMF + ", ref=" + ref
				+ ", indent=" + indent + "]";
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
	public String getFile1() {
		return file1;
	}
	public void setFile1(String file1) {
		this.file1 = file1;
	}
	public MultipartFile getFileMF() {
		return fileMF;
	}
	public void setFileMF(MultipartFile fileMF) {
		this.fileMF = fileMF;
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
	
	
	
	}
