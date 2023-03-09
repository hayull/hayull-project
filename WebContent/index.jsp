<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<h2 class="title">과정평가형 자격 CBQ</h2>
				<br>국가직무능력표준(NCS:National Competency Standards)으로 설계된 교육*훈련과정을 체계적으로 이수하고 내외부 평가를 거쳐 취득하는 국가기술자격입니다.<br>
				<br>산업현장 중심의 교육평가로 더 커지는 능력!<br>			
				<br>알고 있는것에 할 수 있는 것을 더하는<br>			
				<br>과정평가형 자격은<br>			
				<br>현장 중심형 인재육성을 지원 합니다.<br>	
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