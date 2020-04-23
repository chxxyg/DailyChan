$(document).ready(function() {
	var addr_area= $("#addr_area");
	var saveDlvpRunning = function() {
		//do nothing...
	};
	var saveDlvpCheck = function() {
		(function() {
			saveDlvp = saveDlvpRunning;
		})();
		var callback = function(d) {
			data.mbr_dlvp_seq = d.mbr_dlvp_seq;
			self.close();
		};
		var data = {};
		$(":input[data-role='input']").each(function() {
			var input = $(this);
			var value = $.trim(this.value);
			var name = input.attr("name");
			var min_length = input.attr("data-min-length");
			var no_check = input.attr("data-no-check");
			if (no_check != "Y" && value == "") {
				input.focus();
				throw input.attr("data-message");
			};
			if (input.attr("data-check") == "number") {
				if ($.isNumeric(value) === false) {
					throw input.attr("data-message");							
				};
			};		
			if (input.attr("data-check") == "text") {
				//상세입력시 ( - ) 허용 
//				if (overpass.validate.isSpecialLetters(value)) {
//					throw "정확한 주소를 입력해 주세요.";							
//				};
			};
			if (min_length && value.length < min_length) {
				throw input.attr("data-message");
			};
			if (name == "recvr_nm") {
//				if (overpass.validate.isKoreanEnglish(value) !== true) {
//					throw input.attr("data-message");
//				};
			};
			data[name] = value;
		});
		data.cell_no = data.cell_no1 + "" + data.cell_no2 + "" + data.cell_no3 ; 
		data.road_post_no = data.post_no;
		
		data.base_yn = $("#set_default").is(":checked") ? "Y" : "N" ;
		$.ajax({
			url: "/dailyChan/InsertAdress.my",
			type: "POST",
			dataType: "json",
			data: data,
			success: function(d) {
				callback(d);
			},
			error: function() {
				saveDlvp = saveDlvpCheck;
			}
		});
	};
	var saveDlvp = saveDlvpCheck;
	$("#zipcode_button").click(function() {
		new daum.Postcode({

			oncomplete:function(data) {

				if (data.roadAddress.indexOf("제주") == 0) {
				alert("죄송합니다. 제주도는 등록 할 수 없습니다!");
				return false;	
				};	
                var extraRoadAddr = ''; // 참고 항목 변수
				var autoJibunAddress = data.autoJibunAddress
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                
                addr_area.html("[" + data.zonecode + "]<br/>" + data.roadAddress + " " + extraRoadAddr);
				$("#zonecode").val(data.zonecode);
				$("#roadAddress").val(data.roadAddress);
				$("#extraRoadAddr").val(extraRoadAddr);
			}

		}).open();
//		overpass.popup.zipcode({
//			callback: function(data) {

//				
//				$("#post_no").val(data.post_no);
//				$("#base_addr").val(data.base_addr);
//				$("#road_post_no").val(data.post_no);
//				$("#road_base_addr").val(data.road_base_addr);
//				$("#dawn_deli_district_cd").val(data.dawn_deli_district_cd);
//				$("#dawn_deli_zone_cd").val(data.dawn_deli_zone_cd);
//			}
//		});			
	});
	$("#save_dlvp_button").click(function() {
		try {				
			saveDlvp();
		} catch (e) {
			alert(e);
			saveDlvp = saveDlvpCheck;
		};
	});
	
	(function() {
		var elements = $("[data-input]");
		elements.filter("[data-input='input']").blur(function() {
			var element = $(this);
			var value = $.trim(this.value);
			var name = element.attr("data-input-name");
			var display = elements.filter("[data-input='display'][data-input-name='" + name + "']");
			var data_check = element.attr("data-check");
			var min_length = element.attr("data-min-length")  != undefined ? +element.attr("data-min-length") : undefined ;
			var valid = true;
			var input_no = element.attr("data-input-no");
			this.value = value;
			try {
				if (value == "") {
					if(name == "dtl_addr") {
						throw "상세 주소를 입력해 주세요";	
					} else if(name == "recvr_nm") {
						throw "이름을 입력하세요";	
					} else if(name == "cell_no") {
						throw "휴대전화 번호를 입력해 주세요";
					}
				} else if (data_check == "kor_eng") {
//					if (overpass.validate.isKoreanEnglish(value) !== true) {
//						throw "이름은 한글,영문으로 입력해 주세요";	
//					};
				} else if (data_check == "number") {
					if ($.isNumeric(value) === false) {
						throw "숫자를 입력해 주세요";	
					};
				} else if (data_check == "text") {
					//상세입력시 ( - ) 허용 
//					if (overpass.validate.isSpecialLetters(value)) {
//						throw "정확한 주소를 입력해 주세요";
//					};
				} 
				if (name == "cell_no") {
					if($("#cell_no1").val() == "" || $("#cell_no2").val() == "" || $("#cell_no3").val() == "") {
						throw "휴대전화 번호를 입력해 주세요";	
					}
				};
				if (min_length != undefined && value.length < min_length) {
					throw null;
				};
			} catch (e) {
				valid = false;
				if(e != null) {
					display.html(e);
				}
			};
			if (valid === true) {
				if (input_no != undefined) {
					if (input_no == display.attr("data-input-no")) {
						display.hide();
					} else {
						display.hide();
					};
				} else {
					display.hide();
				};
			} else {
				if (input_no != undefined) {
					display.attr("data-input-no", input_no);						
				};
				display.show();	
			};
		});
	})();
	
	//배송주소 수정 시 값 세팅
	$("#recvr_nm").val("");
	$("#post_no").val("");
	$("#road_post_no").val("");
	$("#base_addr").val("");
	$("#road_base_addr").val("");
	$("#road_dtl_addr").val("");
	$("#dtl_addr").val("");
	$("#cell_no1").val("");
	$("#cell_no2").val("");
	$("#cell_no3").val("");
	if("" == "Y") {
		$("#set_default").prop('checked', true);
		$("#set_default").prop('disabled', true);
	} else {
		$("#set_default").prop('checked', false);
	}		
	var modify_yn = "N";
	if(modify_yn == "Y") {
		var addr_info = "";
		if($("#post_no").val() != "") {
			addr_info += "[" + $("#post_no").val() + "]" + "<br />";
		} 
		if($("#base_addr").val() != "") {
			addr_info += $("#base_addr").val() + "<br />";
		}
		if($("#road_base_addr").val() != "") {
			addr_info += $("#road_base_addr").val();
		}
		$("#addr_area").html(addr_info);
	}
});
