<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%
	String codeList = (String)request.getAttribute("codeList");
	String nameList = (String)request.getAttribute("nameList");
	String priceList = (String)request.getAttribute("priceList");
	String quantityList = (String)request.getAttribute("quantityList");
	
	int delivery = (int)request.getAttribute("delivery");
	int payAmount = (int)request.getAttribute("payAmount");

	String[] proCode = null;
	if(codeList != null){
		proCode = codeList.split(",");
	}
	
	String[] proName = null;
	if(nameList != null){
		proName = nameList.split(",");
	}
	
	String[] priceArr = null;
	if(priceList != null){
		priceArr = priceList.split(",");
	}
	int[] price = Arrays.stream(priceArr).mapToInt(Integer::parseInt).toArray();
	
	String[] quantityArr = null;
	if(quantityList != null){
		quantityArr = quantityList.split(",");
	}
	int[] quantity = Arrays.stream(quantityArr).mapToInt(Integer::parseInt).toArray();	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/orderPage.css">

<script>
$(document).ready(function(){
	$("#orderBtn").click(function(){
		var IMP = window.IMP; // 생략해도 괜찮습니다.
		IMP.init("imp27012123"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.
			
		//IMP.request_pay(param, callback) 호출
		IMP.request_pay({ // param
		  pg: "inicis",
		  pay_method: "card",
		  merchant_uid: "ORD20180131-0000011",
		  name: "노르웨이 회전 의자",
		  amount: 64900,
		  buyer_email: "gildong@gmail.com",
		  buyer_name: "홍길동",
		  buyer_tel: "010-4242-4242",
		  buyer_addr: "서울특별시 강남구 신사동",
		  buyer_postcode: "01181"
		}, function (rsp) { // callback
			if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		    }
		
		    alert(msg);
		});
	});
});
</script>
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

    <table id="orderWrap">
        <tr>
            <td style="text-align: right; font-size: 25px; font-weight: 550; color: gray; padding-bottom: 40px;">
                <span>01 장바구니</span>
                <span> > </span>
                <span style="color: orange;">02 주문하기</span>
                <span> > </span>
                <span>03 결제완료</span>
            </td>
        </tr>
        <tr>
            <td style="font-size: 50px; font-weight: 600; text-align: center; padding-bottom: 50px;">주문하기</td>
        </tr>
        <tr>
            <td>
                <table id="orderProductWrap">
                    <tr style="background: lightgray; height: 50px; font-size: 20px;">
                        <th style="width: 500px;">상품정보</th>
                        <th style="width: 150px;">판매금액</th>
                        <th style="width: 150px;">수량</th>
                        <th style="width: 200px;">구매금액</th>
                    </tr>
                    <% for(int i=0; i<proCode.length; i++) { %>
                    <tr>
                        <td colspan="4">
                            <table class="orderProductInnerTable">
                                <tr>
                                    <td><a href=""><img class="orderProductImg" src=""></a></td>
                                    <td><a href=""><div class="orderProductName"><%= proName[i] %></div></a></td>
                                    <td><div class="orderProductPrice"><%= price[i] %></div></td>
                                    <td>
                                        <div class="orderProductAmountWrap">
                                            <button class="orderProductMinusBtn" type="button">-</button>
                                            <span class="orderProductAmount"><%= quantity[i] %></span>
                                            <button class="orderProductPlusBtn" type="button">+</button>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="orderProductTotalPrice"><%= price[i] * quantity[i] %></div>원
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <% } %>
                </table>
            </td>
        </tr>
        <tr>
            <td class="orderLabel">적립금 및 쿠폰 사용</td>
        </tr>
        <tr>
            <td>
                <table id="orderPointCoupon">
                    <tr>
                        <td>데일리찬 적립금</td>
                        <td>
                            <table>
                                <tr>
                                    <td style="background: white; width: 300px;">보유 적립금 : 3,000원</td>
                                    <td><input type="number" id="orderInputPoint" placeholder="사용할 적립금 입력"></td>
                                    <td><button type="button" id="orderCouponBtn">적용</button></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>쿠폰 할인</td>
                        <td>
                            <table>
                                <tr>
                                    <td style="background: white; width: 300px;">보유 쿠폰 : 3개</td>
                                    <td>
                                        <select name="" id="orderSelectCoupon">
                                            <option value=""></option>
                                        </select>
                                    </td>
                                    <td><button type="button" id="orderCouponBtn">적용</button></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="orderLabel">주문자 정보</td>
        </tr>
        <tr>
            <td>
                <table id="orderMemberInfo">
                    <tr>
                        <td>주문자 *</td>
                        <td><%=loginUser.getMemberName() %></td>
                    </tr>
                    <tr>
                        <td>휴대전화 *</td>
                        <td><%=loginUser.getPhone() %></td>
                    </tr>
                    <tr>
                        <td>이메일 *</td>
                        <td><%=loginUser.getEmail() %></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="orderLabel">배송지 정보</td>
        </tr>
        <tr>
            <td>
                <table id="orderDeliveryrInfo">
                    <tr>
                        <td>받으시는 분 *</td>
                        <td>강보람</td>
                    </tr>
                    <tr>
                        <td>휴대전화 *</td>
                        <td>010-7777-2222</td>
                    </tr>
                    <tr>
                        <td>비상연락처</td>
                        <td><input type="text" id="orderSecondPhone" placeholder="비상연락처 입력"></td>
                    </tr>
                    <tr>
                        <td>주소 *</td>
                        <td>[00777] 서울특별시 강남구 테헤란로 14길 6 남도빌딩</td>
                    </tr>
                    <tr>
                        <td>배송 정보</td>
                        <td>지정하신 배송일 <span id="orderDeliveryDate"> 5월 1일 </span>에 배송될 예정입니다.</td>
                    </tr>
                    <tr>
                        <td>배송 요청 사항</td>
                        <td>
                            <input type="text" id="orderDeliveryRequest" list="requestList" name="orderDeliveryRequest" placeholder="배송 요청 사항을 입력해주세요.">
                            <datalist id="requestList">
                                <option>배송전 연락 바랍니다.</option>
                                <option>부재 시 경비실에 맡겨주세요.</option>
                                <option>부재 시 집 앞에 놔주세요.</option>
                            </datalist>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="orderLabel">결제 수단 선택</td>
        </tr>
        <tr>
            <td>
                <table id="orderPaymentType">
                    <tr>
                        <td><input type="checkbox"><label>무통장입금</label></td>
                        <td rowspan="3">
							선택한 결제 방식에 해당하는 내용 나오게 하기
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"><label>신용카드</label></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"><label><img src=""></label></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <div id="orderTotalLabel"><img id="orderCheckImg" src="<%= request.getContextPath() %>/resources/img/checklogo.png">최종결제금액</div>
            </td>
        </tr>
        <tr>
            <td>
                <table id="orderTotalPriceWrap">
                    <tr style="height: 50px; font-size: 20px;">
                        <th colspan="2">총 상품 금액</th>
                        <th colspan="2">할인 금액</th>
                        <th colspan="2">배송비</th>
                        <th style="width: 300px;">총 결제 예정 금액</th>
                    </tr>
                    <tr style="height: 100px; text-align: center;">
                        <td style="width: 250px; font-size: 30px;">
                            <div id="orderProductTotalPrice"><%=payAmount%></div>원
                        </td>
                        <td style="font-size: 30px; width: 10px;">-</td>
                        <td style="width: 150px; font-size: 30px;">
                            <div id="orderDeliveryPrice">3,000</div>원
                        </td>
                        <td style="font-size: 30px; width: 10px;">+</td>
                        <td style="width: 150px; font-size: 30px;">
                            <div id="orderDeliveryPrice"><%=delivery %></div>원
                        </td>
                        <td style="font-size: 30px; width: 10px;">=</td>
                        <td style="width: 300px; font-size: 35px; font-weight: 550;">
                            <div id="orderProductTotalPrice">723,000원</div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: right;">
                <button type="button" id="orderPreviosBtn">이전으로</button>
                <button type="button" id="orderBtn">결제하기</button>
            </td>
        </tr>
    </table>
        
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>
    

</body>
</html>