<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
.layer_wrap .lyr_box {
    overflow: hidden;
    position: relative;
    width: 638px;
    margin: 0 auto;
    border: #000 1px solid;
    background: #fff;
}
.layer_wrap .lyr_box h3 {
    display: block;
    width: 100%;
    padding: 18px 0 21px 0;
    font-size: 20px;
    font-weight: bold;
    line-height: 1;
    text-align: center;
    letter-spacing: -1px;
    color: #222;
}
#tit{
	text-align:center;
}

.lyr_box h3{

    font-size: 100%;
    font-weight: normal;

}
button em {
    display: block;
    margin-top: -2px;
}
button {
    line-height: 1;
}
    
.period_slt {
    height: 32px;
    margin: 0 0 20px;
    padding: 15px 0 15px 28px;
    border: 3px solid #f0eded;
    line-height: 1;
}



.period_slt li{
	list-style:none;
} 
.period_slt dt {
    height: 32px;
    margin-right: 25px;
    font-size: 14px;
    font-weight: 800;
    line-height: 32px;
    color: #222;
}

.period_slt dd ul li {
    float: left;
}
}
.period_slt dd ul li button {
    width: 78px;
    height: 30px;
    margin-left: -1px;
    border: 1px solid #dbdbdb;
    color: #333;
}

.slt_wrap {
    padding: 0 29px;
}
.layer_wrap .close {
    display: block;
    position: absolute;
    top: 8px;
    right: 8px;
    width: 27px;
    height: 28px;
    background: url(../images/common/bt_lyr_close.png) no-repeat 0 0;
    text-indent: -9999px;
}
element.style {
    top: 419.333px;
    display: block;
    position: absolute;
    left: 0px;
    margin-left: 0px;
    z-index: 2000;
}
.list_none {
    overflow: hidden;
    clear: both;
    height: 212px;
    border-top: 1px solid #dbdbdb;
}
.list_none .txt {
    display: block;
    margin-top: 73px;
    padding-top: 55px;
    background:  no-repeat 50% 0;
    font-size: 18px;
    line-height: 24px;
    text-align: center;
    color: #333;
}




