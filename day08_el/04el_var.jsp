<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<%@include file="/WEB-INF/inc/header.jsp"%>
<body>
	<%@include file="/WEB-INF/inc/top.jsp"%>
	<%-- EL에서는 기본적으로 setAttribute 담긴걸 변수로 사용가능 
		 EL에서도 변수선언 가능
	--%>
	<%request.setAttribute("name", "스타벅스"); %>
	<!-- EL은 기본적으로 화면에 출력, 출력하지않고 변수만 선언가능 -->
	${a = 5 }			${b = "목요일" }		${c = name } <br>
	${a } <br>
	<!-- 세미콜론(;) 앞은 출력하지 않음, 하지만 세미콜론으로 끝나면 안됨. -->
	${a = 5; ""} <!-- 변수선언 -->	
	
</body>
</html>