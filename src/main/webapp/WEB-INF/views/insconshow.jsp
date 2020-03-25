<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ page session="false"%> --%>
<!doctype html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta http-equiv="Content-Language" content="en" />
<meta name="msapplication-TileColor" content="#2d89ef">
<meta name="theme-color" content="#4188c9">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="HandheldFriendly" content="True">
<meta name="MobileOptimized" content="320">
<link rel="icon" href="./favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" type="image/x-icon" href="./favicon.ico" />
<!-- Generated: 2019-04-04 16:55:45 +0200 -->
<title>index</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
<script src="./assets/js/vendors/jquery-3.2.1.min.js"></script>
<script src="./assets/js/require.min.js"></script>
<script>
        requirejs.config({
                baseUrl : '.'
        });
</script>
<!-- Dashboard Core -->
<link href="assets/css/dashboard.css" rel="stylesheet" />
<script src="assets/js/dashboard.js"></script>
<!-- c3.js Charts Plugin -->
<link href="assets/plugins/charts-c3/plugin.css" rel="stylesheet" />
<script src="assets/plugins/charts-c3/plugin.js"></script>
<!-- Google Maps Plugin -->
<link href="assets/plugins/maps-google/plugin.css" rel="stylesheet" />
<script src="assets/plugins/maps-google/plugin.js"></script>
<!-- Input Mask Plugin -->
<script src="assets/plugins/input-mask/plugin.js"></script>
<!-- Datatables Plugin -->
<script src="assets/plugins/datatables/plugin.js"></script>
</head>
<body class="">
	<div class="page">
		<div class="flex-fill">
			<div class="header py-4">
				<div class="container">
					<div class="d-flex">
						<a class="header-brand" href="./index">
							<img src="demo/brand/dbpetlogo.png" class="header-brand-img" alt="dbpet logo">
						</a>
						<div class="d-flex order-lg-2 ml-auto">
							<c:choose>
								<c:when test="${not empty sessionScope.user}">
									<div class="dropdown d-none d-md-flex">
										<a class="nav-link icon" data-toggle="dropdown">
											<i class="fe fe-bell"></i> <span class="nav-unread"></span>
										</a>
										<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
											<a href="#" class="dropdown-item d-flex">
												<span class="avatar mr-3 align-self-center" style="background-image: url(demo/faces/male/41.jpg)"></span>
												<div>
													<strong>Nathan</strong> pushed new commit: Fix page load performance issue.
													<div class="small text-muted">10 minutes ago</div>
												</div>
											</a>
											<a href="#" class="dropdown-item d-flex">
												<span class="avatar mr-3 align-self-center" style="background-image: url(demo/faces/female/1.jpg)"></span>
												<div>
													<strong>Alice</strong> started new task: Tabler UI design.
													<div class="small text-muted">1 hour ago</div>
												</div>
											</a>
											<a href="#" class="dropdown-item d-flex">
												<span class="avatar mr-3 align-self-center" style="background-image: url(demo/faces/female/18.jpg)"></span>
												<div>
													<strong>Rose</strong> deployed new version of NodeJS REST Api V3
													<div class="small text-muted">2 hours ago</div>
												</div>
											</a>
											<div class="dropdown-divider"></div>
											<a href="#" class="dropdown-item text-center">Mark all as read</a>
										</div>
									</div>
									<div class="dropdown">
										<a href="#" class="nav-link pr-0 leading-none" data-toggle="dropdown">
											<span class="avatar" style="background-image: url(./demo/faces/female/25.jpg)"></span> <span class="ml-2 d-none d-lg-block"> <span class="text-default">${sessionScope.user.c_id}</span> <small class="text-muted d-block mt-1">${sessionScope.user.c_name}</small>
											</span>
										</a>
										<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
											<a class="dropdown-item" href="profile">
												<i class="dropdown-icon fe fe-user"></i> 사용자 설정
											</a>
											<a class="dropdown-item" href="#">
												<i class="dropdown-icon fe fe-settings"></i> 반려견 설정
											</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="logout">
												<i class="dropdown-icon fe fe-log-out"></i> 로그아웃
											</a>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="nav-item d-none d-md-flex">
										<a href="./login" class="btn btn-sm btn-outline-success">로그인</a>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
						<a href="#" class="header-toggler d-lg-none ml-3 ml-lg-0" data-toggle="collapse" data-target="#headerMenuCollapse">
							<span class="header-toggler-icon"></span>
						</a>
					</div>
				</div>
			</div>
			<div class="header collapse d-lg-flex p-0" id="headerMenuCollapse">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg order-lg-first">
							<ul class="nav nav-tabs border-0 flex-column flex-lg-row">
								<li class="nav-item dropdown"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fa fa-edit"></i> 보험
									</a>
									<div class="dropdown-menu dropdown-menu-arrow">
										<a href="./index" class="dropdown-item ">보험료 산정</a>
										<a href="./index" class="dropdown-item ">보험 연동</a>
									</div></li>
								<li class="nav-item dropdown"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fa fa-hospital-o"></i> 동물병원
									</a>
									<div class="dropdown-menu dropdown-menu-arrow">
										<a href="./index" class="dropdown-item ">동물병원 조회</a>
									</div></li>
								<li class="nav-item dropdown"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
										<i class="fa fa-question"></i> FAQ
									</a>
									<div class="dropdown-menu dropdown-menu-arrow">
										<a href="./faq" class="dropdown-item ">자주찾는 질문</a>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="my-3 my-md-5">
				<div class="container">
					<div class="row" style="margin-right: 200px;">
						<div class="col col-login mx-auto">

							<div class="row row-cards">
								<div class="col-md-6">
									<div class="card" style="width: 600px;">
										<div class="card-status bg-green"></div>
										<div class="card-header">
											<img src="demo/photos/petlogo.png" style="width: 300px; height: 70%;">
										</div>
										<div class="card-body">
											<div class="text-muted">반려견 정보</div>
											<div style="margin-left: 10px; margin-top: 10px;">
												<div style="margin-bottom: 5px;">
													이름<span id="p_name" style="margin-left: 20px;"></span>
												</div>
												<div style="margin-bottom: 5px;">
													견종<span id="p_type" style="margin-left: 20px;"></span>
												</div>
												<div style="margin-bottom: 5px;">
													생일<span id="p_birth" style="margin-left: 20px;"></span>
												</div>
											</div>
											<hr>
											<div class="text-muted">보험 정보</div>
											<div style="margin-left: 10px; margin-top: 10px;">
												<div style="margin-bottom: 5px;">
													<span class="text-muted">자기부담금</span><span id="i_pay" style="margin-left: 26px;"></span>만원
												</div>
												<div style="margin-bottom: 5px;">
													<span class="text-muted">보상비율</span><span id="i_percent" style="margin-left: 44px;"></span>%
												</div>
												<div style="margin-bottom: 5px;">
													<span class="text-muted">계약일</span><span id="i_startdate" style="margin-left: 60px;"></span>
												</div>
												<div style="margin-bottom: 5px;">
													<span class="text-muted">납입 방법</span><span id="i_paytype" style="margin-left: 40px;"></span>
												</div>
												<div style="margin-bottom: 5px;">
													<span class="text-muted">특별 약관</span><span id="i_special" style="margin-left: 40px;"></span>
												</div>
												<div style="margin-bottom: 10px;">
													<span class="text-muted">총 납입 금액</span><span id="i_total" style="margin-left: 22px;"></span>원
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><strong>보험</strong></li>
									<li><a href="#">보험료 산정</a></li>
									<li><a href="#">보험 연동</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><strong>동물병원</strong></li>
									<li><a href="#">동물병원 조회</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><strong>FAQ</strong></li>
									<li><a href="#">자주 찾는 질문</a></li>
								</ul>
							</div>
							<div class="col-6 col-md-3">
								<ul class="list-unstyled mb-0">
									<li><strong>프로필</strong></li>
									<li><a href="#">사용자 설정</a></li>
									<li><a href="#">반려견 설정</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="footer center-block">
			<div class="container">
				<div class="row flex-row-reverse">
					<div class="col-12 col-lg-auto mt-3 mt-lg-0 text-center">
						<ul class="list-inline list-inline-dots mb-0">
							<li class="list-inline-item"><a href="https://www.dbinc.co.kr/">
									<strong>(주)디비아이엔씨</strong>
								</a></li>
							<li class="list-inline-item">서울시 강남구 삼성로 96길 23(삼성동 154-17)</li>
							<li class="list-inline-item">TEL : 02-2136-6000</li>
							<li class="list-inline-item">사업자 등록 번호 : 211-81-19938 (C) 2015</li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script>
                $(function() {
                        $("#p_name").text(sessionStorage.getItem("p_name"));
                        var p_type = sessionStorage.getItem("p_type");
                        switch(p_type){
                        case "poodle":
                                $("#p_type").text("푸들");
                                break;
                        case "maltese":
                                $("#p_type").text("말티즈");
                                break;
                        case "sichu":
                                $("#p_type").text("시츄");
                                break;
                        }
                        $("#p_birth").text(sessionStorage.getItem("p_birth"));
                        
                        var json = {'c_pid' : sessionStorage.getItem("c_pid")        
                        };
                        console.log(json);
                        $.get("selectinsinfo", json, function(data) {
                                        console.log(data);
                                        var insobj = eval("(" + data + ")");
                                        console.log(insobj);
                                        $("#i_pay").text(insobj[0].i_pay);
                                        $("#i_percent").text(insobj[0].i_percent);
                                        $("#i_paytype").text(insobj[0].i_paytype);
                                        $("#i_total").text(insobj[0].i_total);
                                        $("#i_startdate").text(insobj[0].i_startdate);
                                        var s = "";
                                        if(insobj[0].i_sp1 == "1"){
                                                s += "구강질환 "
                                        }
                                        if(insobj[0].i_sp2 == "1"){
                                                s += "탈구 "
                                        }
                                        if(insobj[0].i_sp3 == "1"){
                                                s += "피부질환 "
                                        }
                                        if(insobj[0].i_sp4 == "1"){
                                                s += "장례지원비 "
                                        }
                                        if(insobj[0].i_sp5 == "1"){
                                                s += "배상책임 "
                                        }
                                        
                                        $("#i_special").text(s);
                });
                        
                        
                })

                
        </script>
</body>
</html>