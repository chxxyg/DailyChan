var isAlert = true;
var isSendCert = true;  //인증번호전송여부
var isCertYn = true;    //인증여부
var isChkId = false;     //아이디중복체크여부
var isChkNum = false;    //폰번호중복여부
var isChkEmail = false;  //이메일중복여부

$(document).ready(function() {

	$("#btn_join_up").click(function() {
    	if(isValid()){
    		console.log(isValid());
    		$("#joinForm").submit();
    	}
    });
	
	
	$("#all_agree").click(function(){
		var b = $(this).is(":checked");
		$(".agreeChk").each(function(){
			$(this).prop("checked",b);
		});
	});
	
    $("#join_id").blur(function(){
    	var sVal = $(this).val();
   	
    	if(!fnValidId(false)) {
    		return ;
    	}
    	
    	var params = {userId : sVal};
    	$.ajax({
			url: "idCheck.me",
			type: "POST",
			data : params,
			success: function(rs) {
				if(rs == 1) {
					fnMsgShow($("#caution1"),"이미 사용중인 아이디 입니다.");
					isChkId = false;
					return false;
				}else{
					fnMsgClear($("#caution1"));
					isChkId = true;
					return true;
				}
			}
		});

    });
    
    fnValidId = function(isAlert){
    	var sVal = $("#join_id").val();
        
    	if(sVal.length <= 0) {
    		fnMsgShow($("#caution1"),"아이디를 입력해 주세요.");
    		if(isAlert) {
    			alert("아이디를 입력해 주세요.");
    		}
    		return false;
    	}
    	
    	if(sVal.length < 4) {
    		fnMsgShow($("#caution1"),"아이디는 4자, 20자 미만으로 입력해주세요.");
    		if(isAlert) {
    			alert("아이디는 4자, 20자 미만으로 입력해주세요.");
    		}
    		return false;
    	}
    	
    	if(sVal.length > 20) {
    		fnMsgShow($("#caution1"),"아이디는 20자 이하이어야 합니다.");
    		if(isAlert) {
    			alert("아이디는 20자 이하이어야 합니다.");
    		}
    		return false;
    	}
    	
    	fnMsgClear($("#caution1"));
    	return true;
    }
    
    $("#join_pw").blur(function(){
    	fnValidJoinPw(false);
    });
    
    fnValidJoinPw = function(isAlert){
    	var sVal = $("#join_pw").val();
    	
    	if(sVal.length <= 0) {
    		fnMsgShow($("#caution2"),"비밀번호를 입력해 주세요.");
    		if(isAlert) {
    			alert("비밀번호를 입력해 주세요.");
    		}
    		return false;
    	}
    	
    	if(sVal.length < 10) {
    		fnMsgShow($("#caution2"),"비밀번호는 10자 이상이어야 합니다.");
    		if(isAlert) {
    			alert("비밀번호는 10자 이상이어야 합니다.");
    		}
    		return false;
    	}
    	
    	 var num = sVal.search(/[0-9]/g);
    	 var eng = sVal.search(/[a-z]/ig);
    	 var spe = sVal.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    	if((num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ) {
		fnMsgShow($("#caution2"),"비밀번호는 10자리 이상 영어 대문자, 소문자, 숫자, 특수문자 중 2종류 조합으로 만들어 주세요.");
		if(isAlert) {
			alert("비밀번호는 10자리 이상 영어 대문자, 소문자, 숫자, 특수문자 중 2종류 조합으로 만들어 주세요.");
		}
		return false;
	}

    	
    	fnMsgClear($("#caution2"));
    	return true;
    }
    
    $("#join_pw").change(function(){
    	 $("#join_pw_re").val("");
    });
    
    
    $("#join_pw_re").blur(function(){
    	fnValidJoinPw(false);
    	fnValidJoinPwRe(false);
    });
    
    
    fnValidJoinPwRe = function(isAlert){
    	var sVal = $("#join_pw_re").val();
    	var sPwd = $("#join_pw").val();
    	if(sVal.length <= 0) {
    		fnMsgShow($("#caution2"),"비밀번호를 재 입력 해 주세요.");
    		if(isAlert) {
    			alert("비밀번호를 재 입력 해 주세요.");
    		}
    		return false;
    	}
    	
    	if(sVal != sPwd) {
    		fnMsgShow($("#caution2"),"입력하신 값이 비밀번호와 다릅니다.");
    		if(isAlert) {
    			alert("입력하신 값이 비밀번호와 다릅니다.");
    		}
    		return false; 
    	}
    	fnMsgClear($("#caution2"));
    	
    	return true;
    }
    
    
    $("#join_name").blur(function(){
    	
    	fnValidJoinName(false);
    });
    
    fnValidJoinName = function(isAlert){
    	var sVal = $("#join_name").val();
        
    	if(sVal.length <= 0) {
    		fnMsgShow($("#caution3"),"이름을 입력해 주세요.");
    		if(isAlert) {
    			alert("이름을 입력해 주세요.");
    		}
    		return;
    	}
    	
    	var regExp = /^[가-힣a-zA-Z]+$/;
    	if(!regExp.test(sVal))
		{
    		fnMsgShow($("#caution3"),"이름은 한글, 영문 만 가능합니다.");
    		if(isAlert) {
    			alert("이름은 한글, 영문 만 가능합니다.");
    		}
    		return;
		}
    	
    	
    	fnMsgClear($("#caution3"));
    	
    	return true;
    }
    
    
    $("#cell_no1").change(function(){
    	var cell_no = $("#cell_no1 :selected").val() +""+$("#cell_no2").val();
		$("#cell_no").val(cell_no);
    });
    
    
    $("#cell_no2").keyup(function(){
    	
    	var regExp = /^[0-9]{8,}$/;
    	if(!regExp.test($("#cell_no2").val())) {
    		fnMsgShow($("#caution4"),"휴대전화 번호는 숫자만 가능합니다.");
    		return;
    	}
    	
    	fnMsgClear($("#caution4"));
    	var cell_no = $("#cell_no1 :selected").val() +""+$("#cell_no2").val();
		$("#cell_no").val(cell_no);
    });
    
    
    $("#cell_no2").blur(function(){
    	
    
    	var cell_no1 = $("#cell_no1 :selected").val();
    	var cell_no2 = $("#cell_no2").val();
    	var sVal = cell_no1 + "" + cell_no2 + "";
    	
    	if(cell_no1 == "" || cell_no2 == "") {
    		fnMsgShow($("#caution4"),"휴대전화 번호를 입력해 주세요.");
    		return;
    	}
    	fnMsgClear($("#caution4"));
	   	var params = {cell_no : sVal};
     	$.ajax({
			url: "phoneCheck.me",
			type: "POST",
			data : params,
			success: function(rs) {
				if(rs == 1) {
					fnMsgShow($("#caution4"),"이미 개인 회원으로 등록된 번호입니다.");
					isChkNum = false;
					return false;
				}else{
			    	fnMsgClear($("#caution4"));
			    	$("#mbr_cert_info").val(sVal);
			    	isChkNum = true;
			    	return true;
				}
			}
		});  

    });
    
    
    
    
//    $("#email").focus(function(){
//     	if(!isCertYn) {
//    		fnMsgShow($("#caution5"),"본인인증을 해 주세요.");
//    		return;
//    	}
//    	fnMsgClear($("#caution5"));		
//    });
    
    $("#email").blur(function(){
    	var sVal = $(this).val();
    
    	fnValidEmail(false);
    	
		var params = {email : sVal};
 	    $.ajax({
 				url: "emailCheck.me",
 				type: "POST",
 				data : params,
 				success: function(rs) {
 					if(rs == 1) {
 						console.log(rs);
 						fnMsgShow($("#caution5"),"이미 등록된 이메일 입니다.");
 						isChkEmail = false;
 						return false;
 					}else{
 						fnMsgClear($("#caution5"));
 						isChkEmail = true;
 						return true;
 					}
 				}
 		}); 
    
    });
    
    fnValidEmail =  function(isAlert){
    	
    	var sVal = $("#email").val();
        
    	if(sVal.length <= 0) {
    		fnMsgShow($("#caution5"),"이메일을 입력해 주세요.");
    		if(isAlert) {
    			alert("이메일을 입력해 주세요.");
    		}
    		return false;
    	}
    	
    	
    	var regExp = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
    	if(!regExp.test(sVal)) {
    		fnMsgShow($("#caution5"),"정상적인 이메일을 입력해주세요.");
    		if(isAlert) {
    			alert("정상적인 이메일을 입력해주세요.");
    		}
    		return false;
    	}
    	
    	fnMsgClear($("#caution5"));
    	return true;
    }
    
    
    isValid = function (){
    	var sId 	= $("#join_id").val();
    	var	sPw 	= $("#join_pw").val();
    	var sRetype = $("#join_pw").val();
    	var sName 	= $("#join_name").val();
    	var sPhone	= $("#cell_no").val();
        var sEmail	= $("#email").val();
    	
    	if(!fnValidId(true) ) {
    		return false;
    	}
    	
        if(!isChkId) {
        	fnMsgShow($("#caution1"),"이미 사용중인 아이디 입니다.");
        	alert("이미 사용중인 아이디 입니다.");
        	return false;
        }

    	if(!fnValidJoinPw(true)){
    		return false;
    	}
    	
    	if(!fnValidJoinPwRe(true)){
    		return false;
    	}
    	
    	if(!fnValidJoinName(true)){
    		return false;
    	}

        
    	var cell_no1 = $("#cell_no1 :selected").val();
    	var cell_no2 = $("#cell_no2").val();
    	var cell_no3 = $("#cell_no3").val();
    	var cell_no = $("#cell_no1").val() + "" + $("#cell_no2").val() + "";

    	if(cell_no1 == "" || cell_no2 == "") {
    		fnMsgShow($("#caution4"),"휴대전화 번호를 입력해 주세요.");
    		alert("휴대전화 번호를 입력해 주세요.");
    		return false;
    	}
    	
    	if(!isChkNum) {
    		fnMsgShow($("#caution4"),"이미 등록된 휴대전화 번호입니다.");
    		alert("이미 등록된 휴대전화 번호입니다.");
    		return false;
    	}
    	 fnMsgClear($("#caution4"));		
    	
        if(!isCertYn) {
        	fnMsgShow($("#caution4"),"본인인증을 해 주세요.");
        	alert("본인인증을 해 주세요.");
        	return false;
        }
    	
        fnMsgClear($("#caution4"));		
    	
    	if(!fnValidEmail(true)){
    		return false;
    	}
    	
    	if(!isChkEmail) {
    		fnMsgShow($("#caution5"),"이미 등록된 이메일 입니다.");
    		alert("이미 등록된 이메일 입니다.");
    		
    		return false;
    	}
    	fnMsgClear($("#caution5"));		

    	var sChk ="";
    	$("input.validChk").each(function(){
    		if(!$(this).is(":checked")) {
    			sChk = $(this).attr("id");
    			return;
    		} 
    	}); 
    	
    	if(sChk != "") {
    		alert("전체 약관에 모두 동의해 주셔야 회원 가입이 됩니다.");
    		$("#"+sChk).focus();
    		return false;
    	}
    	
    	if(!$("#age_agree").is(":checked")) {
    		alert("14세 이상 회원만 가입이 가능합니다.");
    		$("#age_agree").focus();
    		return false;
    	}
    	
 
		return true;
    }
    
    fnMsgShow = function(o,m){
    	$(o).html(m).removeClass("ir").show();
    }
    
    fnMsgClear = function(o){
    	$(o).html("").hide();
    }
    
    //최초 포커스
    $("#join_id").focus();

});
