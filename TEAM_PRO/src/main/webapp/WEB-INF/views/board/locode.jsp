<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#h3_1{
		margin: auto;
		position: relative;
		left: 20%;
		top: 25%;
	}
	#h3_2{
		margin: auto;
		position: relative;
		left: 20%;
		top: 75%;	
	}
	#div_1{
		margin: auto;
		position: relative;
		left: 20%;
		top: 35%;
	}
	#div_2{
		margin: auto;
		position: relative;
		left: 20%;
		top: 85%;
	}

	p{
		font-family: 바람체,Rix오늘의만화,고운한글, 휴먼편지체, 광수체, 나눔고딕, 굴림, 돋움, 궁서, Arial;
/* 		margin: auto; */
	}
</style>
</head>
<body>
<header>
	<%@ include file="../haed/header.jsp" %>
</header>
<br />
<br />
<br />
<br />
<br />
<h2 style="left: 20%;position: relative;" >Locode 소개</h2>
<br />
<br />
	<h3 id="h3_1">우리는 해낼 수 있습니다.</h3>
	<br />
		<div id="div_1">
			<p>흥미를 느끼고 들어온 개발자의 길</p>
			<p>하지만, 어느 순간 막히고 높은 벽이 존재한다고 생각이 들 때</p>
			<p>정보를 찾아보고 배우려고 하지만 모두에게 항상 좋은 환경은 보장되지 않죠.</p>
			<br />
			<p>Locode는 그런 현실에 대해서 언제나, 누구나 자신이 궁금한 것을 배우고,</p>
			<p>서로의 지식을 나눌 수 있는 커뮤니티입니다.</p>
		</div>
	<br />
	<br />
	<h3 id="h3_2">Locode 개발자의 한마디</h3>
	<br />
		<div id="div_2">
			<p>어쩌다 개발자의 길로 들어와 이렇게 개발자가 되기까지</p>
			<p>정말 많은 고난이 있었습니다.</p>
			<br />
			<p>하지만 그 고난들을 잘 이겨내고 어느덧 저는 초보 개발자가 되었습니다.</p>
			<p>이제는 노력하며 연습하고 소통을 하면서 실력을 쌓아 올려</p>
			<p>중급 개발자, 고급 개발자가 되도록 하겠습니다.</p>
			<br />
			<p>개발자로서 공부하면서 문뜩 생각이 들었습니다.</p>
			<p>모두가 즐겁게 개발하면서 배우고 싶은 것, 궁금한 것이 있을 때</p>
			<p>Locode에 와서 서로 질문하며 커뮤니케이션을 하는 그런 사이트를</p>
			<p>만들어 보고 싶어 이렇게 만들었습니다.</p>
			<br />
			<p>다들 개발을 하면서 포기하고 좌절하지 말고 힘내서 개발자의 길을</p>
			<p>계속 같이 걸어갔으면 좋겠습니다!</p>
			<br />
			<p>-Locode 개발자-</p>
		</div>
<footer>
	<%@ include file="../foot/footer.jsp" %>
</footer>
</body>
</html>