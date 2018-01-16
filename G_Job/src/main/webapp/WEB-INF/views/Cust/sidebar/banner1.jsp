<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="divMenu" style="width:85px; height:300px;position:absolute; left:0px;margin-left:+75px; top:0; margin-top:118px; z-index:1; visibility:visible;">
	<div align="center" class="mb5">
	<div style='margin-bottom:0px'>
		<a href='http://netfu.co.kr' target='_blank'><img src='${peg}netfu_77754_39830.gif' border=0 width=85 height=178></a>
	</div>
	</div>
	<div>  
		<img src="${allimage}bl/lright_01.gif"><br>
		<a href="/my/employ.html"><img src="${allimage}bl/lright_02.gif"></a><br>
		<a href="/my/resume.html"><img src="${allimage}bl/lright_03.gif"></a><br>
		<a href="/m_service/"><img src="${allimage}bl/lright_04.gif"></a><br>   
		<a href="/my/index.html"><img src="${allimage}bl/lright_05.gif"></a><br>
		<a href="#top"><img src="${allimage}bl/lright_06.gif"></a>
	</div>
</div>

<script type="text/javascript">
<!--
function moveRightEdge() {
    var yMenuFrom, yMenuTo, yOffset, timeoutNextCheck;
    yMenuFrom = parseInt(document.getElementById('divMenu').style.top,10);

    // Y축 위치 설정방법(상단으로부터 40픽셀을 의미)
    yMenuTo = document.body.scrollTop + 40;
    timeoutNextCheck = 500;
    if (yMenuFrom != yMenuTo) {
        yOffset = Math.ceil(Math.abs(yMenuTo - yMenuFrom) / 20);
        if (yMenuTo < yMenuFrom)
        yOffset = -yOffset;
        document.getElementById('divMenu').style.top = parseInt (document.getElementById('divMenu').style.top, 10) + yOffset;
        timeoutNextCheck = 10;
    }
    setTimeout ("moveRightEdge()", timeoutNextCheck);
}
function setRightX() {
    // X축 위치 설정방법 1(가운데 정렬의 경우에 적용가능, 화면의 중심에서부터 410(800/2+10)픽셀 떨어진 위치를 의미)
    document.getElementById('divMenu').style.left = document.body.clientWidth/2 + 800/2 + 10; 

    // X축 위치 설정방법 2(왼쪽 정렬의 경우에 적용가능, 800픽셀을 의미)
    // document.getElementById('divMenu').style.left = 800;
    moveRightEdge();
}
function setRightY() {
    document.getElementById('divMenu').style.top = document.body.scrollTop + 0;
    document.getElementById('divMenu').style.visibility = "visible";
    setRightX();
}
setRightY();
//-->
</script>
<script for="window" event="onresize">setRightX();</script>
</td></tr>
  <tr><td align="center"><script>
var divAdver_num = '';
var getPageX = function(el) 
	{ 
		return (!el||el==document.body) ? 0 : el.offsetLeft + getPageX(el.offsetParent); 
	}
	var getPageY = function(el) 
	{
		return (!el||el==document.body) ? 0 : el.offsetTop  + getPageY(el.offsetParent); 
	}
function img_View(num){
	if(num=="1"){
		document.getElementById('a').src="/images/main/btn_mn01.gif";
		document.getElementById('b').src="/images/main/btn_mn02.gif"; 
		document.getElementById('c').style.display="";
		document.getElementById('d').style.display="none";
		document.getElementById('search_form__').action="/employ/dsearch.html";
		document.getElementById('career').name="biz_career_rad";
	}else if(num=="2"){
		document.getElementById('a').src="/images/main/btn_mn_r01.gif";
		document.getElementById('b').src="/images/main/btn_mn_r02.gif";
		document.getElementById('c').style.display="none";
		document.getElementById('d').style.display="";
		document.getElementById('search_form__').action="/resume/dsearch.html";
		document.getElementById('career').name="inid_career2";
	}
	
}

function show_layer(no, i, el, d_name, i_name){ 
	if(divAdver_num) {
		if( document.getElementById("show_div"+divAdver_num)!= null && document.getElementById("show_div_p"+divAdver_num)!= null ){
			document.getElementById("show_div"+divAdver_num).style.display="none";
			document.getElementById("show_div_p"+divAdver_num).style.display="none";
		}
		else if( document.getElementById("show_div"+divAdver_num)!= null ){
			document.getElementById("show_div"+divAdver_num).style.display="none";
		}
		else if( document.getElementById("show_div_p"+divAdver_num)!= null ){
			document.getElementById("show_div_p"+divAdver_num).style.display="none";
		}
	}
	divAdver_num = ''+i+'';
	var xx = getPageX(el);
	var yy = (parseInt(screen.availWidth))/2;
	if(xx > yy) {
	    if(d_name=='show_div') {
		document.getElementById(d_name+divAdver_num).style.left = -430;
		document.getElementById(d_name+divAdver_num).style.top = 21;
		}else{
		document.getElementById(d_name+divAdver_num).style.left = -546;
		document.getElementById(d_name+divAdver_num).style.top = 15;
		}
	}else{
	    if(d_name=='show_div') {
		document.getElementById(d_name+divAdver_num).style.left = -30 ;
		document.getElementById(d_name+divAdver_num).style.top = 21;
		}else{
		document.getElementById(d_name+divAdver_num).style.left = -180 ;
		document.getElementById(d_name+divAdver_num).style.top = 15;
		}
	}	
	    document.getElementById(d_name+divAdver_num).style.display = "";
	    document.getElementById(i_name+divAdver_num).src = "./show_layer.html?no="+no; 
}

function show_layer_close(i) {
		document.getElementById("show_div"+divAdver_num).style.display="none";
		document.getElementById("show_div_p"+divAdver_num).style.display="none";
}
</script>