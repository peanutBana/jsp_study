<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
 <%--Calculator calc = new Calculator() 와 같다. --%>
<jsp:useBean id="calc" class="ch07.Calculator"/>
<jsp:setProperty name="calc" property="*"/>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	결과: <%= calc.calc() %>
</body>
</html>