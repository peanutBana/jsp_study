package ch07;

public class Member {
	private String email;
	private String tel;
	static String pattern1 = "\\w+@\\w+\\.\\w+(\\.\\w+)?"; 
	static String pattern2 = "(02|010)-\\d{3,4}-\\d{4}";
	
	public String result() {
		String result = "";
		if(email.matches(pattern1)&&tel.matches(pattern2)) {
			result = "환영합니다";
		}
		else {
			result = "유효성 검사에 통과하지 못했습니다.";
		}
		return result;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
}
