<%@page import="model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String entry_no = request.getParameter("entry_no");
	DAO dao = new DAO();
	
	DTO dto = dao.select(entry_no);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}

ul, li {
	list-style: none;
}

a {
	text-decoration: none;
	color: red;
}

.logo {
	text-align: center;
	background-color: hotpink;
	color: white;
	padding: 16px 0;
}

.nav {
	overflow: hidden;
	background-color: lavender;
	padding: 12px 0;
}

.nav ul, li {
	float: left;
	text-align: center;
	color: red;
	padding: 0 20px;
}

.content {
	background-color: lightyellow;
	min-height: 300px;
	padding: 16px;
}

.title {
	text-align: center;
	padding: 22px
}

.content table {
	margin: 0 auto;
	width: 500px
}

.content table th, td {
	border: 1px solid #ccc;
}

.content table .btn_group {
	text-align: center;
}

.footer {
	text-align: center;
	background-color: hotpink;
	color: white;
	padding: 16px 0;
}
</style>

</head>
<body>
	<div class="header">
		<header>
			<h1 class="logo">국가경영프로그램</h1>
			<div class="nav">
				<nav>
					<ul>
						<li><a href="insert.jsp">경영점수등록</a></li>
						<li><a href="list.jsp">경영결고조회</a></li>
						<li><a href="3.jsp">최종등수조회</a></li>
						<li><a href="index.jsp">홈으로</a></li>
					</ul>
				</nav>
			</div>
		</header>
	</div>
	<%
 if(dto.getEntry_no()!=null){
	 
%>
	<div class="section">
		<section>
			<div class="content">
				<h2 class="title">참가번호:<%=dto.getEntry_no() %> 님의 경연결과 조회</h2>
				<form name="frm" method="post" action="list_pro.jsp">
					<table>
						
						
						<tr>
							<th>참가번호</th>
							<td class="btn_group"><%=dto.getEntry_no() %></td>
						<tr>
						
						<tr>
							<th>성명</th>
							<td class="btn_group"><%=dto.getEntry_name() %></td>
						<tr>
						
						
						<%
						 String jumin = dto.getEntry_jumin().substring(0, 6);
						%>
						
						<tr>
							<th>생년월일</th>
							<td class="btn_group"><%=jumin.substring(0, 2)+"년"+jumin.substring(2, 4)+"월"+jumin.substring(4)+"일" %></td>
						<tr>
						<%
						 String type = "판소리";
							if(dto.getEntry_type().equals("1")){
								type="기악";
							}else if(dto.getEntry_type().equals("2")){
								type="민요";
							}else if(dto.getEntry_type().equals("3")){
								type="무용";
							}
						%>
						<tr>
							<th>참가부문</th>
							<td class="btn_group"><%=type %></td>
						<tr>
						
						<tr>
							<th>지역</th>
							<td class="btn_group"><%=dto.getEntry_area() %></td>
						<tr>
						
						<tr>
							<th>김심사</th>
							<td class="btn_group"><%=dto.getScore1() %></td>
						<tr>
						
						<tr>
							<th>이심사</th>
							<td class="btn_group"><%=dto.getScore2() %></td>
						<tr>
						
						<tr>
							<th>박심사</th>
							<td class="btn_group"><%=dto.getScore3() %></td>
						<tr>
						
						<tr>
							<th>황심사</th>
							<td class="btn_group"><%=dto.getScore4() %></td>
						<tr>
						
						<tr>
							<th>조심사</th>
							<td class="btn_group"><%=dto.getScore5() %></td>
						<tr>
						
						<tr>
							<th>총점</th>
							<td class="btn_group"><%=dto.getS_tot() %></td>
						<tr>
						
						<tr>
							<th>평균</th>
							<td class="btn_group"><%=dto.getS_ave() %></td>
						<tr>
						
						
						
						
						
						
<%
 }else{
%>

		
		<div class="section">
		<section>
			<div class="content">
				<h2 class="title">경연점수가 존재하지 않습니다</h2>
				
					<table style="width: 1px">
						
				
		
<% 	 
 }
%>
						
							<td class="btn_group" colspan="2"><input type="button"
								value=돌아가기 onclick="history.back()">
								</td>
						</tr>


					</table>
			
			</div>
		</section>

	</div>
	

	<div class="footer">
		<footer>
			<p>HRDKOREA Copyright@2016 All rights reserve. Human Resources
				Development Service of Korea</p>
		</footer>
	</div>

</body>
</html>
