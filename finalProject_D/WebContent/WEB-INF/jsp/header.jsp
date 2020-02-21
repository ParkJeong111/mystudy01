<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- Header Start -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>GOGI_JAVA</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Squada+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/magnific-popup.css">
	
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Gugi&display=swap&subset=korean" rel="stylesheet"> <!-- 로고폰트  Gugi -->
    <link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet"> <!-- 헤더폰트  Jua -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet"> <!--  추가 폰트  Noto Sans KR -->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet"><!--  추가 폰트  Do Hyeon -->
	<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet"> <!-- 추가 폰트 Poppins -->

    <style>
    .nav-link{font-family: Jua;}
    .form-controla{
    -webkit-box-shadow: none;
    box-shadow: none;
    border: transparent;
    background: #fff;
    color: #4d4d4d;
    border: 1px solid #e6e6e6;
    font-size: 14px;
    width: 300px;
    height: 35px;
    padding: 10px 20px;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    -ms-border-radius: 0;
    border-radius: 0; 
    }
    .d-block{height: 200px}
    
    .submenumore{
     position: absolute;
     top: 100%;
    width: 150px;
    z-index: 2;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.02);
    opacity: 0;
    visibility: hidden;
    text-align: left;
    -webkit-transition: 0.6s;
    -moz-transition: 0.6s;
    -o-transition: 0.6s;
    transition: 0.6s;
    margin: 0px; padding: 0px;
    font-size: 16px; 
    background-color: white;
}
 li:hover .submenumore{
    opacity: 1;
    visibility: visible;
    top: 80%;
}  
    
   .hero-wrap{
   margin-top: -300px;
   } 
   
 .submenumore li{
	margin:5%;
	padding:0px;
   color: black;
   }
    .submenumore hr{
	margin:0px;
	padding:0px;
   color: black;
   }
   
   .submenumore > li > a{
   color: black;
   }
   
   .submenumore > li > a:hover{
   color: #f85959;
   }
 .shadow {
	box-shadow: 2px 2px 5px #999;
}
#autosearchlist {
	cursor: pointer;
	float: left;
	width: 292.67px;
	height: auto;
}
.autosearchlist:hover {
	color: red;
}
.autosearchlist {
	color : black;
	cursor: pointer;
	margin-left: 7px;
	
}
    </style>
<script
	src="https://ajax.googleapis.com/ajax/libs
	/jquery/3.4.1/jquery.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index" style="font-family: Gugi; font-size: 30px;"><img alt="" src="${pageContext.request.contextPath}/resources/images/icon/logo.png" width="40px;"> 고기자바.</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
      <input id="hname" type="text" class="form-controla" placeholder="검색어를 입력해주세요" style="margin-left: 2%; width: 30%" value="" name="hname">
      <input id="mainsearchlist" type="button" class="search-submit btn btn-primary" value="Search">

      
      <ul class="navbar-nav ml-auto" >
          <li class="nav-item"><a href="itemslist?type=1" class="nav-link">바다</a></li>
          <li class="nav-item"><a href="itemslist?type=2" class="nav-link">민물</a></li>
          <li class="nav-item" id = "ModalGameBtn"><a href="#" class="nav-link">게임</a></li>
          <li class="nav-item" id = "openModalBtn"><a href="#" class="nav-link">랜덤매칭</a></li>
          <li class="nav-item"><a href="game" class="nav-link">서비스</a></li>
          <li class="nav-item"><a href="#" class="nav-link"><span class="submenumorem">더보기</span><i class="ti-angle-down"></i></a>
              <ul class="submenumore scrolled awake">
          	  	<li class="nav-link"><a href="notice">공지사항</a></li>
          	  	<hr>
                <li class="nav-link"><a href="event">이벤트</a></li>
                <hr>
                <li class="nav-link"><a href="talklist?check=1">커뮤니티</a></li>
                <hr>
                <li class="nav-link"><a href="cs_faq">고객센터</a></li>
                <hr>
                <li class="nav-link" ><a href="uselow">이용약관</a></li>
              </ul>
           </li>
          <li class="nav-item cta">
         			 <c:choose>
						<c:when test="${sessionScope.mid==null }">
							<a href="login" class="nav-link"><span>로그인</span></a>
						</c:when>
						<c:otherwise>
							<a href="logout" class="nav-link"><span >로그아웃</span></a>
						</c:otherwise>
					</c:choose>
          
             <ul class="submenumore">
                <li class="nav-link" ><a href="my_passwordcheck">나의정보</a></li>
                <hr>
          	  	<li class="nav-link" ><a href="my_reservation">예약내역</a></li>
          	  	<hr>
          	  	<li class="nav-link" ><a href="my_matching">랜덤매칭내역</a></li>
          	  	<hr>
          	  	<li class="nav-link" ><a href="my_point">포인트</a></li>
          	  	<hr>
                <li class="nav-link"><a href="my_board" id="my_board">내글쓰기</a></li>
              </ul>
          
          
          </li>
        </ul>
      </div>
      
    </div>


  </nav>
     <div>
       	<div style="background-color: white; border-radius: 4px; display: none; margin-top: 20%; margin-left: 28.9%;" id="autosearchlist" class="divBox shadow">
      		<p class="autosearchlist"><a href="mainsearchlist"></a></p>
      	</div> 
	</div>
	<!-- 모달 기능 UI -->
