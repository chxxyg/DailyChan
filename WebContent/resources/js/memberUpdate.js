$(document).ready(function() {
	
	var email = $('#email').val();
	var isChkId = true;
	var cellno = $("#cell_no1").val() + $("#cell_no2").val() + $("#cell_no3").val();
	
	
	$("#m_name").focusout(function(){
		var inputVal = $("#m_name").val();
		var regExp = /^[가-힣a-zA-Z]+$/;
		if(inputVal == "" && inputVal.length < 2){
			$('span[name=mbr_msg]').show();
			$('span[name=mbr_msg]').text("이름을 입력해 주세요");
			isChkId = false;
		} if(!regExp.test(inputVal)) {
			$('span[name=mbr_msg]').show();
			$('span[name=mbr_msg]').text("이름은 한글, 영문 만 가능합니다.");
    		isChkId = false;
		} 
		else{
			$('span[name=mbr_msg]').hide();
		}
	});
	
	
	
	
	$("#m_pw").focusout(function(){
		var inputVal = $("#m_pw").val();
		var num = inputVal.search(/[0-9]/g);
		var eng = inputVal.search(/[a-z]/ig);
		var spe = inputVal.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		if(inputVal.length < 10 && inputVal.length > 0 ){
			$('span[name=pwd]').show();
			$('span[name=pwd]').text("비밀번호는 10자 이상이어야 합니다.");
			isChkId = false;
		}else if(((num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0)) && inputVal.length > 0 ){
			$('span[name=pwd]').show();
			$('span[name=pwd]').text("비밀번호는 10자리 이상 영어 대문자, 소문자, 숫자, 특수문자 중 2종류 조합으로 만들어 주세요.");
			isChkId = false;
		}else{
			$('span[name=pwd]').hide();
		}
	});
	
	
	
	$("#m_pw_re").focusout(function(){
		var m_pw = $("#m_pw").val();
		var inputVal = $("#m_pw_re").val();
		
		if(m_pw != "" && inputVal == ''){
			$('span[name=pwd_re]').show();
			$('span[name=pwd_re]').text("비밀번호를 재 입력 해 주세요.");
			isChkId = false;
		}else if (m_pw != inputVal) {
			$('span[name=pwd_re]').show();
			$('span[name=pwd_re]').text("비밀번호가 일치하지 않습니다.");
			isChkId = false;
		}else{
			$('span[name=pwd_re]').hide();
		}
	});
	
	//휴대전화 번호 입력란에 문자를 입력할 경우
	$("#cell_no2").focusout(function() {
		var inputVal = $("#cell_no2").val();
		if(!$.isNumeric(inputVal) && inputVal != ''){
			$('span[name=cell_no]').show();
			$('span[name=cell_no]').text("휴대전화 번호는 숫자만 가능합니다.");
			isChkId = false;
		}else{
			$('span[name=cell_no]').hide();
		}
		$(this).val(inputVal.replace(/[^0-9]/gi,''));
	});
	
	//휴대전화 번호 입력란에 문자를 입력할 경우
	$("#cell_no3").focusout(function() {
		var inputVal = $("#cell_no3").val();
		if(!$.isNumeric(inputVal) && inputVal != ''){
			$('span[name=cell_no]').show();
			$('span[name=cell_no]').text("휴대전화 번호는 숫자만 가능합니다.");
			isChkId = false;
		}else{
			$('span[name=cell_no]').hide();
		}
		$(this).val(inputVal.replace(/[^0-9]/gi,''));		
	});
	
	
	//이메일 확인
	$("#email").focusout(function() {
		var inputVal = $("#email").val();
		var regExp = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
		if(inputVal == ''){
			$('span[name=email]').show();
			$('span[name=email]').text("이메일을 입력해 주세요.");
			isChkId = false;
		}else if(!regExp.test(inputVal)){
			$('span[name=email]').show();
			$('span[name=email]').text("정상적인 이메일을 입력해주세요.");
			isChkId = false;
		}else{
			$('span[name=email]').hide();
		}
		
    	var params = {email : inputVal};
    	$.ajax({
			url: "emailCheck.me",
			type: "POST",
			data : params,
			success: function(rs) {
				if(rs == 1 && email != $('#email').val()) {
					
					$('span[name=email]').show();
					$('span[name=email]').text("이미 등록된 이메일 입니다.");
					isChkId = false;
					return false;
				}else{
					return true;
				}
			}
		});
	});
	
	
	$("#input_date").focusout(function() {
		var inputVal = $("#input_date").val();
		if(inputVal == '')
		{
			isChkId = false;
		}
	});
	
	//저장
	$("#saveBtn").click(function () {
		
		if($("#m_name").val() == ''){
			alert("입력되지 않은 회원정보가 있습니다. 확인 후 다시 시도해 주세요.");
			return;
		}
		if($("#cell_no1").val() == ''){
			alert("입력되지 않은 회원정보가 있습니다. 확인 후 다시 시도해 주세요.");
			return;
		}

		if($("#cell_no2").val() == ''){
			alert("입력되지 않은 회원정보가 있습니다. 확인 후 다시 시도해 주세요.");
			return;
		}
		
		if($("#cell_no3").val() == ''){
			alert("입력되지 않은 회원정보가 있습니다. 확인 후 다시 시도해 주세요.");
			return;
		}
		
		if($("#email").val() == ''){
			alert("입력되지 않은 회원정보가 있습니다. 확인 후 다시 시도해 주세요.");
			return;
		}
		
		isChkId = true;
		$("#m_name").focusout();
		if (!isChkId) {
			$("#m_name").focus();
			alert("이름을 확인해 주세요.");
			return;
		}
		
		$("#m_pw").focusout();
		if (!isChkId) {
			$("#m_pw").focus();
			alert("비밀번호를 확인해 주세요.");
			return;
		}

		$("#m_pw_re").focusout();
		if (!isChkId) {
			$("#m_pw_re").focus();
			alert("비밀번호를 확인해 주세요.");
			return;
		}
		
		$("#cell_no2").focusout();
		if (!isChkId) {
			$("#cell_no2").focus();
			alert("휴대폰번호를 확인해 주세요.");
			return;
		}		
		
		$("#cell_no3").focusout();
		if (!isChkId) {
			$("#cell_no3").focus();
			alert("휴대폰번호를 확인해 주세요.");
			return;
		}
		
		$("#email").focusout();
		if (!isChkId) {
			$("#email").focus();
			alert("이메일을 확인해 주세요.");
			return;
		}
		// 생년월일  확인
		$("#input_date").focusout();
		if (!isChkId) {
			$("#input_date").focus();
			alert("생년월일을 확인해 주세요.");
			return;
		}
		
		if(!isChkId) {
			alert("입력된 회원 정보 중 정상적이지 않은 정보가 있습니다. 확인 후 다시 시도해 주세요.");
			return;
		}
		
//		$.ajax({
//			url: "/mypage/updateMemModify.action",
//			type: "POST",
//			dataType: "text",
//			data: $('#memberFrom').serialize(),
//			success: function(data){
//				data = JSON.parse(data);
//				alert(data.result_msg);
//				if(data.result_flag == "true"){
//					overpass.logout();
//					window.location.reload();
//					return;
//				}
//					
//				if (data.result_code == "S") {
//					overpass.mypage.goOrderList();
//				}
//			},
//			error: function( e ){
//				if ( e.error_message !=null && e.error_message != ""){
//					alert(e.error_message);
//				}else{
//					alert("오류가 발생하였습니다.");
//				}
//			}
//		});
		
	});
});
