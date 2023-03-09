<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	DAO dao = new DAO();
	List<DTO> list  =  dao.list1();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{margin: 0; padding: 0;}
	ul,li{list-style: none;}
	a{text-decoration: none; color: red;}
	
	.logo{text-align: center; background-color: hotpink; color: white; padding: 16px 0; }
	.nav{overflow: hidden; background-color: lavender; padding: 12px 0;}
	.nav ul,li{float: left; text-align: center; color: red; padding: 0 20px;}
	.content{background-color: lightyellow; min-height: 300px; padding: 16px;}
	
	.title{text-align: center; padding: 22px}
	.content table{margin: 0 auto; width: 500px}
	.content table th,td{border: 1px solid #ccc;}
	.content table .btn_group{text-align: center;}
	.footer{text-align: center;  background-color: hotpink; color: white; padding: 16px 0;}
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
	<div class="section">
		<section>
			<div class="content">
				<h2 class="title">최종등수조회</h2>
				<table>
					<tr>
						<th>참가번호</th>
						<th>성명</th>
						<th>생년월일</th>
						<th>참가부문</th>
						<th>지역</th>
						<th>총점</th>
						<th>평균</th>
						<th>등수</th>
					</tr>
						<%
						int rank = 1;
						for(int i =0; i <list.size(); i++){
							
							 String jumin = list.get(i).getEntry_jumin().substring(0, 6);
							 String type = "판소리";
								if(list.get(i).getEntry_type().equals("1")){
									type="기악";
								}else if(list.get(i).getEntry_type().equals("2")){
									type="민요";
								}else if(list.get(i).getEntry_type().equals("3")){
									type="무용";
								}
								
								String gender ="여";
								if(list.get(i).getEntry_jumin().substring(6, 7).equals("1")){
									gender="남";
								}
							
						%>
					<tr>
						<th><%=list.get(i).getEntry_no() %></th>
						<th><%=list.get(i).getEntry_name()+"("+gender+")" %></th>
						<th><%=jumin.substring(0, 2)+"년"+jumin.substring(2, 4)+"월"+jumin.substring(4)+"일" %> </th>
						
						
						
						<th><%=type %></th>
						<th><%=list.get(i).getEntry_area() %></th>
						<th><%=list.get(i).getS_tot() %></th>
						<th><%=list.get(i).getS_ave() %></th>
						
						<%
						if(i!=0){
						rank=list.get(i-1).getS_tot()-list.get(i).getS_tot()==0?
								rank:rank+1; 
						}
						
						
						%>
						<th><%=rank %></th>
						
					</tr>
					
					<%
						}
					%>
				</table>
			</div>
		</section>
	
	</div>
	
	<div class="footer">
		<footer>
			<p>HRDKOREA Copyright@2016 All rights reserve. Human Resources Development Service of Korea</p>
		</footer>
	</div>

</body>
</html>