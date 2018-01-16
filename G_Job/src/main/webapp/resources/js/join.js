var msg_name="이름을 입력하세요.";
var msg_id="아이디를 입력하세요.";
var msg_comfirmId="중복확인을 해주세요.";
var msg_pwd="비밀번호를 입력하세요.";
var msg_repwd="비밀번호를 한번 더 입력하세요.";
var msg_pwdChk="비밀번호가 다릅니다.";
var msg_pwdQs1="비밀번호 찾기 질문을 선택하세요.";
var msg_pwdQs2="비밀번호 찾기 답변을 입력하세요.";
var msg_birth="생년월일를 입력하세요.";
var msg_sex="성별을 선택하세요.";
var msg_email="이메일을 입력하세요.";
var msg_address="주소를 입력해주세요.";
var msg_mismatch = "죄송합니다. \n형식에 맞지 않아 다시 입력해 주세요.";
var msg_tel = "전화번호를 다시 입력해주세요.";

var msg = "";
var pattern = "";
/* 회원가입 필수 사항 입력 확인 */
function go_regist(ck){
	//이름
	if(!document.regist_form.name.value){
		alert(msg_name);
		document.regist_form.name.focus();
		return false;
	}
	//중복체크
	if(document.regist_form.check_login.value != 1){
		alert(msg_comfirmId);
		document.regist_form.uid.focus();
		return false;
	}
	//비밀번호
	if(!document.regist_form.passwd.value){
		alert(msg_pwd);
		document.regist_form.passwd.focus();
		return false;
	}
	//비밀번호 형식이 맞지 않을때
	pattern = /[A-Za-z0-9+]{6,16}$/;
	msg = (pattern.test(document.regist_form.passwd.value))? "":"죄송합니다. \n영어 대문자/소문자 ,숫자를 각각 1번 이상 6-12자를 입력하셔야 합니다.";
	if(msg){
		alert(msg);
		document.regist_form.passwd.value="";
		document.regist_form.passwd.focus();
		return false;
	}
	//비밀번호 확인시 서로 다를경우
	if(document.regist_form.passwd.value != document.regist_form.passwdre.value){
		alert(msg_repwd);
		document.regist_form.passwdre.value="";
		document.regist_form.passwdre.focus();
		return false;
	}
	//비번찾기 질문선택
	if(!document.regist_form.password_que.value){
		alert(msg_pwdQs1);
		document.regist_form.password_que.focus();
		return false;
	}
	//비밀번호 찾기 답변
	if(!document.regist_form.password_chk.value){
		alert(msg_pwdQs2);
		document.regist_form.password_chk.focus();
		return false;
	}
	//생년 월일 비었을때..
	if(!document.regist_form.birth_year.value 
			|| !document.regist_form.birth_month.value
			|| !document.regist_form.birth_day.value){
		alert(msg_birth);
		if(!document.regist_form.birth_year.value){
			document.regist_form.birth_year.focus();
		}else if(!document.regist_form.birth_month.value){
			document.regist_form.birth_month.focus();
		}else{
			document.regist_form.birth_day.focus();
		}		
		return false;	
	}
	//생년월일 형식에 맞지 않을때
	pattern = /[0-9]{1,4}$/;
	if(!pattern.test(document.regist_form.birth_year.value)){
		alert(msg_mismatch);
		document.regist_form.birth_year.value = "";
		document.regist_form.birth_year.focus();
		return false;
	}
	pattern = /[0-9]{1,2}$/;
	if(!pattern.test(document.regist_form.birth_month.value)){
		alert(msg_mismatch);
		document.regist_form.birth_month.value = "";
		document.regist_form.birth_month.focus();
		return false;
	}
	if(!pattern.test(document.regist_form.birth_day.value)){
		alert(msg_mismatch);
		document.regist_form.birth_day.value = "";
		document.regist_form.birth_day.focus();
		return false;
	}
	//성별
	var j =0;
	for(var i=0; i<document.regist_form.sex.length; i++){
		if(document.regist_form.sex[i].checked == true){
			j = 1;	
			break;
		}
	}
	if(j != 1){
		alert(msg_sex);
		document.regist_form.sex[0].focus();
		return false;
	}
	//이메일
	if(!document.regist_form.email.value || !document.regist_form.email_tail.value){
		alert(msg_email);
		document.regist_form.email.focus();
		return false;
	}
	//휴대폰
	pattern = /[0-9]{3}$/;
	if(!document.regist_form.hphone1.value 
			|| !pattern.test(document.regist_form.hphone1.value)){
		alert(msg_tel);
		document.regist_form.hphone1.value="";
		document.regist_form.hphone1.focus();
		return false;
	}
	pattern = /[0-9]{3,4}$/;
	if(!document.regist_form.hphone2.value 
			|| !pattern.test(document.regist_form.hphone2.value)){
		alert(msg_tel);
		document.regist_form.hphone1.value="";
		document.regist_form.hphone1.focus();
		return false;
	}
	pattern = /[0-9]{4}$/;
	if(!document.regist_form.hphone3.value 
			|| !pattern.test(document.regist_form.hphone3.value)){
		alert(msg_tel);
		document.regist_form.hphone1.value="";
		document.regist_form.hphone1.focus();
		return false;
	}
	//주소
	if(!document.regist_form.post1.value){
		alert(msg_address);
		document.regist_form.address1.focus();
		return false;
	}
}

// 아이디 중복체크
function check_login__(ck, i){	
	
	// 아이디 값이 없을때
	if(!document.regist_form.uid.value){
		alert(msg_id);
		document.regist_form.uid.focus();
		return false;
	}
	
	var msg = "";
	var pattern = /[a-zA-Z0-9_]{4,12}$/;
	msg = (pattern.test(document.regist_form.uid.value))?  "" : "죄송합니다. \n입력하신 아이디는 입력규칙에 어긋나므로 사용하실 수 없습니다.\n아이디는 4~12자의 영문 ,숫자 또는 영문+숫자조함만 사용할 수 있습니다.";
	
	// 아이디 값이 조건에 맞지 않을때
	if(msg){
		alert(msg);
		document.regist_form.uid.value="";
		document.regist_form.uid.focus();
		return false;
	}
	
	if(i == 1){	// 회원가입폼에서 중복확인 눌렀을때
		// 조건에 맞을때 중복확인 하러 새창 띄우기
		var url = "../Cust/confirmId?m_type="+ck+"&uid="+document.regist_form.uid.value;
		window.open(url,"confirm","menubar=no, width=500, height=205, top=300, left=500");
	}
	
}

//아이디 중복확인 페이지 포커스
function uidFocus__(){
	document.regist_form.uid.focus();
}

//메일 설정 하는 부분
var make_mail = function(val){
	if(!!val == true){
		//$('email_tail').style.display='none';
		$('email_tail').value = val;
	} else {
		//$('email_tail').style.display='';
		$('email_tail').value = '';
	}
}

// 중복확인된 아이디 부모 페이지로 이동
function setCustId(id){
	opener.document.regist_form.uid.value = id;
	opener.document.regist_form.check_login.value = 1; // 중복확인 체크 여부 확인
	self.close();
}

//개인회원 우편번호,주소 찾기
function searchPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('post').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('address1').value = fullRoadAddr;

            document.getElementById('address2').focus();
        }
    }).open();   
}
//기업 주소 찾기
function biz_searchPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('biz_post').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('biz_address1').value = fullRoadAddr;

            document.getElementById('biz_address2').focus();
        }
    }).open();   
}