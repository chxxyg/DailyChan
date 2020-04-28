<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문내역</title>

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
	
	margin:auto;
    font-size: 14px;
    font-weight: 800;
    color: #222;
    float:left;
    
}

.period_slt dd ul li {
    float: left;
    margin-top:-8px;
}

.period_slt dd ul li button {
    width: 79px;
    height: 30px;
    margin-left: -1px;
    border: 1px solid #dbdbdb;
    color: #333;
    background:white;
    float:left;
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

/* 주문내역 */
.myOrderList{
		/* margin:30px 0px 0px 5px; */
		margin:auto;

	}
	.myOrderList, .myOrderList tr{
		border-top:1px solid grey;
		border-bottom:1px solid grey;
		border-collapse: collapse;
	}
	.myOrderList th{
		font-size:13px;
		background:#f5f5f5;
	}
	.myOrderList td{
		font-size:12px;
		text-align:center;
	}
	.myOrderList a{text-decoration:none; cursor:pointer;}
	
	#myOrderInfo{
		padding:20px 0px 10px 100px;
	}
	#myOrderInfo>div{
		width:270px;
		text-align:left;
		float:left;
		margin-bottom:10px;
	}
	#myOrderInfo>div>a{
		font-size:13px;
		cursor:pointer;
	}
	#orderDtBtn{
		width:63px;
		height:25px;
		background:white;
		border:1px solid black;
		margin-top:2px;
		font-size:10px;
		cursor:pointer;
	}
	#trackShipmentBtn{
		width:60px;
		height:30px;
		background:tomato;
		border:none;
		font-size:10px;
		color:white;
		margin-bottom:5px;
		cursor:pointer;
	}
	#cancelOrderBtn, #requestRefundBtn{
		width:60px;
		height:30px;
		background:white;
		border:1px solid black;
		font-size:10px;
		cursor:pointer;
	}
	#cancelOrdBlockBtn{
		width:60px;
		height:30px;
		background:white;
		border:1px solid black;
		font-size:10px;
		cursor:pointer;
	}
	
</style>
</head>
<body>

 	<h3 id="tit" class="tit">주문내역 검색</h3>
 	
 	<div class="slt_wrap">

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
        
        <!-- 메뉴 내역 -->
        <div class="sltd_tbl_pop ext lyrtbl">
            
            <div class="sltd_tbl_pop ext_none">
                <!-- LIST NONE -->
               <!--  <div class="list_none">
                    <span class="txt">기간 내 주문내역이 없습니다.</span>
                </div> -->
                <!-- LIST NONE -->
                <!-- <div class="btns">
                    <button class="cancel" onclick="unBlockUI('lyr_odr_slt');return false;"><em>닫기</em></button>
                </div>
                <button type="button" class="close" onclick="unBlockUI('lyr_odr_slt');return false;">주문반품신청 레이어 닫기</button> -->
            </div>
            
        </div>
    </div>
    
    <!--  긁어온 거 -->
    <table class="myOrderList" width="530px">
			<thead>
				<tr height="35px">
					<th width="130px">주문번호/주문일</th>
					<th width="400px">상품정보</th>
					
				</tr>
			</thead>
			<tbody>
				<tr height="100px">
					<td>
						<a style="color:blue; text-decoration: underline;" onclick="toOrderDetail();">20200331-1234567</a>
						2020-03-31<br>
						<button id="orderDtBtn" type="submit" onclick="toOrderDetail();">상세확인 &gt;</button>
					</td>
					<td id="myOrderInfo">
						<div>
							<a href="/dailyChan/pDetail.pro"><b>데일리찬 상품명</b></a><br>
							1개 / 12,000원
						</div>
					</td>
					
				</tr>
	

					
				</tr>
			</tbody>
		</table>

    
<!--         <button type="button" class="btn_lay_close close">주문내역 검색 레이어 닫기</button>	</button>
 -->
    </body>
		

</html>