#gradeSelect dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
</style>
</head>
<body>

 	<h3 id="tit" class="tit">주문내역 검색</h3><div class="slt_wrap">
 		

        
        <input type="hidden" title="기간검색 시작일" id="lyr_date_start" name="lyr_date_start" value="">
        <input type="hidden" title="기간검색 시작일" id="lyr_date_end" name="lyr_date_end" value="">
        <div id="gradeSelect" class="period_slt">
            <dl>
                <dt>조회기간</dt>
                <dd>
                    <ul>
                        <li><button type="button" data-val="1" data-type="week"><em>1주일</em></button></li>
                        <li><button type="button" data-val="1" data-type="month" class="on"><em>1개월</em></button></li>
                        <li><button type="button" data-val="3" data-type="month"><em>3개월</em></button></li>
                        <li><button type="button" data-val="6" data-type="month"><em>6개월</em></button></li>
                    </ul>
                </dd>
            </dl>
        </div>
        <div class="sltd_tbl_pop ext lyrtbl">
            
            <div class="sltd_tbl_pop ext_none">
                <!-- LIST NONE -->
                <div class="list_none">
                    <span class="txt">기간 내 주문내역이 없습니다.</span>
                </div>
                <!-- LIST NONE -->
                <div class="btns">
                    <button class="cancel" onclick="unBlockUI('lyr_odr_slt');return false;"><em>닫기</em></button>
                </div>
                <button type="button" class="close" onclick="unBlockUI('lyr_odr_slt');return false;">주문반품신청 레이어 닫기</button>
            </div>
            
        </div>
    </div>
    
        <button type="button" class="btn_lay_close close">주문내역 검색 레이어 닫기</button>	</button>

    </body>
		<button class="lyr_box" tabindex="0">	
        <script type="text/javascript">
        $(document).ready(function(){
            fnChoice = function (id) {
                var ord_no = "";
                var ord_dtl_nos = "";
                var goods_chk = true;
                $('#selectedGoodsBox').children('tr').remove();
                $('.goods_chk:checked').each(function() {
                    goods_chk= false;
                    ord_no = $(this).attr("ord_no").substr(0,8)+"-"+$(this).attr("ord_no").substr(8,8);
                    ord_dtl_nos = ord_dtl_nos + $(this).attr("ord_dtl_no") + ",";
                    var obj = $(this).parent().parent();
                    obj.find(".remove").remove();
                    obj.append("<td><span class='btn'><button type='button' class='del' id='deleteBtn' title='제품 삭제 알림'><em>삭제</em></button></span></td>");
                    $("#"+id).append(obj);
                });
                if (goods_chk) {
                    alert("제품을 선택해 주세요.")
                    return ;
                }
                
                ord_dtl_nos = ord_dtl_nos.substring(0, ord_dtl_nos.length-1);
                
                $("#ord_dtl_nos").val(ord_dtl_nos);
                $("#ord_no").val($(this).attr("ord_no"));
                $(".order_num > dd").text(ord_no);
                
                $('.goodsDiv').show();
                $('button[name=orderlist]').addClass('on');
                unBlockUI('lyr_odr_slt')
            };
            
            checkSelect = function (obj) {
        
                var ord_no = $(obj).attr("ord_no");
                $(".lyrbody").find(":input:radio").prop("checked", false);
                $(".lyrbody").find(":input:radio[ord_no='" + ord_no + "']").prop("checked", true);
                $(obj).parent().parent().siblings().find("input[type='checkbox']").each(function() {
                    
                    if (ord_no != $(this).attr("ord_no")) {
                        $(this).prop("checked", false);
                    }
                });
                //$(obj).prop("checked", true);
            };
            
            $(".radio").change(function(){
                
                var count = 0;
                var ord_no = $(this).attr("ord_no");
                $("input[type=checkbox]").each(function(){
                    if($(this).attr("ord_no") == ord_no){
                        count++;
                        if(count > 5){
                            alert("최대 5개까지 제품선택이 가능합니다.");
                            return false;
                        }
                        $(this).prop("checked",true);
                    }else{
                        $(this).prop("checked",false);
                    }
                });
                $(".radio").each(function(){
                    if($(this).attr("ord_no") != ord_no){
                        $(this).prop("checked",false);
                    }
                });
            });
            
            $("input[type=checkbox]").change(function(){
                
                var count = 0;
                
                $("input[type=checkbox]").each(function(){
                    if($(this).prop("checked")){
                        count++;
                    }
                });
                if(count > 5){
                    alert("최대 5개까지 제품선택이 가능합니다.");
                    $(this).prop("checked",false);
                    return;
                }
            });
        
            
            //주문제품 레이어
            searchList = function() {
                $(".lyrtbl").load("/cust/searchOrderGoodsListLayer.action",
                        {date_start : $("#lyr_date_start").val(), date_end : $("#lyr_date_end").val()});
            }
            
            fnInit = function() {
                
                //레이어 날짜버튼
                var $this = $("#gradeSelect");
                var $links = $this.find("button");
                
                $links.on("click",function(e){
                    $links.removeClass("on");
                
                    $(this).addClass("on");
                    
                    var selectedValue = $(this).data('val');
                    var selectedType = $(this).data('type');
                    var date = new Date();
                    
                    //종료일 오늘로
                    $('#lyr_date_end').val(getDateString(date));
                    
                    if(selectedType=='week'){
                        date.setDate(date.getDate() - (selectedValue * 7));
                    }else{
                        addMonth(date, -(parseInt(selectedValue)));
                    }
                    
                    //시작일 설정 
                    $('#lyr_date_start').val(getDateString(date));
                    
                    searchList();
                });
                
            }
            
            fnInit();
        });
        </script>

</html>