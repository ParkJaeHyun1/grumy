package spring.model.member;

public class MemberDTO {
	private String ID;
	private String PW;
	private String NAME;
	private String BIRTH;
	private String EMAIL;
	private String PHONE;
	private String OADDRESS;
	private String ADDRESS;
	private String DETAILADDRESS;
	private String account;
	private String bank;
	private int POINT;
	private String GRADE;
	
	
	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		this.ID = iD;
	}

	public String getPW() {
		return PW;
	}

	public void setPW(String pW) {
		this.PW = pW;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String NAME) {
		this.NAME = NAME;
	}

	public String getBIRTH() {
		return BIRTH;
	}

	public void setBIRTH(String bIRTH) {
		this.BIRTH = bIRTH;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		this.EMAIL = eMAIL;
	}

	public String getPHONE() {
		return PHONE;
	}

	public void setPHONE(String pHONE) {
		this.PHONE = pHONE;
	}

	public String getOADDRESS() {
		return OADDRESS;
	}

	public void setOADDRESS(String oADDRESS) {
		this.OADDRESS = oADDRESS;
	}

	public String getADDRESS() {
		return ADDRESS;
	}

	public void setADDRESS(String aDDRESS) {
		this.ADDRESS = aDDRESS;
	}

	public String getDETAILADDRESS() {
		return DETAILADDRESS;
	}

	public void setDETAILADDRESS(String DETAILADDRESS) {
		this.DETAILADDRESS = DETAILADDRESS;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public int getPOINT() {
		return POINT;
	}

	public void setPOINT(int pOINT) {
		this.POINT = pOINT;
	}

	public String getGRADE() {
		return GRADE;
	}

	public void setGRADE(String gRADE) {
		this.GRADE = gRADE;
	}


	
	@Override
	public String toString() {
		return "MemberDTO [ID=" + ID + ", PW=" + PW + ", NAME=" + NAME + ", BIRTH=" + BIRTH + ", EMAIL=" + EMAIL
				+ ", PHONE=" + PHONE + ", OADDRESS=" + OADDRESS + ", ADDRESS=" + ADDRESS + ", DETAILADDRESS="
				+ DETAILADDRESS + ", account=" + account + ", bank=" + bank + ", POINT=" + POINT + ", GRADE=" + GRADE
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
