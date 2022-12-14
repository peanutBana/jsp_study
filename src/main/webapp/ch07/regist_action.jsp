<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="regist" class="ch07.Member"/>
<jsp:setProperty name="regist" property="*" />

<!DOCTYPE html>

<%=regist.result()%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>