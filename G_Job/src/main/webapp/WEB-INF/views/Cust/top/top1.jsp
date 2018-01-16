<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<style type="text/css">
#logo01	{
			position:absolute;
			bottom:80px;
			width:255;
			left:35%;
		}
#mn01	{
			width:950px;
			height:91px;
			background:url("${allimage}bl/top01_19.gif") no-repeat;
			position:relative;
			text-align:left;
		}
#mn_bg01 {
			height:91px;
			background:url("${allimage}bl/top01_18.gif") repeat-x;
		 }
</style>
<script>
var sub_category = new SubCategory("job");

var check_form_top = function(){
	var obj = $("search_form______");
	if(validate(obj)){
		obj.submit();
	}
}
</script>
<div style="position:relative; z-index:100; width:950px;" align="center" id="topmn_bl">
<div id="my" style="position:absolute; top:21; right:110; display:none;" onMouseOver="OnOffTopMy('on');MM_swapImage('top1','','${allimage}/top/top_02.gif',0)" onMouseOut="OnOffTopMy('off');MM_swapImgRestore()">
<table style="border:none;" cellspacing="1" cellpadding="0" class="ln">
	<tr>
	<td class="bg_bl" align="left" style="padding:3; z-index:100;">
	  	<table style="border:none;" cellspacing="0" cellpadding="0">
	  	<tr>
	  	<td class="ln_box wbg" align="left" style="padding:5;z-index:100;">    
	    	<div style='border-bottom:1px solid #eeeeee;padding:4 3 0; height:18'><a href="/my/resume.html">이력서등록</a></div>
	  		<div style='border-bottom:1px solid #eeeeee;padding:4 3 0; height:18'><a href="/my/resume_list.html">이력서관리</a></div>
	  		<div style='border-bottom:1px solid #eeeeee;padding:4 3 0; height:18'><a href="/my/e_scrap.html">채용정보 스크랩</a></div>
	  		<div style='padding:4 3 0; height:18'><a href="/my/e_order.html">맞춤채용정보</a></div>
	    </td>
	    </tr>
	    </table>
  	</td>
  </tr>
  </table>
</div>
</div>

