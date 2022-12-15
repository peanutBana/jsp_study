<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSTL 종합예제</h2>
	<hr>
	<h3>set, out</h3>
	<%--pageScope 영역에 저장(지역변수)--%>
	<c:set var="product1" value="<b>애플 아이폰</b>"/>	<!-- 태그 저장 -->
	<c:set var="product2" value="삼성 갤럭시"/>		<!-- 문자열 저장 -->
<!--  	<c:set var="intArray" value="${[1,2,3,4,5]}"/>	<!--el형식 -->
	
	<p>
		product1(jstl):
		<c:out value="${product1}" default="Not registered" escapeXml="true"></c:out>
	</p>
	<p>product1(el): ${product1}</p>
	<p>intArray[2]: ${intArray[2]}</p>
	<hr>
	<h3>forEach 배열 출력</h3>
	<ul>
		<!-- for(int num: intArray){} -->
		<c:forEach var="num" varStatus="i" items="${intArray}">
			<li>${i.index} : ${num}</li>
		</c:forEach>
	</ul>
	<hr>
	<h3>if</h3>
	<c:set var="checkout" value="true"/>
	
	<!-- if(test == checkout) -->
	<c:if test="${checkout}">
		<p>주문제품: ${product2} </p>	
	</c:if>
	
	<c:if test="${!checkout}">
		<p>주문제품아님 </p>	
	</c:if>
	
	<!-- product2에 값이 들어가있는지 아닌지 체크 -->
	<c:if test="${!empty product2 }">
		<b>${product2}이미 있음!</b>
	</c:if>
	<hr>
	
	<h3>choose, when, otherwise</h3>
	<c:choose>
		<c:when test="${checkout}">
			<p>주문제품: ${product2} </p>
		</c:when>
		<c:otherwise>
			<p>주문 제품 아님</p>
		</c:otherwise>
	</c:choose>
	<hr>
	<h3>forTokens</h3>
	<c:forTokens var="city" items="Seoul/Tokyo/NewYork/Toronto" delims="/" varStatus="i">
		<!--인덱스가 첫번째면 true  -->
		<!-- if(i.first==true) -->
		<c:if test="${i.first}">도시목록: </c:if>
		${city}
		<c:if test="${!i.last}">, </c:if>
		
	</c:forTokens>
	
	
	
	
</body>

</html>



