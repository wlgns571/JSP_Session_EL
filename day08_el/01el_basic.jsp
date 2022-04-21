<%@page import="com.study.login.vo.UserVO"%>
<%@page import="com.study.common.util.ProductList"%>
<%@page import="com.study.common.vo.ProdVO"%>
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
	ProdVO prod = ProductList.getProduct("CPU001");
	request.setAttribute("prod", prod);
	UserVO user = new UserVO("malja","말자","1004","ADMIN");
	session.setAttribute("user", user);
	%>

	request에 담긴 prodId : <%=((ProdVO)request.getAttribute("prod")).getProdId() %><br>
	request에 담긴 prodId : ${prod.prodId}<br>
	session에 담긴 user : ${user}
	<hr>
	<%--  EL은 기본적으로 출력을 해줌.
		  application, pageContext, session, request에 담긴 속성을 EL로 사용가능
		  session.setAttribute("name1", "value1"); session.setAttribute("user", user);
		  ${name1} 을 쓰면 "value1"이 화면에 출력
		  ${user}  을 쓰면 user가 화면에 출력.
		  userId를 쓰고 싶으면 get을 하지 않고 ${user.userId}처럼 바로 필드이름 적용 가능 [대부분 위를 많이 사용]
		  								 or ${user["userId"]} 
	 --%>
	
</body>
</html>