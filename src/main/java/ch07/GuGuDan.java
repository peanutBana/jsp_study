package ch07;

public class GuGuDan {
	private int n;
	
	public String process() {
		String s = "";
		for(int i=1; i<10; i++) {
			s +=  n+"*"+i+"="+n*i+"<br>";
		}
		return s;
	}

	public int getN() {
		return n;
	}

	public void setN(int n) {
		this.n = n;
	}
	
	
}
