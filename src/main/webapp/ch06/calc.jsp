<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int n1 = Integer.parseInt(request.getParameter("n1"));
	int n2 = Integer.parseInt(request.getParameter("n2"));
	String op = request.getParameter("op");
	System.out.println("n1: "+ n1 + ", n2 : "+ n2);
	
	long res = 0;
	
	switch(op) {
		case "+": res = n1 + n2; break;
		case "-": res = n1 - n2; break;
		case "*": res = n1 * n2; break;
		case "/": res = n1 / n2; break;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	결과: <%= res %>
</body>
</html>