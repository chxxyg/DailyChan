var _reload = function(){
	var userId = $("#userId").val();
	location.href="/dailyChan/addressForm.my?userId=" + userId;
}

var deleteAction = function(mbr_dlvp_seq){	
	if(!confirm("선택한 주소를 배송지 목록에서 삭제하시겠습니까?")){
		return;
	}
	
	p = {};
	if(mbr_dlvp_seq){
		
		p.mbr_dlvp_seq = mbr_dlvp_seq;
		console.log(p);
	}else{
		p = $('[name=mbr_dlvp_seq]:checked').serialize();
		console.log(p);
	}
	
	$.ajax({
		url: "/dailyChan/deleteAddress.my",
		type: "POST",
		dataType: "text",
		async:false,
		data: p,
		success: function(data){
			if(data==1){
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
		url: "/dailyChan/defaultAddress.my",
		type: "POST",
		dataType: "text",
		async:false,
		data: {mbr_dlvp_seq : mbr_dlvp_seq},
		success: function(data){
			if(data > 0){
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
		var addrNo = $("#addrNo").val();
		if($(this).attr("data-modify-yn") == "N") {
			if(addrNo >= 2) {
				alert("배송지 등록은 최대 2개 까지 등록 가능합니다. 사용하지 않은 배송지 삭제 후 다시 시도해 주세요.");
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
		var userId = $("#userId").val();
		
		window.open("/dailyChan/addressModify.my?" + params + "&userId=" + userId, "배송지 추가/수정", "width=500, height=544, top=50, left=500, location=no ");
	});
	
	// 기본배송지 수정 이벤트
	$('[name=modiBaseYnBtn]').click(function(){
		modiBaseYnAction($(this).attr("value"));
	});
	
	// 삭제
	$('[name=deleteOneBtn]').click(function(){
		deleteAction($(this).attr("value"));
	});
	// 선택 삭제
	$('[name=deleteMultiBtn]').click(function(){
		if($('[name=mbr_dlvp_seq]:checked').length == 0) {
			alert("삭제할 배송지를 선택해 주세요.");
			return false;
		}
		deleteAction();
	});
	
	
	$("#chk_all").click(function(){
		$(".chk").prop( 'checked', this.checked );
	});
});
