<!--
function limitBytes(obj) 
{	
	var bytesLength = 0;
	var validMsgLength = 0;
	var validBytesLength = 0;
	for ( i = 0; i < obj.value.length; i++ ) {
		var oneChar = obj.value.charAt(i);
		if (escape(oneChar).length > 4) {
			bytesLength += 2;
		} else if (oneChar != '\r') {		// %0D%0A
			bytesLength++;
		}
		if ( bytesLength <= 80 )	{
			validMsgLength = i + 1;
			validBytesLength = bytesLength;
		}
	}
	if (bytesLength > 80) {
		alert("80바이트 이상의 메세지는 전송하실 수 없습니다.");
		realValue = obj.value.substr(0, validMsgLength);
		obj.value = realValue;
		bytesVal = validBytesLength + "/80 byte";
	} else {
		bytesVal = bytesLength + "/80 byte";
	}
	//document.basicFrm.bytes.value = bytesVal;
	obj.focus();
}

function countBytes(obj) 
{	

	var bytesLength = 0;
	var validMsgLength = 0;
	var validBytesLength = 0;
	for (i = 0; i < obj.value.length; i++) {
		var oneChar = obj.value.charAt(i);
		if (escape(oneChar).length > 4) {
			bytesLength += 2;
		} else if (oneChar != '\r') {		// %0D%0A
			bytesLength++;
		}
		if ( bytesLength <= 80 )	{
			validMsgLength = i + 1;
			validBytesLength = bytesLength;
		}
	}
	bytesVal = bytesLength;
	//document.basicFrm.bytes.value = bytesVal;
	obj.focus();
}

// 특수문자 입력하기
function saveCurrentPos(obj) 
{
	if (obj.createTextRange) {
		obj.currentPos = document.selection.createRange().duplicate();
	}
}

function insertChar(obj, text) 
{
	var objTextArea = obj;
	if (objTextArea.createTextRange && objTextArea.currentPos) {
		var currentPos = objTextArea.currentPos;
		currentPos.text = currentPos.text.charAt(currentPos.text.length - 1) == ' ' ? text + ' ' : text;
	} else {
		objTextArea.value  = text;
	}
	limitBytes(obj);
}

//-->
