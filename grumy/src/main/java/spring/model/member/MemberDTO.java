package spring.model.member;

public class MemberDTO {
	private String id;
	private String passwd;
	private String name; 
	private String postcode;
	private String address;
	private String detailaddress;
	private String phone;
	private String email;
	private String birth;
	private int point;
	private String grade;
	private String phone1;
	private String phone2;
	private String phone3;
	private String email1;
	private String email2;
	
	
	
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetailaddress() {
		return detailaddress;
	}
	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	
	public void connectInfo() {
		email = email1 +"@"+email2;
		phone = phone1+phone2+phone3;
	}
	public void divideInfo() {
		phone1 = phone.substring(0,3);
		phone2 = phone.substring(3,7);
		phone3 = phone.substring(7,phone.length());
		email1 = email.substring(0,email.indexOf("@"));
		email2 = email.substring(email.indexOf("@")+1,email.length());
	}

	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", passwd=" + passwd + ", name=" + name + ", postcode=" + postcode + ", address="
				+ address + ", detailaddress=" + detailaddress + ", phone=" + phone + ", email=" + email + ", birth="
				+ birth + ", point=" + point + ", grade=" + grade + ", phone1=" + phone1 + ", phone2=" + phone2
				+ ", phone3=" + phone3 + ", email1=" + email1 + ", email2=" + email2 + "]";
	}
	
	
}
