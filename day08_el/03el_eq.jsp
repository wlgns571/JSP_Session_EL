<%@page import="java.util.ArrayList"%>
<%@page import="com.study.login.vo.UserVO"%>
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
	${3 > 5}..........${3 < 5}..........${3 == 3}........${3 != 3} <br>
	${3 gt 5}.........${3 lt 5}.........${3 eq 3}........${3 ne 3} <br>
	<hr>
	${!true }   : ${not true } <br>
	<hr>
	<hr>
	<%-- empty : null, 컬렉션이면 null이 아니지만 비어있는 컬렉션, 배열=> true --%>
	<%
		request.setAttribute("name", null);
		List<String> strList = new ArrayList<>();
		strList.add("aa");
		List<String> strEmptyList = new ArrayList<>();
		request.setAttribute("strL", strList);
		request.setAttribute("strEmpty", strEmptyList);
	%>
	${empty name }.......${empty strL }........${empty strEmpty }
	
</body>
</html>