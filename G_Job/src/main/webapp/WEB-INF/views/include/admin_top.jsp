<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../setting.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${style}admin_style.css">
<link rel="stylesheet" type="text/css" href="${style}box.css">
<link rel="stylesheet" type="text/css" href="${style}color.css">
<link rel="stylesheet" type="text/css" href="${style}admin_style2.css">

<script src='${project}easy_editor/easyEditor.js'></script>

<link rel="stylesheet" href="/pro/resources/css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자</title>
<script src="/pro/resources/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
function toggle_top_View(target){
    var sTarget = target.href.split("#");
	//alert(aTarget);
    var aTarget = document.getElementById(sTarget[sTarget.length-1]);

    if(aTarget.style.display == "none"){
		admin_top_view1.style.display = "none";
		admin_top_view2.style.display = "none";
		admin_top_view3.style.display = "none";
		admin_top_view4.style.display = "none";
		admin_top_view5.style.display = "none";
		//admin_top_view6.style.display = "none";
		admin_top_view7.style.display = "none";
		admin_top_view8.style.display = "none";
		admin_top_view9.style.display = "none";
		aTarget.style.display = "block";
	}else{
		//aTarget.style.display = "none" ;
	}
}
function change_img(id,src)
{
eval(id+'.filters.blendTrans.stop();');
eval(id+'.filters.blendTrans.Apply();');
eval(id+'.src="'+src+'";');
eval(id+'.filters.blendTrans.Play();');
}
Event.observe(window, 'load', function(){
		admin_top_view1.style.display = "none";
		admin_top_view2.style.display = "none";
		admin_top_view3.style.display = "none";
		admin_top_view4.style.display = "none";
		admin_top_view5.style.display = "none";
		admin_top_view7.style.display = "none";
		admin_top_view8.style.display = "none";
		admin_top_view9.style.display = "none";
		if("s_environment"=="job"){
			admin_top_view1.style.display = "block";
			change_img('top1','${image}admtmn_r01.gif');
		}else if("s_environment"=="member"){
			admin_top_view2.style.display = "block";
			change_img('top2','${image}admtmn_r02.gif');
		}else if("s_environment"=="payment"){
			admin_top_view3.style.display = "block";
			change_img('top3','${image}admtmn_r03.gif');
		}else if("s_environment"=="design"){	
			admin_top_view4.style.display = "block";
			change_img('top4','${image}admtmn_r04.gif');
		}else if("s_environment"=="s_environment"){	
			admin_top_view5.style.display = "block";
			change_img('top5','${image}admtmn_r05.gif');
		}else if("s_environment"=="j_environment"){	
			admin_top_view5.style.display = "block";
			change_img('top5','${image}admtmn_r05.gif');
		}else if("s_environment"=="others"){	
			admin_top_view7.style.display = "block";
			change_img('top6','${image}admtmn_r06.gif');
		}else if("s_environment"=="board"){	
			admin_top_view8.style.display = "block";
			change_img('top7','${image}admtmn_r07.gif');
		}else if("s_environment"=="notice"){	
			admin_top_view8.style.display = "block";
			change_img('top7','${image}admtmn_r07.gif');
		}else if("s_environment"=="statistics"){	
			admin_top_view9.style.display = "block";
			change_img('top8','${image}admtmn_r08.gif');
		}

});
</script>
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
.title_div___{
	margin:0px 0px 0px 0px;
}
</style>
</head>
<body>
	<!-- ----------------------------------------------탑 섹션 시작--------------------------------------------------------- -->
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="center">
				<table width="900" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><b><a href="/nad/main/index"><img src="${image}admt_adm.gif" width="153" height="50"></a></b></td>
						<td align="right"><a href="/nad/member/sms_send" class="num11 b"><img src="${allimage}basic/bul_19.gif" align="absmiddle" hspace="4">SMS</a>&nbsp;&nbsp;<a href="/nad/others/manual" class="fon11 b"><img src="${allimage}basic/bul_19.gif" align="absmiddle" hspace="4"><font class="org">매뉴얼</font></a><img src="${allimage}common/b.gif" hspace="25"><a href="/nad/main/" class="fon11 none"><img src="${allimage}basic/bul_19.gif" align="absmiddle" hspace="4">처음으로</a>&nbsp;&nbsp;<a href="/index" target="_blank" class="fon11 none b"><imgsrc="${allimage}basic/bul_19.gif" align="absmiddle" hspace="4">MY SITE</a>&nbsp;&nbsp;<a href="/pro/Alogout" class="fon11 none"><img src="${allimage}basic/bul_19.gif" align="absmiddle" hspace="4">접속종료</a></td>
					</tr>
				</table>

			</td>
		</tr>
		<tr>
			<td align="center" background="${image}topmn_bg.gif">
				<table width="900" border="0" cellspacing="0" cellpadding="0">
					<tr align="center">
						<td align="center"><a href="#admin_top_view1" onMouseOver="toggle_top_View(this);change_img('top1','${image}admtmn_r01.gif')" onMouseOut="change_img('top1','${image}admtmn_01.gif')" onClick="location.href='/nad/job/employ_list'"><img src="${image}admtmn_01.gif" name="top1" style="filter: blendTrans(duration = 0.3)"></a></td>
						<td align="center"><a href="#admin_top_view2" onMouseOver="toggle_top_View(this);change_img('top2','${image}admtmn_r02.gif')" onMouseOut="change_img('top2','${image}admtmn_02.gif')" onClick="location.href='/nad/member/total_list?type=indi'"><img src="${image}admtmn_02.gif" name="top2" style="filter: blendTrans(duration = 0.3)"></a></td>
						<td align="center"><a href="#admin_top_view3" onMouseOver="toggle_top_View(this);change_img('top3','${image}admtmn_r03.gif')" onMouseOut="change_img('top3','${image}admtmn_03.gif')" onClick="location.href='/nad/payment/pay_list'"><img src="${image}admtmn_03.gif" name="top3" style="filter: blendTrans(duration = 0.3)"></a></td>
						<td align="center"><a href="#admin_top_view4" onMouseOver="toggle_top_View(this);change_img('top4','${image}admtmn_r04.gif')" onMouseOut="change_img('top4','${image}admtmn_04.gif')" onClick="location.href='/nad/design/banner_list'"><img src="${image}admtmn_04.gif" name="top4" style="filter: blendTrans(duration = 0.3)"></a></td>
						<td align="center"><a href="#admin_top_view5" onMouseOver="toggle_top_View(this);change_img('top5','${image}admtmn_r05.gif')" onMouseOut="change_img('top5','${image}admtmn_05.gif')" onClick="location.href='/pro/admin/envSetting/admin_change'"><img src="${image}admtmn_05.gif" name="top5" style="filter: blendTrans(duration = 0.3)"></a></td>
						<!--	<td width="100" align="center"><a href="#admin_top_view6" onMouseover="toggle_top_View(this);" onMouseout="">솔루션<br>환경설정</a></td>-->
						<td align="center"><a href="#admin_top_view7" onMouseOver="toggle_top_View(this);change_img('top6','${image}admtmn_r06.gif')" onMouseOut="change_img('top6','${image}admtmn_06.gif')" onClick="location.href='/nad/others/call_list'"><img src="${image}admtmn_06.gif" name="top6" style="filter: blendTrans(duration = 0.3)"></a></td>
						<td align="center"><a href="#admin_top_view8" onMouseOver="toggle_top_View(this);change_img('top7','${image}admtmn_r07.gif')" onMouseOut="change_img('top7','${image}admtmn_07.gif')" onClick="javascript:location.href='/nad/board/board_list'"><img src="${image}admtmn_07.gif" name="top7" style="filter: blendTrans(duration = 0.3)"></a></td>
						<td align="center"><a href="#admin_top_view9" onMouseOver="toggle_top_View(this);change_img('top8','${image}admtmn_r08.gif')" onMouseOut="change_img('top8','${image}admtmn_08.gif')" onClick="location.href='/nad/statistics/log_main'"><img src="${image}admtmn_08.gif" name="top8" style="filter: blendTrans(duration = 0.3)"></a></td>
					</tr>
				</table>			</td>
		</tr>
		<tr>
			<td align="center" style="padding: 10 0;" class="lbg ln_b" height="31">
				<div style="width: 900">
					<div id="admin_top_view1" style="display: none;">
						<div style="position: relative; padding-bottom: 10; width: 900" align="center">
							<div style="position: absolute; text-align: left; left: 5;" class="List">
								<li class="end"><a href="/nad/job/employ_list" onMouseover="this.style.backgroundColor='#cccccc';" onMouseout="this.style.backgroundColor='';">채용공고관리</a></li>
								<li><a href="/nad/job/resume_list">이력서관리</a></li>
								<li><a href="/nad/job/company_join">입사지원관리</a></li>
								<li><a href="/nad/job/hdht_list">헤드헌팅 채용공고관리</a></li>
								<li><a href="/nad/job/hdht_join">헤드헌팅 입사지원현황</a></li>
								<li><a href="/nad/job/alba_list">알바 채용공고관리</a></li>
								<li><a href="/nad/job/resume_alba_list">알바이력서관리</a></li>
								<li><a href="/nad/job/scrap_list">스크랩관리</a></li>
								<li><a href="/nad/job/admin_input">관리자 등록관리</a></li>
							</div>
						</div>
					</div>

					<div id="admin_top_view2" style="display: none;">
						<div style="position: relative; padding-bottom: 10; width: 900" align="center">
							<div style="position: absolute; text-align: left; left: 117" class="List">
								<li class="end"><a href="/nad/member/total_list?type=indi" style="background-color: '';">개인 회원관리</a></li>
								<li><a href="/nad/member/job_list?type=job">기업 회원관리</a></li>
								<li><a href="/nad/member/hdht_list">서치펌 회원관리</a></li>
								<li><a href="/nad/member/hdht2_list">헤드헌터 회원관리</a></li>
								<li><a href="/nad/member/sms_send">회원SMS발송</a></li>
								<li><a href="/nad/member/mailing_send">회원메일링발송</a></li>
								<li><a href="/nad/member/withdraw_list">탈퇴 회원관리</a></li>
							</div>
						</div>
					</div>

					<div id="admin_top_view3" style="display: none;">
						<div style="position: relative; padding-bottom: 10; width: 900" align="center">
							<div style="position: absolute; text-align: left; left: 225;" class="List">
								<li class="end"><a href="/nad/payment/pay_list">결제현황관리</a></li>
								<li><a href="/nad/payment/pay_list?mode=use_bank">온라인입금관리</a></li>
								<li><a href="/nad/payment/money_list">서비스금액관리</a></li>
								<li><a href="/nad/payment/pg_list">결제환경 설정</a></li>
							</div>
						</div>
					</div>

					<div id="admin_top_view4" style="display: none;">
						<div style="position: relative; padding-bottom: 10">
							<div style="position: absolute; text-align: left; left: -100;" class="List">
								<li class="end"><a href="/nad/design/banner_list?code=banner3">배너관리</a></li>
								<li><a href="/nad/design/image_top">사이트디자인관리</a></li>
							</div>
						</div>
					</div>

					<div id="admin_top_view5" style="display: none;">
						<div style="position: relative; padding-bottom: 10">
							<div style="position: absolute; text-align: left; right: 15;" class="List">
								<li class="end"><a href="/pro/admin/envSetting/admin_change">아이디/비밀번호 설정</a></li>
								<li><a href="/pro/admin/envSetting/admin_list">부관리자설정</a></li>
								<li><a href="/pro/admin/envSetting/base_environment">사이트운영관리</a></li>
								<li><a href="/pro/admin/envSetting/config_list2?type=area">등록폼설정</a></li>
								<li><a href="/pro/admin/envSetting/config_num">페이지출력갯수</a></li>
							</div>
						</div>
					</div>

					<div id="admin_top_view7" style="display: none;">
						<div style="position: relative; padding-bottom: 10">
							<div style="position: absolute; text-align: left; right: 15;" class="List">
								<li class="end"><a href="/nad/others/call_list?type=1">고객센터관리</a></li>
								<li><a href="/nad/others/sms_list">문자상담관리</a></li>
								<li><a href="/nad/others/call_list?type=2">제휴문의관리</a></li>
								<li><a href="/nad/others/popup_list">팝업창관리</a></li>
								<li><a href="/nad/others/poll_list">설문조사관리</a></li>
								<li><a href="/nad/others/tax_list">세금계산서관리</a></li>
							</div>
						</div>
					</div>

					<div id="admin_top_view8" style="display: none;">
						<div style="position: relative; padding-bottom: 10">
							<div style="position: absolute; text-align: left; left: 240;" class="List">
								<li class="end"><a href="/nad/board/board_list">게시판관리</a></li>
								<li><a href="/nad/notice/list">공지사항 관리</a></li>
							</div>
						</div>
					</div>

					<div id="admin_top_view9" style="display: none;">
						<div style="position: relative; padding-bottom: 10">
							<div style="position: absolute; text-align: left; right: 0;" class="List">
								<li class="end"><a href="/nad/statistics/log_main">오늘 사이트통계</a></li>
								<li><a href="/nad/statistics/search_hit">인기검색어 관리</a></li>
								<li><a href="/nad/statistics/search_time">실시간검색어 관리</a></li>
								<li><a href="/nad/statistics/search_hot">Hot 검색어 관리</a></li>
							</div>
						</div>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td>