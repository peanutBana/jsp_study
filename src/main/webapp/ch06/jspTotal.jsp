<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>jsp 종합예제</h2>
	<hr>
	<%-- 선언태그 --%>
	<%!
		String[] member = {"손흥민","김민재","박지성","이강인"};
		int n1 = 10;
		
		int calc(int a){
			return a+n1;
		}
	%>
	
	<%--표현태그: 사칙연산, 멤버변수, 메소드호출--%>
	<h3>
		1. calc(10)메소드 실행 결과: <%=calc(10) %><br/>
		2. n1 변수 출력: <%=n1 %><br/>
		3. 연산 출력: <%= n1 + 1 %>
	</h3>
	<hr/>
	<ul>
		<%
			for(String name: member){%>
				<li><%=name %></li>
			<% }%>
	</ul>
	<ul>
		<%
			for(String name: member){
				out.println("<li>"+name+"</li>");
			}
		%>
	</ul>
	<hr>
	
	<!-다른 jsp파일 가져오기 -->
	<%@ include file="../hello.jsp" %>
	<hr>
	
	<% Date day = new Date(); %>
	Current Time: <%= day	 %>
	<br>
	5의 제곱: <%= Math.pow(5,2) %>
	<hr>
</body>
</html>