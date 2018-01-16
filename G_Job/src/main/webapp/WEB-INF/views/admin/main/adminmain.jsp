<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/admin_top.jsp" %>


<!-- ----------------------------------------------탑 섹션 시작--------------------------------------------------------- -->
<!-- ----------------------------------------------로그인 화면 시작----------------------------------------------------- -->
	<c:if test="${sessionScope.ASessionId==null}">
		
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="panel panel-login">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-12">
										<a href="#" class="active" id="login-form-link">관리자 로그인</a>
									</div>
									
								</div>
								<hr>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<!-- 개인 회원 로그인  -->
										<form id="login-form" action="Amain" method="post"
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
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:if>
	
	<c:if test="${sessionScope.ASessionId!=null}">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="panel panel-login">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-12">
									<a href="#" class="active" id="login-form-link">${sessionScope.ASessionId}님 (관리자)</a>
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
											<li>공지사항 등록</li>
											<li></li>
										
										</div>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-sm-6 ">
													<input type="button" class="form-control btn btn-login" value="관리자 페이지 이동" onclick="window.location=''" >
												</div>
												<div class="col-sm-6 ">
													<input type="button" class="form-control btn btn-login" value="로그아웃" onclick="window.location='Alogout'" >
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
<!-- ----------------------------------------------로그인 화면 시작----------------------------------------------------- -->
<%@ include file="../../include/admin_botton.jsp" %>