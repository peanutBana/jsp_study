package ch08;

import java.util.ArrayList;
import java.util.HashMap;

public class RegistService {
	 HashMap<String, Regist> regists = new HashMap<>();
	 
	 public RegistService() {
		 Regist r = new Regist("101","김지우","서울시","silver","(일반)","010-1111-1111");
		 regists.put("101", r);
		 r = new Regist("102","홍길동","인천시","gold","(중간)","010-2222-2222");
		 regists.put("102", r);
		 r = new Regist("103","율곡","김포시","vip","(상급)","010-3333-3333");
		 regists.put("103", r);
	 }
	 
	 public ArrayList<Regist> findAll() {
	      return new ArrayList<>(regists.values());
	   }
	   
	   //id로 원하는 상품을 가져오는 메소드(select * from where id="102")
	   public Regist find(String id) {
	      return regists.get(id);
	   }
}
