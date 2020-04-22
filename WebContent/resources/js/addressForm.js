var _reload = function(){
	location.href="/mypage/initAddressList.action";
}

var deleteAction = function(mbr_dlvp_seq){	
	if(!confirm("선택한 주소를 배송지 목록에서 삭제하시겠습니까?")){
		return;
	}
	
	p = {};
	if(mbr_dlvp_seq){
		p.mbr_dlvp_seq = mbr_dlvp_seq;
	}else{
		p = $('[name=mbr_dlvp_seq]:checked').serialize();	
	}
	
	$.ajax({
		url: "/mypage/deleteMyDlvp.action",
		type: "POST",
		dataType: "text",
		async:false,
		data: p,
		success: function(data){
			if(data=='S'){
				alert("배송지 목록에서 삭제 되었습니다.");
				_reload();
			}
		},
		error: function( e ){
			if ( e.error_message !=null && e.error_message != ""){
				alert(e.error_message);
			}else{
				alert("오류가 발생하였습니다.");
			}
		}
	});
}
var modiBaseYnAction = function(mbr_dlvp_seq){	
	if(!confirm("선택한 주소를 기본배송지로 설정하시겠습니까?")){
		return;
	}
	
	$.ajax({
		url: "/mypage/updateBaseMyDlvp.action",
		type: "POST",
		dataType: "text",
		async:false,
		data: {mbr_dlvp_seq : mbr_dlvp_seq},
		success: function(data){
			if(data=='S'){
				alert("기본 배송지로 설정되었습니다.");
				_reload();
			}
		},
		error: function( e ){
			if ( e.error_message !=null && e.error_message != ""){
				alert(e.error_message);
			}else{
				alert("오류가 발생하였습니다.");
			}
		}
	});
}
$(document).ready(function(){
	// 죄측 메뉴 하이라이트
	$("#selectAddress").css("color","rgb(247, 112, 46)");
	
	// 수정/등록 버튼 클릭 이벤트
	$('[name=modifyBtn]').click(function(){
		
		if($(this).attr("data-modify-yn") == "N") {
			if(2 >= 30) {
				alert("배송지 등록은 최대 30개 까지 등록 가능합니다. 사용하지 않은 배송지 삭제 후 다시 시도해 주세요.");
				return false;
			}
		}
		
		//event.preventDefault(); //기본 동작 취소 
		var params = "modify_yn=" + $(this).attr("data-modify-yn") + "&"
					+"mbr_dlvp_seq=" + $(this).attr("data-mbr_dlvp_seq");
		var callback = {
			dupCheck: function(dlvp) {
				return false;
			},
			complete: function(dlvp) {
				_reload();
			}
		}
		if ($.type(callback) == "function") {
			overpass.popup.callback = function(data) {
				callback(data);
			};				
		} else {
			overpass.popup.callback = callback;
		};		
		overpass.popup.open({id: "_MODIFY_DLVP_POPUP_",url: "/mypage/modifyDlvpForm.action?"+params,width:"420",height:"544"});
	});
	
	// 기본배송지 수정 이벤트
	$('[name=modiBaseYnBtn]').click(function(){
		modiBaseYnAction($(this).attr("data-mbr_dlvp_seq"));
	});
	
	// 삭제
	$('[name=deleteOneBtn]').click(function(){
		deleteAction($(this).attr("data-mbr_dlvp_seq"));
	});
	// 선택 삭제
	$('[name=deleteMultiBtn]').click(function(){
		if($('[name=mbr_dlvp_seq]:checked').length == 0) {
			alert("삭제할 배송지를 선택해 주세요.");
			return false;
		}
		deleteAction();
	});
	
	//페이지 이동
	$("#box_page").createAnchor({
		name: "page_idx", // 해당 페이지 앵커의 페이지번호 패러미터명과 일치하여야 함. 디폴트는 page_no
		fn: function(page, parameters) {
			location.href = "/mypage/initAddressList.action?page_idx=" + page + "&" + parameters;
		}
	});	
});
