<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<title>chats</title>
</head>

<script type="text/javascript" src="/ercg/js/jquery-3.1.1.min.js"></script>
<script language="javascript">
$(document).ready(function() {
	$("#room1").on('click', function() {
		location.href="/room.do";
	});
	
	$("#room2").on('click', function() {
		location.href="/room2.do";
	});
});

</script>

<body>
<div class="talkTool">
	<!-- Title 채팅 -->
	<header class= "top-header">
		<div class="header__column">
			<span class="header__text">채팅</span>
		</div>
	</header>
	
	<!-- 채팅방들 리스트 -->
	<main class="chats">
	
		<div class="search-bar">
			<input type="text" placeholder="검색">
		</div>
		<ul class="chats__list">
			<li class="chats__chat" id="room1">
					<div class="chat__content">
						<div class="chat__preview">
							<h3 class="chat__user">ROOM1</h3>
						</div>
					</div>
			</li>
			
			<li class="chats__chat" id="room2">
					<div class="chat__content">
						<div class="chat__preview">
							<h3 class="chat__user">ROOM2</h3>
						</div>
					</div>
			</li>

		</ul>
	</main>
	
	<nav class="tab-bar">
		<a href="index.jsp" class="tab-bar__tab">
			<i class="fa fa-user"></i>
			<span class="tabl-bar_title">친구</span>
		</a>
		
		<a href="chats.jsp" class="tab-bar__tab--selected">
			<i class="fas fa-commet"></i>
			<span class="tab-bar__title">채팅</span>
		</a>
	   
	   <a href="" class="tab-bar__tab">
     	 <i class="fa fa-search"></i>
      	<span class="tab-bar__title">채널</span>
    	</a>

    	<a href="" class="tab-bar__tab">
      		<i class="fa fa-ellipsis-h"></i>
      		<span class="tab-bar__title">더보기</span>
    	</a>
	</nav>
</div>
</body>
</html>