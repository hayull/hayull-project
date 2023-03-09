<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script>
	function send() {
		if(frm.entry_no.value==""){
			alert("참가번호가 입력되지 않았습니다!");
			frm.entry_no.focus();
			return;
		}
		frm.submit();
	}
</script>

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
				<h2 class="title">경연결과조회</h2>
				<form name="frm" method="post" action="list_pro.jsp">
					<table>
						
						<tr>
							<th>참가번호를 입력하시오</th>
							<td class="btn_group"><input type="text" name="entry_no" size="8">
							</td>
				

						<tr>

							<td class="btn_group" colspan="2"><input type="button"
								value=결과조회 onclick="send()"> <input type="button"
								value="홈으로" onclick="location.href='index.jsp'"></td>
						</tr>


					</table>
				</form>
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