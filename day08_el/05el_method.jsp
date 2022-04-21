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
	<%
		UserVO user = new UserVO("malja","자","1004","admin");
		request.setAttribute("user", user);
	%>
	userId : ${user.userId }, userName : ${user.userName } <hr>
	<!-- 메소드도 그대로 사용 가능 -->
	userId : ${user.getUserId() }, ${user.setUserId("sunja") } <br>
	변경 후 userId : ${user.getUserId() }, ${user.userId }
	
</body>
</html>