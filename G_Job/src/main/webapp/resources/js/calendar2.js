//달력 만드는 코드 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//현재 달력으로 보여지는 년/월 저장 
varCurYYYYMM=''; 

//달력의 XY좌표값 저장 
varCurTop=0; 
varCurLeft=0; 

//매개변수로 전달된 콤보박스 컨트롤명 
var gvarControlName=''; 
var gvarYearControl=''; 
var gvarMonthControl=''; 
var gvarDayControl=''; 
var gvarminung=''; 

///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//오늘 날짜에 대한 달력 만들기 
function setCalToday(minung,varControlName, varYearControl,varMonthControl,varDayControl,varLeft, varTop ) { 
	minung= eval("'document.all."+ minung+"'");
	//alert(minung);
// standard time attributes 
//월은 -1하여야 함 
var now = new Date(); 
var year = now.getFullYear(); 
var month = now.getMonth(); 
var monthName = getMonthName(month); 
var date = now.getDate();//Today 
now = null; 
// create instance of first day of month, and extract the day on which it occurs 
var firstDayInstance = new Date(year, month, 1); 
var firstDay = firstDayInstance.getDay(); 
firstDayInstance = null; 
// number of days in current month 
var days = getDays(month, year); 
// call function to draw calendar 


//컨트롤명 저장 
gvarminung=minung; 
gvarControlName=varControlName; 
gvarYearControl=varYearControl; 
gvarMonthControl=varMonthControl; 
gvarDayControl=varDayControl; 

//년월저장 
if(month<10) 
varCurYYYYMM=year+'0'+month; 
else 
varCurYYYYMM=year+''+month; 

//위치값 저장 
varCurX=varLeft; 
varCurY=varTop; 

drawCal(gvarminung,firstDay + 1, days, date, monthName,month, year, varControlName, varYearControl,varMonthControl,varDayControl,varLeft, varTop, 'setCalToday'); 
} 


///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//원하는 날짜에 대한 달력 만들기 
function setCal(gvarminung,varControlName, varYearControl,varMonthControl,varDayControl,varDateYYYYMM,varLeft, varTop ) { 
//컨트롤명 저장 
gvarControlName=varControlName; 
gvarYearControl=varYearControl; 
gvarMonthControl=varMonthControl; 
gvarDayControl=varDayControl; 

//년월저장 
varCurYYYYMM = varDateYYYYMM; 

//위치값 저장 
varCurX=varLeft; 
varCurY=varTop; 

// standard time attributes 
//월은 -1하여야 함 
var now = new Date(parseInt(varDateYYYYMM.substring(0,4)), varDateYYYYMM.substring(4,6)-1, 33) ; //33:임의 
var year = varDateYYYYMM.substring(0,4); 
//var year = now.getYear(); 
var month = now.getMonth(); 
var monthName = getMonthName(month); 
var date = now.getDate(); //Today 
now = null; 
// create instance of first day of month, and extract the day on which it occurs 
var firstDayInstance = new Date(year, month, 1); 
var firstDay = firstDayInstance.getDay(); 
firstDayInstance = null; 
// number of days in current month 
var days = getDays(month, year); 
// call function to draw calendar 

drawCal(gvarminung,firstDay + 1, days, date, monthName,month, year, varControlName, varYearControl,varMonthControl,varDayControl,varLeft, varTop,'setCal'); 
} 


///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//윤년여부 체크 
function leapYear(year) { 
if (year % 4 == 0) 
return true; // 윤년 
else 
return false ; 
} 

///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//월별 일수를 가져옴 
function getDays(month, year) { 
// create array to hold number of days in each month 
var ar = new Array(12) 

ar[0] = 31 // January 
ar[1] = (leapYear(year)) ? 29 : 28 // February 
ar[2] = 31 // March 
ar[3] = 30 // April 
ar[4] = 31 // May 
ar[5] = 30 // June 
ar[6] = 31 // July 
ar[7] = 31 // August 
ar[8] = 30 // September 
ar[9] = 31 // October 
ar[10] = 30 // November 
ar[11] = 31 // December 

// return number of days in the specified month (parameter) 
return ar[month] 
} 

