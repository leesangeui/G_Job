<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<script type="text/javascript" src="http://secure.nuguya.com/nuguya/nice.nuguya.oivs.crypto.js"></script>
<script type="text/javascript" src="http://secure.nuguya.com/nuguya/nice.nuguya.oivs.msg.js"></script>
<script type="text/javascript" src="http://secure.nuguya.com/nuguya/nice.nuguya.oivs.util.js"></script>
<script type="text/javascript">
/* 약관 동의 확인 하기 */
function agree_chk(num){

    var ok=0;
	var obj = document.getElementsByName("chk_agreement");
    for(i=0; i < obj.length; i++) {
        if(obj[i].type == "radio") {
		   if(obj[i].checked==true && obj[i].value=="yes") { 
           		ok=1; 
           		break;
		   }
		}
	}
	
	if(ok!=1){ 
		alert("이용약관과 개인정보보호정책에 동의하셔야 합니다.");		
		return false;
	} 	
	location.href= "../Cust/join?m_type="+num;
}
</script>
<table style="width:740px; border:none;" cellspacing="0" cellpadding="0">
	<tr><td align="right" style="vertical-align:bottom;" colspan="2">
		<!-- 이동경로  -->
		
		<!-- 이동경로 끝 -->
	</td></tr>
	<tr><td style="height:30px;" class="ln_b" colspan="2">
		<div>
			<img src="${allimage}bl/bul_05.gif" align="top">
		 	<img src="${allimage}tlt/mem_02.gif">
		</div>
	</td></tr>
	<tr>
		<td class="pt10" style="vertical-align: bottom;">
			<img src="${allimage}bl/bul_15.gif" style="padding-bottom:4px;" hspace="3">
			<img src="${allimage}tlt/tlt_mn08.gif">
		</td>
		<td class="pt15" align="right">
			<ul style="list-style:none; display:inline-flex;" >
				<li><img src="${allimage}login/step_r01.gif"></li>
				<li><img src="${allimage}bk/bul_08.gif" hspace="7" style="padding-top:8px;"></li>
				<li><img src="${allimage}login/step_02.gif"></li>
				<li><img src="${allimage}bk/bul_08.gif" hspace="7" style="padding-top:8px;"></li>
				<li><img src="${allimage}login/step_03.gif"></li>
			</ul>
		</td>
	</tr>
	<tr><td class="pt7" colspan="2">
		<table style="width:100%; border:none;" cellspacing="0" cellpadding="0">
			<tr>
				<td class=box01_01></td>
				<td class=box01_02></td>
				<td class=box01_03></td>
			</tr>
			<tr>
				<td class=box01_04></td>
				<td class="box01">
					<table style="width:100%; border:none; height:100%;" cellspacing="7" cellpadding="0">
					<colgroup><col width="17%"><col><col width="160px"></colgroup>
						<tr valign="top">
							<td class="pt5 b"><img src="${allimage}bl/bul_14.gif" style="padding:3px 0;" hspace="4" class=vt>이용약관</td>
							<td>
								<div class="brdtxt" style="width:100%; height:180px;">					
									<!-- 이용약관 -->
									${vo.site_basic_agreement}
								</div>
							</td>
							<td rowspan="3" class="dbg" align="center">
								<table style="margin:3px; height:365px; width:95%; border:none;" cellspacing="5" cellpadding="0" class="wbg">
									<tr>
										<td class="pL5 fon11" style="border-bottom:2px solid #dddddd;"><b>굿잡 이용약관</b>과<br><b>개인정보보호정책</b>에<br>동의하십니까?</td>
									</tr>
									<tr>
										<td class="ln_<?=netfu_site_basic_mgr::get_color_top()?>" height="1"></td>
									</tr>
									<tr>
										<td align="center" class="fon11 b" height="40">
											<input type="radio" class=chk  name='chk_agreement' value="yes" tabindex=1 checked>동의함 &nbsp;&nbsp;
											<input type="radio" class=chk name='chk_agreement' value="no"  tabindex=1>동의안함
										</td>
									</tr>
								 </table>
							 </td>
						 </tr>
						 <tr>
							 <td class="pt5 b" valign="top"><img src="${allimage}bl/bul_14.gif" style="padding:3px 0;" hspace="4" class=vt>개인정보보호정책</td>
							 <td valign="bottom">
								<div class="brdtxt" style="width:100%; height:180px;">
									<!-- 개인정보 보호방침 -->
									${vo.site_basic_privacy}
								</div>
							 </td>
						 </tr>
					 </table>
				</td>
				<td class=box01_05></td>
			</tr>
			<tr>
				<td class=box01_06></td>
				<td class=box01_07></td>
				<td class=box01_08></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td colspan="2" class="pt15 pb20" align="center">
			<a href="#" onclick="agree_chk(${m_type});"><img src="${allimage}btn/ok.gif"></a>&nbsp;
			<a href="../Cust/main"><img src="${allimage}btn/cancel.gif"></a>
		</td>
	</tr>
</table>