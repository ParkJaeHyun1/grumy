package spring.model.admin;

public class TestDTO {
	private int no;
	private String name;
	private int stat;
	public TestDTO(int no, String name, int stat) {
		super();
		this.no = no;
		this.name = name;
		this.stat = stat;
	}
	public TestDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "TestDTO [no=" + no + ", name=" + name + ", stat=" + stat + "]";
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
	public int getStat() {
		return stat;
	}
	public void setStat(int stat) {
		this.stat = stat;
	}
	
	
}