<div id="modalBox" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title" id="myModalLabel" style = "margin: auto;">랜덤 매칭</h4>
</div>
<form action="randommatching" method="post">
<div class="modal-body">
<p>인원수</p>
<input type = "radio" name = "rmcount" value="2" checked="checked">&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;
<input type = "radio" name = "rmcount" value="4">&nbsp;4&nbsp;&nbsp;&nbsp;&nbsp;
<input type = "radio" name = "rmcount" value="6">&nbsp;6&nbsp;&nbsp;&nbsp;&nbsp;
<hr>
<p>지역</p>
<input type="radio" name = "rmlocation" value="seoul" checked="checked">&nbsp;서울&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmlocation"  value="Gyeonggi">&nbsp;경기&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmlocation"  value="Incheon">&nbsp;인천&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmlocation"  value="Gangwon">&nbsp;강원&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmlocation"  value="Chungbuk">&nbsp;충북&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmlocation"  value="Chungnam">&nbsp;충남&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmlocation"  value="Gyeongbuk">&nbsp;경북&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmlocation"  value="Gyeongnam">&nbsp;경남&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmlocation"  value=" Jeolbuk">&nbsp;전북&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmlocation"  value="Jeolnam">&nbsp;전남&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmlocation"  value="jeju">&nbsp;제주&nbsp;&nbsp;&nbsp;&nbsp;
<hr>
<p>유형</p>
<input type="radio" name = "rmtype" value="sea" checked="checked">&nbsp;바다&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmtype"  value="freshwater">&nbsp;민물&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmtype"  value="fishingcafe">&nbsp;낚시카페&nbsp;&nbsp;&nbsp;&nbsp;
<hr>
<p>나이</p>
<input type="radio" name = "rmage" value="20" checked="checked">&nbsp;20&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmage"  value="30">&nbsp;30&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmage"  value="40">&nbsp;40&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmage"  value="50">&nbsp;50&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmage"  value="60">&nbsp;60이상&nbsp;&nbsp;&nbsp;&nbsp;
<hr>
<p>시간대</p>
<input type="radio" name = "rmtime" value="am" checked="checked">&nbsp;오전&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmtime"  value="pm">&nbsp;오후&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmtime"  value="night">&nbsp;야간&nbsp;&nbsp;&nbsp;&nbsp;
<hr>
<p>성별</p>
<input type="radio" name = "rmsex" value="man" checked="checked">&nbsp;남자&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name = "rmsex"  value="woman">&nbsp;여자&nbsp;&nbsp;&nbsp;&nbsp;
<hr>
<button type="submit" class="btn btn-primary" >매칭하기</button>
<button type="button" class="btn btn-default" id="closeModalBtn" >매칭취소</button>
</div>
</div>
<div class="modal-footer">
</form>
</div>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src='${pageContext.request.contextPath}/resources/js/jquery.keyframes.min_.js'></script>
<script src="${pageContext.request.contextPath}/resources/js/script.js"></script> 
       <script>
       // 랜덤 매칭 모달을 노출시키기 위한 기능
       $('#openModalBtn').on('click', function(){
    	   $('#modalBox').modal('show');
    	   });
    	   // 모달 안의 취소 버튼에 이벤트를 건다.
    	   $('#closeModalBtn').on('click', function(){
    	   $('#modalBox').modal('hide');
    	   });
    	   
    	   $('#ModalGameBtn').on('click', function(){
        	   $('#modalGame').modal('show');
        	   });
    	   
       
     //메인검색창에서 검색 후 이동
  	$(function() {
  		var hname = 0;
		$("#mainsearchlist").click(function() {
			hname = $("#hname").val();
			location.href = 'mainsearchlist?hname='+encodeURI($('#hname').val(),"UTF-8");
		});
		


		//검색어 자동완성 및 자동완성된 검색어 클릭 시 이동
		$('#hname').on("propertychange change keyup paste input",function(){
			searchhname = $(this).val();
			console.log($(this).val());
			if($(this).val() === ""){
				$('#autosearchlist').hide();
			}else{
				$('#autosearchlist').show();
				$('#autosearchlist').empty();
				$.ajax({
					url:"autosearchlist?hname="+encodeURI($('#hname').val(),"UTF-8"),
					dataType : 'json',
					cache:false,
					success:function(data){
						var auto = "";
						for(var i in data){
							if(i < 5){
							$('#autosearchlist').append('<p class="autosearchlist"><a href="mainsearchlist?hname='+encodeURI(data[i].hname,"UTF-8")+'"'+'>'+data[i].hname+"</a></p>");
						}
					}
				}
			});

			}
		});
		});
  </script>
    <!-- Header End -->