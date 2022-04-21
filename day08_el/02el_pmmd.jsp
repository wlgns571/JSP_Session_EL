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
	02el_pmmd +-X/
	EL도 언어이다. 기본적으로 화면에 출력
	${userasd } 처럼 setAttribute가 안돼있는 이름을 쓰면 아무것도 출력안함.
	<hr>
	${3+5} <br>
	${"나는 배고프다"} <br>
	${3+"3"} : EL은 기본적으로 산술연산만 지원해줍니다. <br>
	"3"을 숫자 long으로 변환 후 덧셈 [3+3=6] <br>
	<%-- ${3+"아"} : "아"를 숫자로 바꾸지 못하기에 에러 --%>
	
</body>
</html>