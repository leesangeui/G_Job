<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" href="/pro/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${style}style.css">
<link rel="stylesheet" type="text/css" href="${style}box.css">
<link rel="stylesheet" type="text/css" href="${style}color.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.panel-login {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
}

.panel-login>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align: center;
}

.panel-login>.panel-heading a {
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login>.panel-heading a.active {
	color: #029f5b;
	font-size: 18px;
}

.panel-login>.panel-heading hr {
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -ms-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
}

.panel-login input[type="text"], .panel-login input[type="email"],
	.panel-login input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login input:hover, .panel-login input:focus {
	outline: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}

.btn-login {
	background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;
}

.btn-login:hover, .btn-login:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}

.forgot-password {
	text-decoration: underline;
	color: #888;
}

.forgot-password:hover, .forgot-password:focus {
	text-decoration: underline;
	color: #666;
}

.btn-register {
	background-color: #1CB94E;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #1CB94A;
}

.btn-register:hover, .btn-register:focus {
	color: #fff;
	background-color: #1CA347;
	border-color: #1CA347;
}
</style>
<script src="/pro/resources/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function() {

		$('#login-form-link').click(function(e) {
			$("#login-form").delay(100).fadeIn(100);
			$("#login-form2").fadeOut(100);
			$('#login-form-link2').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#login-form-link2').click(function(e) {
			$("#login-form2").delay(100).fadeIn(100);
			$("#login-form").fadeOut(100);
			$('#login-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});

	});
</script>
</head>
<body>




<!-- ---------------------------------- 로그인 화면 시작 ------------------------------------- -->
	<c:if test="${sessionScope.ISessionId==null}">
		<c:if test="${sessionScope.CSessionId==null}">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="panel panel-login">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-6">
										<a href="#" class="active" id="login-form-link">개인 회원 로그인</a>
									</div>
									<div class="col-xs-6">
										<a href="#" id="login-form-link2">기업 회원 로그인</a>
									</div>
								</div>
								<hr>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<!-- 개인 회원 로그인  -->
										<form id="login-form" action="main" method="post"
											role="form" style="display: block;">
											<input type="hidden" name="type" value="1">
											<div class="form-group">
												<input type="text" name="id" id="id" tabindex="1"
													class="form-control" placeholder="Username" value="">
											</div>
											<div class="form-group">
												<input type="password" name="pwd" id="pwd" tabindex="2"
													class="form-control" placeholder="Password">
											</div>
											
											<div class="form-group">
												<div class="row">
													<div class="col-sm-6 col-sm-offset-3">
														<input type="submit" name="login-submit" id="login-submit"
															tabindex="4" class="form-control btn btn-login"
															value="Log In">
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-lg-12">
														<div class="text-center">
															<a href="https://phpoll.com/recover" tabindex="5"
																class="forgot-password">Forgot Password?</a>
														</div>
													</div>
												</div>
											</div>
										</form>
										<!-- 기업 회원 로그인 -->
										<form id="login-form2" action="main" method="post"
											role="form" style="display: none;">
											<input type="hidden" name="type" value="2">
											<div class="form-group">
												<input type="text" name="id" id="id" tabindex="1"
													class="form-control" placeholder="Username" value="">
											</div>
											<div class="form-group">
												<input type="password" name="pwd" id="pwd" tabindex="2"
													class="form-control" placeholder="Password">
											</div>
											
											<div class="form-group">
												<div class="row">
													<div class="col-sm-6 col-sm-offset-3">
														<input type="submit" name="login-submit" id="login-submit"
															tabindex="4" class="form-control btn btn-login"
															value="Log In">
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-lg-12">
														<div class="text-center">
															<a href="https://phpoll.com/recover" tabindex="5"
																class="forgot-password">Forgot Password?</a>
														</div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:if>
	</c:if>
	<c:if test="${sessionScope.ISessionId!=null}">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="panel panel-login">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-12">
									<a href="#" class="active" id="login-form-link">${sessionScope.ISessionId}님 (개인회원)</a>
								</div>
							</div>
							<hr>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<!-- 개인 회원 로그인  -->
									<form id="login-form" 
										role="form" style="display: block;">
										
										<div class="form-group">
										<div class="col-sm-6">
											<label>사진</label>
											<img  src="sanjin.jsp">
										</div>
										<div class="col-sm-6">
										<ul>
											<li> 등록 이력서    *건</li>
											<li> 스크랩 채용공고 *건</li>
											<li> 미확인 쪽지 </li>
										</ul>
										</div>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-sm-6 ">
													<input type="button" class="form-control btn btn-login" value="개인정보 수정" onclick="window.location='modifyView'" >
												</div>
												<div class="col-sm-6 ">
													<input type="button" class="form-control btn btn-login" value="로그아웃" onclick="window.location='../Cust/logout'" >
												</div>
											</div>
										</div>
										
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<c:if test="${sessionScope.CSessionId!=null}">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="panel panel-login">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-12">
									<a href="#" class="active" id="login-form-link">${sessionScope.CSessionId}님 (기업회원)</a>
								</div>
							</div>
							<hr>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<!-- 기업 회원 로그인  -->
									<form id="login-form" 
										role="form" style="display: block;">
										
										<div class="form-group">
										<div class="col-sm-6">
											<label>로고</label>
											<img  src="sanjin.jsp">
										</div>
										<div class="col-sm-6">
										<ul>
											<li> 게재 중 공고    *건</li>
											<li> 입사 지원자 *건</li>
											<li> 스크랩 인재 </li>
											<li> 미확인 쪽지 </li>
										</ul>
										</div>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-sm-6 ">
													<input type="button" class="form-control btn btn-login" value="채용공고 등록" onclick="window.location='registerForm'" >
												</div>
												<div class="col-sm-6 ">
													<input type="button" class="form-control btn btn-login" value="로그아웃" onclick="window.location='../Cust/logout'" >
												</div>
											</div>
										</div>
										
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	
<!-- ---------------------------------- 로그인 화면  종료------------------------------------- -->	
</body>
</html>