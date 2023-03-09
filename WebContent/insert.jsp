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
			alert("참가번호가 입력되지 않았습니다.");
			frm.entry_no.focus();	
			return;
		}
		if(frm.score1.value==""){
			alert("김심사위원 점수가 입력되지 않았습니다!.");
			frm.score1.focus();	
			return;
		}
		if(frm.score2.value==""){
			alert("이심사위원 점수가 입력되지 않았습니다!.");
			frm.score2.focus();	
			return;
		}
		if(frm.score3.value==""){
			alert("박심사위원 점수가 입력되지 않았습니다!.");
			frm.score3.focus();	
			return;
		}
		if(frm.score4.value==""){
			alert("황심사위원 점수가 입력되지 않았습니다!.");
			frm.score4.focus();	
			return;
		}
		if(frm.score5.value==""){
			alert("조심사위원 점수가 입력되지 않았습니다!.");
			frm.score5.focus();	
			return;
		}
		
		alert("경연점수정보가 등록되었습니다!");
		frm.submit();
	}
	
	function cancle() {
		alert("정보를 지우고 처음부터 다시 입력 합니다!");
		frm.reset();
		frm.entry_no.focus();	
		return;
		
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
				<h2 class="title">경연점수등록</h2>
				<form name="frm" method="post" action="insert_pro.jsp">
					<table>
						<tr>
							<th>참가번호</th>
							<td class="btn_group"><input type="text" name="entry_no" size="8">예)0001
							</td>
						</tr>

						<tr>

							<th>심사위원</th>
							<td class="btn_group">심사점수(1~100)</td>
						</tr>


						<tr>
							<th>김심사</th>
							<td class="btn_group"><input type="text" name="score1" size="8">점</td>
						</tr>

						<tr>

							<th>이심사</th>
							<td class="btn_group"><input type="text" name="score2" size="8">점</td>
						</tr>


						<tr>
							<th>박심사</th>
							<td class="btn_group"><input type="text" name="score3" size="8">점</td>
						</tr>

						<tr>
							<th>황심사</th>
							<td class="btn_group"><input type="text" name="score4" size="8">점</td>
						</tr>

						<tr>

							<th>조심사</th>
							<td class="btn_group"><input type="text" name="score5" size="8">점</td>
						</tr>


						<tr>

							<td class="btn_group" colspan="2"><input type="button"
								value="등록" onclick="send()"> <input type="button"
								value="다시쓰기" onclick="cancle()"></td>
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