<div id=topmn_bl>
	<!-- 탑메뉴 -->
	<table width=950 border="0" cellspacing="0" cellpadding="0" align="center">
		<tr>
	    <td><div style='margin-bottom:0px'><a href='http://www.netfu.co.kr' target='_blank'><img src='${peg}netfu_76674_42438.jpg' border=0 width=154 ></a></div></td>  	
	    <td align="right" valign="top" style='padding:3 0 35 0' class="fon11">		
	        <a href="/member/login.html"><img src="${allimage}bl/top01_01.gif" class="vm mr2"></a>
	    <a href="/member/"><img src="${allimage}bl/top01_02.gif" class="vm mr2"></a> 
	    <img src="${allimage}common/gr_ln.gif" class="vm mr2">
	    <a href="/my/index.html" onMouseOver="OnOffTopMy('on'); MM_swapImage('top1','','${allimage}bl/top03_23.gif',0);" onMouseOut="OnOffTopMy('off'); MM_swapImgRestore();">
	    <img name="top1" class="vm ln_bl" src="${allimage}bl/bul_dn.gif"></a> <!-- 아래 내림버튼 -->       
	    <img src="${allimage}common/gr_ln.gif" class="vm mL2 mr2">
	    <a href="/etc/cscenter.html"><img src="${allimage}top/top_03.gif" class="vm mr2"></a> <!-- 고객센터 -->
	    <img src="${allimage}common/gr_ln.gif" class="vm mr2">
	    <a href="javascript:window.external.AddFavorite('http://hjob.netfu.co.kr', '넷퓨 구인구직 솔루션');"><img src="${allimage}top/top_04.gif" class="ln_bl vm"></a> <!-- 즐겨찾기 추가 -->
	    </td>
	  </tr>
	</table>

	<!-- 탑메뉴 -->

	<div id="mn_bg01" align=center>
	<div id="mn01">
	<div id="logo01" align="center">
		<a href="/"><img src='http://hjob.netfu.co.kr/peg/netfu_89655_12595.jpg'></a>
	</div>
		<table style="width:100%; border:none;" cellspacing="0" cellpadding="0">
		<tr>
		<td style="vertical-align:top; width:21%;">
			<table style="width:100%; border:none;" cellspacing="0" cellpadding="0">
				<tr>
				<td align="center"><img src="${allimage}bl/top01_04.gif"></td>
				</tr>
				<tr>
				<td align="center" style="vertical-align:middle; height:30px;">
		 			<div style="position:absolute; width:200px; height:20px; overflow:hidden; left:20; top:35;" onMouseOver="banner_1_mouseEvent=0" onMouseOut="banner_1_mouseEvent=1">
					<nobr style="position:relative;" id="banner_1">
						<table style="width:200px; height:1px; border:none;"  cellspacing="0" cellpadding="0" >
						<tr>
							<td height="1"></td>
						</tr>
						</table>
					</nobr>
					</div>
				</td>
				</tr>
			</table>
		</td>
		<td style="padding-top:23px; width:50%;">
			<table style="width:100%; border:0px;" cellspacing="7" cellpadding="0">
				<tr align="center">
				<td><a href="/employ/"><img src="${allimage}bl/top01_08.gif" class="png24"></a></td>
				<td><img src="${allimage}bl/top01_15.gif"></td>
				<td><a href="/resume/"><img src="${allimage}bl/top01_09.gif" class="png24"></a></td>
				<td><img src="${allimage}bl/top01_15.gif"></td>
				<td><a href="/m_service/"><img src="${allimage}bl/top01_13.gif" class="png24"></a></td>
				<td><img src="${allimage}bl/top01_15.gif"></td>
				<td><a href="/comu/"><img src="${allimage}bl/top01_14.gif" class="png24"></a></td>
				</tr>
			</table>
		</td>
		<td valign=top align=right width=25%>
			<table border="0" cellspacing="0" cellpadding="0">
			<tr>
			<td><a href="/my/resume.html"><img src="${allimage}bl/top01_05.gif"></a></td>		
			<td><img src="${allimage}bl/top01_07.gif" hspace=10></td>
			<td><a href="/my/employ.html"><img src="${allimage}bl/top01_06.gif"></a></td>
			</tr>
			</table>
		</td>
		</tr>
		</table>
		<table style="width:100%; border:0px;" cellspacing="0" cellpadding="0">
			<tr height=30px>
 			<td width=25%>
				<table style="width:100%; border:0px; height:100%;" cellspacing="0" cellpadding="0">
					<tr>
					<td style="width:100px;"><img src="${allimage}bl/bul_08.gif" class="vm"> <b>실시간검색어 :</b></td>
					<td>
						<div style="position:absolute; width:200px; height:17px; overflow:hidden; left:100px; top:67;" onMouseOver="banner_1_mouseEvent=0" onMouseOut="banner_1_mouseEvent=1">
							<nobr style="position:relative;" id="banner_2">
							<table style="border:0px;" cellspacing="0" cellpadding="0">
								<tr>
								<td><a href="/main/search.html?search_kind=&search_string=채용정보"><img src="${allimage}ic/g01_no_01.gif" class="f75 vm mb2"> 채용정보</a></td>
								</tr>
							</table>
							<table style="border:0px;" cellspacing="0" cellpadding="0">
							<tr>
								<td><a href="/main/search.html?search_kind=&search_string=신입사원"><img src="${allimage}ic/g01_no_02.gif" class="f75 vm mb2"> 신입사원</a></td>
							</tr>
							</table>
							<table style="border:0px;" cellspacing="0" cellpadding="0" >
							<tr>
								<td><a href="/main/search.html?search_kind=&search_string=마감"><img src="${allimage}ic/g01_no_03.gif" class="f75 vm mb2"> 마감</a></td>
							</tr>
							</table>
							<table border="0" cellspacing="0" cellpadding="0" >
							<tr>
								<td><a href="/main/search.html?search_kind=&search_string=아르바이트"><img src="${allimage}ic/g01_no_04.gif" class="f75 vm mb2"> 아르바이트</a></td>
							</tr>
							</table>
							<table border="0" cellspacing="0" cellpadding="0" >
							<tr>
								<td><a href="/main/search.html?search_kind=&search_string=디자이너"><img src="${allimage}ic/g01_no_05.gif" class="f75 vm mb2"> 디자이너</a></td>
							</tr>
							</table>
							<table border="0" cellspacing="0" cellpadding="0" >
							<tr>
								<td><a href="/main/search.html?search_kind=&search_string=알바"><img src="${allimage}ic/g01_no_06.gif" class="f75 vm mb2"> 알바</a></td>
							</tr>
							</table>
							<table border="0" cellspacing="0" cellpadding="0" >
							<tr>
								<td><a href="/main/search.html?search_kind=&search_string=채용"><img src="${allimage}ic/g01_no_07.gif" class="f75 vm mb2"> 채용</a></td>
							</tr>
							</table>
							<table border="0" cellspacing="0" cellpadding="0" >
							<tr>
								<td><a href="/main/search.html?search_kind=&search_string=인턴"><img src="${allimage}ic/g01_no_08.gif" class="f75 vm mb2"> 인턴</a></td>
							</tr>
							</table>
							<table border="0" cellspacing="0" cellpadding="0" >
							<tr>
								<td><a href="/main/search.html?search_kind=&search_string=라루체"><img src="${allimage}ic/g01_no_09.gif" class="f75 vm mb2"> 라루체</a></td>
							</tr>
							</table>
							<table border="0" cellspacing="0" cellpadding="0" >
							<tr>
								<td><a href="/main/search.html?search_kind=&search_string=급구채용"><img src="${allimage}ic/g01_no_10.gif" class="f75 vm mb2"> 급구채용</a></td>
							</tr>
							</table>
							</nobr>
						</div>
						
			<script type="text/javascript">
			/* banner_roll("banner_1",20, 3000, 20, 0); */
			banner_roll("banner_2",12, 4000, 20, 50);
			</script>				
					</td>
					</tr>
				</table>
  
  			<td width=47% align=center>
				<div style="width:420px; padding-left:40px; height:19px; border:0px solid blue; overflow:hidden; text-overflow:clip" align="left"><img src="${allimage}bl/top01_17.gif" class=vm> 
					<a href="/main/search.html?search_kind=&search_string=신입사원" class="fon11 bol"><font class="wht">신입사원</font></a>
					<a href="/main/search.html?search_kind=&search_string=아르바이트" class="fon11 bol"><font class="wht">아르바이트</font></a>
					<a href="/main/search.html?search_kind=&search_string=채용" class="fon11 bol"><font class="wht">채용</font></a>
					<a href="/main/search.html?search_kind=&search_string=현대 중공업" class="fon11 bol"><font class="wht">현대 중공업</font></a>
					<a href="/main/search.html?search_kind=&search_string=알바" class="fon11 bol"><font class="wht">알바</font></a>
					<a href="/main/search.html?search_kind=&search_string=인턴" class="fon11 bol"><font class="wht">인턴</font></a>
					<a href="/main/search.html?search_kind=&search_string=인턴사원" class="fon11 bol"><font class="wht">인턴사원</font></a>
  				</div>
  			</td>
  			<form name="search_form______" id="search_form______" method="get" action='/main/search.html'>
	  	    <td>
	  	   		 <input type="text" style="width:98%;height:20;"  name="search_string" align=absbottom required hname="검색어" class=tbl >
	  	    </td>
  			</form>
  			<td width=5%><a onClick="check_form_top();" style="cursor:pointer;"><img src="${allimage}bl/top01_16.gif" align=absmiddle></a></td>
		</tr>
		</table>
	</div>
	</div>
</div>