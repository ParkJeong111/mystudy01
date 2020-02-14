<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- Header Start -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>GOGI_JAVA</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
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
    <link href="https://fonts.googleapis.com/css?family=Gugi&display=swap&subset=korean" rel="stylesheet"> <!-- �ΰ���Ʈ  Gugi -->
    <link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet"> <!-- �����Ʈ  Jua -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet"> <!--  �߰� ��Ʈ  Noto Sans KR -->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet"><!--  �߰� ��Ʈ  Do Hyeon -->
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
 
    </style>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index" style="font-family: Gugi; font-size: 30px;"> ����ڹ�.</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
      <input id="hname" type="text" class="form-controla" placeholder="�˻�� �Է����ּ���" style="margin-left: 2%; width: 30%" value="" name="hname">
      <input id="mainsearchlist" type="button" class="search-submit btn btn-primary" value="Search">
      <ul class="navbar-nav ml-auto" >
          <li class="nav-item"><a href="itemslist?type=1" class="nav-link">�ٴ�</a></li>
          <li class="nav-item"><a href="itemslist?type=2" class="nav-link">�ι�</a></li>
          <li class="nav-item"><a href="game" class="nav-link">����</a></li>
          <li class="nav-item"><a href="game" class="nav-link">����</a></li>
          <li class="nav-item"><a href="talklist?check=1" class="nav-link">�Խ���</a></li>
          <li class="nav-item"><a href="#" class="nav-link"><span class="submenumorem">������</span><i class="ti-angle-down"></i></a>
              <ul class="submenumore scrolled awake">
          	  	<li class="nav-link"><a href="notice">��������</a></li>
          	  	<hr>
                <li class="nav-link"><a href="event">�̺�Ʈ</a></li>
                <hr>
                <li class="nav-link"><a href="cs_faq">������</a></li>
                <hr>
                <li class="nav-link" ><a href="uselow">�̿���</a></li>
              </ul>
           </li>
          <li class="nav-item cta">
         			 <c:choose>
						<c:when test="${sessionScope.mid==null }">
							<a href="login" class="nav-link"><span>�α���</span></a>
						</c:when>
						<c:otherwise>
							<a href="logout" class="nav-link"><span >�α׾ƿ�</span></a>
						</c:otherwise>
					</c:choose>
          
             <ul class="submenumore">
                <li class="nav-link" ><a href="my_passwordcheck">��������</a></li>
                <hr>
          	  	<li class="nav-link" ><a href="my_reservation">���೻��</a></li>
          	  	<hr>
          	  	<li class="nav-link" ><a href="my_point">����Ʈ</a></li>
          	  	<hr>
                <li class="nav-link"><a href="#" id="my_board">���۾���</a></li>
              </ul>
          
          
          </li>
        </ul>
      </div>
    </div>
     <script>
  	$(function() {
  		var hname = 0;
		$("#mainsearchlist").click(function() {
			hname = $("#hname").val();
			location.href = 'mainsearchlist?hname='+encodeURI($('#hname').val(),"EUC-KR");
		});
		console.log("���� �ڵ��ϼ��� �̿ϼ��Դϴ�.");
		$('#hname').autocomplete({
			source: function(request, response) {
					//$('#ranklist').hide();
					console.log("ajax���� ��");
					$.ajax({
						dataType: "json",
						url : "autosearchlist",
						data : {hname : request.term},
						success : function(data){
							response(
							$.map(data, function(item) {
		                        	return {
		                                label: item.data,
		                                value: item.data
		                            }
		                    })
							);
							
							console.log(data);
						}
					});
				},
				minLength : 1,
				focus: function(event, ui){ return false;},
				select: function(event, ui){
					
					location.href = 'mainsearchlist?hname='+encodeURI(ui.item.value,"EUC-KR");
				}
				
				
		});
	})
  </script>
  </nav>
  
  <script>
  		$(function(){
  			// ���۾��� �������� �̵�
  			$('#my_board').click(function(){
  				if("${sessionScope.mid}"===null || "${sessionScope.mid}"===""){
  					alert("�α��� �� �̿� �����մϴ�.")
  				}else{
  					location='my_board';
  				}
  				
  			});
  		})
  </script>
>>>>>>> branch 'master' of https://github.com/ParkJeong111/mystudy01.git
    <!-- Header End -->