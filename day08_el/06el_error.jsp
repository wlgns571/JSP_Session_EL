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
	${usar} <!-- 에러 x 화면에 출력이 안됨 -->
	${user.id } <!-- user는 null이 아닌데 필드를 이상한걸 썼을 경우 error 발생 -->
</body>
</html>