///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//한글명 월을 가져옴 
function getMonthName(month) { 
// create array to hold name of each month 
var ar = new Array(12) 

ar[0] = "1월" 
ar[1] = "2월" 
ar[2] = "3월" 
ar[3] = "4월" 
ar[4] = "5월" 
ar[5] = "6월" 
ar[6] = "7월" 
ar[7] = "8월" 
ar[8] = "9월" 
ar[9] = "10월" 
ar[10] = "11월" 
ar[11] = "12월" 
// return name of specified month (parameter) 
return ar[month] 
} 

///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//실제 달력을 만드는 HTML코드 생성 
function drawCal(gvarminung,firstDay, lastDate, date, monthName,month,year, varControlName, varYearControl,varMonthControl,varDayControl,varLeft, varTop , varProc) { 
// constant table settings 
var headerHeight = 20 // height of the table's header cell 
var border = 0 // 3D height of table's border 
var cellspacing = 1 // width of table's border 
var cellpadding = 0 // width of table's border 
var bgcolor = "#ffffff"

var headerColor = "midnightblue" // color of table's header 
var headerSize = "2" // size of tables header font 
var colWidth = 15 // width of columns in table 
var dayCellHeight = 15 // height of cells containing days of the week 
var dayColor = "blue" // color of font representing week days 
var cellHeight = 15 // height of cells representing dates in the calendar 
var todayColor = "red" // color specifying today's date in the calendar 
var dayColor = "#000066" // color specifying today's date in the calendar 
var timeColor = "purple" // color of font representing current time 
// create basic table structure 
var text = "" // initialize accumulative variable to empty string 
var strDay 
month = month+1 
if(month<10){ 
month = '0' + month 
} 
//text += '<CENTER>' 


text += '	<div style="padding:5px; width:230px;background-color:#f7f7f7;" align="center">			'
text += '	<table cellspacing="1" width="100%" cellpadding="0" bgcolor="#ffffff" style="border:1px solid #cdcdcd;">			'
text += '		<tr>'
text += '			<td colspan="7" style="border-bottom:1px #cdcdcd solid">			'
text += '				<table border="0" cellspacing="0" cellpadding="0" align="center">			'
text += '					<tr height="25">			'
text += '						<td><a href="#" onclick="ChangeCal(\'yprev\')"><img src="/images/common/arrow_g_03.gif"></a></td>			'
text += '						<td><a href="#" onclick="ChangeCal(\'prev\')"><img src="/images/common/arrow_g_05.gif" hspace="5"></a></td>			'
text += '						<td align="center" style="font-size:13px; color:#4d4d4d"><b class=num>'
text += year+ ' . ' + month 
text += '</b></td>			'
text += '						<td><a href="#" onclick="ChangeCal(\'next\')"><img src="/images/common/arrow_g_07.gif" hspace="5"></a></td>			'
text += '						<td><a href="#" onclick="ChangeCal(\'ynext\')"><img src="/images/common/arrow_g_09.gif"></a></td>			'
text += '					</tr>			'
text += '				</table>			'
text += '			</td>'
text += '		</tr>	'		
text += '		<tr>'
text += '			<td colspan="7" style="border-bottom:2px #f7f7f7 solid"><img src="/images/common/b.gif" height="1"></td>'
text += '		</tr>'







// variables to hold constant settings 
var openCol = '<td align="center" width="30">' 
var closeCol = '</td>' 



// create array of abbreviated day names 
var weekDay = new Array(7) 
weekDay[0] = "<font class='red num11'>sun</font>"
weekDay[1] = "<font class='bk num11'>mon</font>" 
weekDay[2] = "<font class='bk num11'>tue</font>" 
weekDay[3] = "<font class='bk num11'>wed</font>" 
weekDay[4] = "<font class='bk num11'>thr</font>" 
weekDay[5] = "<font class='bk num11'>fri</font>" 
weekDay[6] = "<font class='bl num11'>sat</font>" 

// create first row of table to set column width and specify week day 
text += '<TR ALIGN="center" VALIGN="center">' 
for (var dayNum = 0; dayNum < 7; ++dayNum) { 
text += openCol + weekDay[dayNum] + closeCol 
} 
text += '</TR>' 

// declaration and initialization of two variables to help with tables 
var digit = 1 
var curCell = 1 
var lastDate = lastDate + 1 
var now = new Date(); 
var varYeara = now.getYear(); 
var varMontha = now.getMonth(); 
var varDaya = now.getDate(); 
var monthNamea = getMonthName(varMontha); 
if(varMontha<10){ 
	monthNamea='0'+monthNamea; 
}

for (var row = 1; row <= Math.ceil((lastDate + firstDay - 1) / 7); ++row) { 
text += '<TR ALIGN="center" VALIGN="center" bgcolor="#fffffF">' 
for (var col = 1; col <= 7; ++col) { 
if (col==7){ 
dayColor = "#366cb3"; 
}else if (col==1) {
dayColor = "#c80227"; 
}else {
dayColor = "#000000"; 
}
if (digit > lastDate) 
//alert(lastDate); 
break 

if(digit<10) 
strDay = '0'+digit 
else 
strDay = digit 

if (curCell < firstDay || digit == lastDate) { 
text += '<TD>&nbsp;</TD>'; 
curCell++ 
} else {	
if (digit == varDaya && (month+'월') == monthNamea && year == varYeara ) { // 오늘날짜이면 색깔바꿈 
text += '<TD HEIGHT=' + cellHeight + '>' 
text += '<FONT class="num11 bk">' 
text += ' ' + digit 
text += '</FONT>'
text += '<div style="position:relative;"><div style="position:absolute; z-index:1; top: -15px; left:-13px;"><a href=\'javascript:SetCboControl("'+year+"-"+month+"-"+strDay+'","'+gvarminung+'")\'><img src="/images/common/check.gif" width="25" height="18"></div></div></a>' 
text += '</TD>' 
} else{ 
text += '<TD HEIGHT=' + cellHeight + '>' 
text += '<a href=\'javascript:SetCboControl("'+year+"-"+month+"-"+strDay+'","'+gvarminung+'")\'>' 
text += '<FONT COLOR="' + dayColor + '" class="num11">' 
text += ' ' + digit 
text += '</FONT></a></TD>' 
} 
digit++ 
} 
} 
text += '</TR>' 
} 

text += '<tr>'
text += '<td colspan="7" align="right" style="cursor:hand;" class="fon11"><a href="#" onclick="ChangeCal(\'today\')"><b class="red num" style=font-size:10px>T</b><font class=bk>오늘</font></a> &nbsp; <a href="#" onclick="hdivCalender.style.visibility=\'hidden\'"><b class="red num" style=font-size:10px>X</b><font class=bk>창닫기</font></a> </td>					'
text += '		</tr>'




// close all basic table tags 
text += '</TABLE>' 
//text += '</CENTER>' 

// print accumulative HTML string 
var conDiv=eval(varControlName); 

conDiv.innerHTML=text; 
conDiv.style.top=varTop; 
conDiv.style.left= varLeft; 
conDiv.style.visibility='visible'; 


//document.write(text); 

} 

