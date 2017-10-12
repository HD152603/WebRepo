<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.dimigo.vo.UserVO" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  	<style>
  	
 	</style>
 	
 	<link rel="stylesheet" type="text/css" href="/WebClass/css/blog.css"> 
 	
 	<title>블로그</title>
			 
  </head>
  
    <body>
  
  <nav class="navbar  fixed-top navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/WebClass/jsp/blogmain.jsp" style="cursor: pointer;">인생 보소</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this)">
        <a class="nav-link" href="#home">집 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this)">
        <a class="nav-link" href="#intro">소개</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this)">
        <a class="nav-link " href="#do">할거</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this)">
        <a class="nav-link " href="#song">노래</a>
      </li>
    </ul>
    
    <%-- 세션에 사용자 정보가 없는 경우 --%>
    <%
    	UserVO user = (UserVO)session.getAttribute("user");
  		if(user == null) {
    %>
    	<form class="form-inline my-2 my-lg-0" id="loginForm" method="post">
	      <input class="form-control mr-sm-2" type="text" name="id" id="inputEmail" placeholder="ID" aria-label="ID" required id="id">
	      <input class="form-control mr-sm-2" type="password" placeholder="PWD" name="pwd" id="inputPassword" aria-label="PWD" required id="pwd">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">로그인</button>
		</form>
    <% 
    	}
  		else{
    %>
    <%-- 세션에 사용자 정보가 있는 경우 --%>
     	<form action="/WebClass/bloglogout" method="post">
      		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">로그아웃</button>
		</form>
	  <%
  		}
	  %>
	  
    
  </div>
</nav>

	<div class="mainImage"	id="home">
		<img src="/WebClass/image/main.png" class="img" alt="이미지">
 	</div>
 	
	<div class="title">
    	<p>
    	<% if(user!=null) {
    	%>
    	☆☆<%=user.getId().split("@")[0]%>☆☆
    	<% } %>
    	어서와요~  많이 기다렸다구요!</p>
	</div>
	
	<div class="second">
		<p>내가 누구냐고	?</p>
		<p id="second2">알 필요 없다.</p>
	</div>
		
	<div class="intro" id="intro">
		<p>소개함니다</p>
		<img src="/WebClass/image/profile.jpg" class="introimg" alt="이미지">
		<p id="intro_text">
			공경배
			<br>
			0x10<sup>16</sup>
		</p>
				
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		  </ol>
		  
		  <div class="carousel-inner">
		   <div class="carousel-item active">
		    	<h1>출생</h1>
		    	<p>
		    		2000년<br>
		    		5월<br>
		    		3일
		    	</p>
		    </div>
		    <div class="carousel-item">
		    	<h1>학력</h1>
				<p>	
				용인둔전초등학교 졸업<br>
				영문중학교 졸업<br>
				한국디지털미디어고등학교 재학중
				</p>
		    </div>
		    <div class="carousel-item">
		    	<h1>경력</h1>
		    	<p>
		    		지금 보고 있는 블로그 만듦<br>
		    		하스스톤 아시아 600등 대<br>
		    		프로 자괴러
		    	</p>
		    </div>
		   
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
	</div>
	
	<div class="do" id="do">	
		<p>하고 싶다</p>
	</div>
	
	<div class="docontent">
		<div class="row"> 
			<div class="col" style="padding-left: 400px;">
				<img class="doimg" src="/WebClass/image/yonsei.png" alt="이미지">
				<p>원하는 대학</p>
			</div>
			<div class="col" style="padding-right: 400px;">
				<img class="doimg" src="/WebClass/image/dive.jpg" alt="이미지">
				<p>스카이 다이빙</p>
			</div>
		</div>
		<div class="row"> 
			<div class="col" style="padding-left: 400px;">
				<img class="doimg" src="/WebClass/image/walk.jpg" alt="이미지">
				<p>국토 대장정</p>
			</div>
			<div class="col" style="padding-right: 400px;">
				<img class="doimg" src="/WebClass/image/build.jpg" alt="이미지">
				<p>건물주</p>
			</div>
		</div>
	</div>
	
	<div class="do" id="song">	
		<p>노래</p>
	</div>

<div>
	<div class="row so">
		<div class="col-md-6">
			<div class="embed-responsive embed-responsive-16by9 tle">
  					<iframe class="embed-responsive-item you" src="https://www.youtube.com/embed/0gIgQ33TB4w" 	></iframe>
			</div>
		</div>
		<div class="col-md-6">
			<p class="fa">	
			<br>
				Imagine Dragons<br>
				Walking The Wire
			</p>
		</div>
	</div>
	<div class="row so">
		<div class="col-md-6">
			<div class="embed-responsive embed-responsive-16by9 tle">
  					<iframe class="embed-responsive-item you" src="https://www.youtube.com/embed/tq0yiIE52po" 	></iframe>
			</div>
		</div>
		<div class="col-md-6">
			<p class="fa">	
			<br>
				Maroon5  <br>
				Harder To Breathe
			</p>
		</div>
	</div>
	
	<div class="row so">
		<div class="col-md-6">
			<div class="embed-responsive embed-responsive-16by9 tle">
  					<iframe class="embed-responsive-item you" src="https://www.youtube.com/embed/CbKfXLRJkxs" 	></iframe>
			</div>
		</div>
		<div class="col-md-6">
			<p class="fa">	
			<br>
				Ed Sheeran <br>
				Galway Girl
			</p>
		</div>
	</div>
	
	
</div>
	
<!-- 모달창-->
  <div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal" >확인</button>
      </div>
    </div>
  </div>
</div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  	<script src="/WebClass/js/blog.js"></script>

<script>
$(function(){	
	$('#loginForm').submit(function (event) {
		event.preventDefault();
		
		var id = $('#inputEmail').val();
		var pwd = $('#inputPassword').val();
		
		$('#inputPassword').val('');
		
		$.post("/WebClass/bloglogin", { 
				"id": id, 
				"pwd" : pwd,
			}, function(data) {
				if(data.result) {
					location.href = location.href;
				}
				else{
					var myModal = $('#myModal');
					myModal.find('.modal-title').text('로그인 오류');
					myModal.find('.modal-body').text('잘못된 아이디입니다.');
					myModal.modal();
				}
			});
	});
});
</script>


  </body>
</html>