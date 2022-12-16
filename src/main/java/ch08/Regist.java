package ch08;

public class Regist {
	private String id;
	private String name;
	private String address;
	private String grade;
	private String phone;
	private String detail;
	
	
	public Regist(String id, String name,String address, String grade, String detail, String phone) {
		this.id = id;
		this.name = name;
		this.address = address;
		this.grade = grade;
		this.detail = detail;
		this.phone = phone;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getPhone() {
		return phone;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
