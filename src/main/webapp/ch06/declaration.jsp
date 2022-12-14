<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!--퀴즈 
1. 스트립트 요소 세가지
	1) 선언 태그 : 멤버 변수나 메서드 선언에 필요, 권장하진 않음
	2) 표현 태그 : out.println()으로 출력할 수 있는 모든 자바코드 사용 가능, 사칙연산, 메소드호출, 변수값출력
	3) 스크립틀릿 태그 : 모든 자바 코드 사용가능, html과 스크립틀릿을 중간에 섞어 사용 가능
	
2. 선언문 태그와 스크립틀릿 태그의 차이점
	=> 선언 태그는 변수나 메소드 선언에만 사용, 스크립틀릿 태그는 모든 자바코드 사용 가능
	
3. 애플리케이션 실행 결과에는 보이지 않는 JSP주석 표기법은?
	=> <%-- 주석 --%>
 -->
 
 <!-- 4 -->
 <%!
 	static String str = "Hello, Java Server Pages";
 	String getString(){
	 return str;
 	}
 %>
 <%= getString() %>
 
 
</body>
</html>