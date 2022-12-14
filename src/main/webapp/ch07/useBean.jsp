<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="gugu" class="ch07.GuGuDan"/>
<jsp:setProperty name="gugu" property="n" value="5"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<%=gugu.process() %>
</body>
</html>