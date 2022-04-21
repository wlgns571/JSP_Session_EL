<%@page import="com.study.common.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@page import="com.study.common.util.ProductList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/inc/header.jsp" %>
<title>제품 목록</title>
<style>
.prod-list tbody td {border: 1px dashed;}
.prod-list tbody ul {padding-left: 20px;}
.prod-list tbody ul li {list-style: none; line-height: 1.4em;}

.prod-title a ,
.prod-title a:active,
.prod-title a:focus   {text-overflow:ellipsis; text-decoration: none; }

.prod-image {text-align: center;}
.prod-image img {
	 height: 150px; 
}
</style>
</head>
<body>
<%
	List<ProdVO> proList = ProductList.getProductList();
%>
<div class="container">
<h3>제품 목록</h3>
<table class="prod-list">
	<caption class="hidden"><em>컴퓨터 제품 목록</em></caption>
	<colgroup>
		<col style="width: 33%;">
		<col style="width: 33%;">
		<col />
	</colgroup>
	<tbody>
		<%
		int no = 0;
		for (int i = 0; i < 3; i++) {	
		%>
			<tr>
				<%for (int j = 0; j < 3; j++) {	%>
					<td>
						<ul>
							<li class="prod-image"><a href="prodView.jsp?prodId=<%=proList.get(no).getProdId()%>"><img alt="" src="/study<%=proList.get(no).getProdImg()%>"></a></li>
							<li class="prod-title"><a href="prodView.jsp?prodId=<%=proList.get(no).getProdId()%>"><%=proList.get(no).getProdName() %></a></li>
							<li class="prod-price"><%=proList.get(no).getProdPrice()%></li>
							<li class="prod-req"><%=proList.get(no).getProdRegDate()%></li>
						</ul>
					</td>
				<%
					no++;
					}
				%>
			</tr>
		<%}%>
	</tbody>
</table>
</div>
</body>
</html>