///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//날짜를 클릭했을때 해당 년월일을 콤보박스에 셋팅한다. 
function SetCboControl(varDD,gvarminung){ 
var conDiv = eval(gvarControlName); 
var conminung = eval(gvarminung); 
conminung.value = varDD; 
conDiv.style.visibility='hidden'; 

} 

///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//월 변경버튼 클릭시 
function ChangeCal(varType){ 

var varYear=varCurYYYYMM.substring(0,4); 
var varMonth=varCurYYYYMM.substring(4,6); 


if(varType=='prev'){ 
varMonth--; 
if(varMonth<0 ){ 

varYear--; 
varMonth='11'; 
} 
} 
else if (varType=='today') {
var now = new Date(); 
varYear=now.getYear(); 
varMonth=now.getMonth(); 
}
else if (varType=='next'){ 
varMonth++; 
if(varMonth==12){ 
varYear++; 
varMonth='0'; 
} 
} 
else if (varType=='yprev') 
varYear--; 

else 
varYear++; 

//자릿수조정 
if(varMonth<10) 
varCurYYYYMM=varYear+'0'+varMonth; 
else 
varCurYYYYMM=varYear+''+varMonth; 

//alert(varCurYYYYMM); 
setCal(gvarminung,gvarControlName,gvarYearControl,gvarMonthControl,gvarDayControl,varCurYYYYMM, varCurX, varCurY) 

} 
//달력 끝 