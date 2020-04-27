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
	
	int[] price = new int[priceArr.length];
	for(int i=0;i<priceArr.length; i++){ price[i] = Integer.parseInt(priceArr[i]); }
	String[] quantityArr = null;
	if(quantityList != null){
		quantityArr = quantityList.split(",");
	}
	
	int[] quantity = new int[quantityArr.length];
	for(int i=0;i<quantityArr.length; i++){ quantity[i] = Integer.parseInt(quantityArr[i]); }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/orderPage.css">

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
                    <tr class="orderProductInnerTable">
                        <td><a href=""><div class="orderProductName"><%= proName[i] %></div></a></td>
                        <td><span class="orderProductPrice"><%= price[i] %></span> <span>원</span></td>
                        <td>
                            <div class="orderProductAmountWrap">
                                <span class="orderProductAmount"><%= quantity[i] %></span>
                            </div>
                        </td>
                        <td>
                            <span class="orderProductTotalPrice"><%= price[i] * quantity[i] %></span> <span>원</span원>
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
                                    <td style="background: white; width: 300px;">보유 적립금 : <%=loginUser.getPointSum() %>원</td>
                                    <td><input type="text" id="orderInputPoint" placeholder="사용할 적립금 입력" ></td>
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
                        <td id="info_name"></td>
                    </tr>
                    <tr>
                        <td>휴대전화 *</td>
                        <td id="info_phone"></td>
                    </tr>
                    <tr>
                        <td>비상연락처</td>
                        <td><input type="text" id="orderSecondPhone" placeholder="비상연락처 입력"></td>
                    </tr>
                    <tr>
                        <td>주소 *</td>
                        <td id="info_addr"></td>
                    </tr>
                    <tr>
                        <td>배송 요청 사항</td>
                        <td>
                            <input type="text" id="orderDeliveryRequest" list="requestList" name="orderDeliveryRequest" placeholder="배송 요청 사항을 입력해주세요." value="">
                            <datalist id="requestList">
                                <option value="배송전 연락 바랍니다.">배송전 연락 바랍니다.</option>
                                <option value="부재 시 경비실에 맡겨주세요.">부재 시 경비실에 맡겨주세요.</option>
                                <option value="부재 시 집 앞에 놔주세요.">부재 시 집 앞에 놔주세요.</option>
                            </datalist>
                        </td>
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
                            <span id="orderProductTotalPrice"><%= payAmount%></span> 원
                        </td>
                        <td style="font-size: 30px; width: 10px;">-</td>
                        <td style="width: 150px; font-size: 30px;">
                            <span id="orderDeliveryPrice">0</span> 원
                        </td>
                        <td style="font-size: 30px; width: 10px;">+</td>
                        <td style="width: 150px; font-size: 30px;">
                            <span id="orderDeliveryPrice"><%= delivery %></span> 원
                        </td>
                        <td style="font-size: 30px; width: 10px;">=</td>
                        <td style="width: 300px; font-size: 35px; font-weight: 550;">
                            <span id="SumOrderProductTotalPrice"><%= payAmount - delivery %></span> 원
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
        <input id="orderNo" type="hidden" value="">
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>
    
    <script>
		$(document).ready(function(){
			var orderNo = $("#orderNo").val();
			var userId = "<%=loginUser.getMemberId()%>";
			$.ajax({
				url: "<%=contextPath%>/orderProList.pro",
				type: "POST",
				data : {userId : userId},
				success: function(op){
					$("#orderNo").val(op.orderNo);
				}
			});
			
			$("#orderInputPoint").blur(function(){
				
			var inputPoint = $("#orderInputPoint");
			if(inputPoint.val() < 0)
			{
				alert("0원 이하는 입력할 수 없습니다.");
				inputPoint.val('');
			}
			else if(inputPoint.val() > <%=loginUser.getPointSum() %>)
			{
				alert("보유하신 적립금보다 높게 사용하실 수 없습니다.");
				inputPoint.val('');
			}
			else
			{
				$("#orderDeliveryPrice").html(inputPoint.val());
				var price1 = <%= payAmount - delivery %>;
				var totalPrice = price1 - inputPoint.val();
				console.log(totalPrice);
				$("#SumOrderProductTotalPrice").html(totalPrice);
			}
			
			});
			
			
			// 배송지 조회
			var userId = "<%=loginUser.getMemberId()%>";
			$.ajax({
			url: "<%=contextPath%>/mainAddr.my",
			type: "POST",
			data : {userId : userId},
			success: function(list) 
			{
				var address = "";
				if(list.length > 0)
				{
					for(var i = 0; i < list.length; i++)
					{
						if(list[i].addressDefault == 'Y')
						{
							address += "[" + list[i].zipCode + "]" + " ";
							address += list[i].address + " ";
							address += list[i].addressDetail;
						}
					}
				}
				else
				{
					address = "등록된 주소지가 없습니다."
				}
				
				for(var i = 0; i < list.length; i++)
				{
					if(list[i].addressDefault == 'Y')
					{
						var name = list[i].addressName;
						var prePhone = list[i].phone;
						var phone = '';
						if(prePhone.length == 11)
						{
							phone = prePhone.substring(0, 3) + "-";
							phone += prePhone.substring(3, 8) + "-";
							phone += prePhone. substring(8);
						}
						else
						{
							phone = prePhone.substring(0, 3) + "-";
							phone += prePhone.substring(3, 7) + "-";
							phone += prePhone. substring(7);
						}
					}
				}
				$("#info_name").html(name);
				$("#info_phone").html(phone);
				$("#info_addr").html(address);
			}
			}); // 배송지 조회 종료

			
			
			var price = $("#orderProductTotalPrice").html();
			$("#orderBtn").click(function(){
				var obj = new Object();
				obj.orderNo = $("#orderNo").val(); // 주문번호
				obj.memberId = "<%=loginUser.getMemberId()%>";
				obj.memberName= "<%= loginUser.getMemberName()%>";
				obj.phone = "<%= loginUser.getPhone()%>";
				obj.email = "<%=loginUser.getEmail() %>";
				obj.recipient = $("#info_name").html();
				obj.emergencyConcat = $("#info_phone").html();	
				obj.address = $("#info_addr").html();
				obj.deliveryRequest = $("#orderDeliveryRequest").val();
				obj.useCoupon = $("#orderInputPoint").val();
				obj.usePoint = $("#orderInputPoint").val();
				obj.payAmount = $("#orderProductTotalPrice").html();

				var jsonData = JSON.stringify(obj)
				console.log(jsonData);
				
				
				
				var IMP = window.IMP;
				IMP.init("imp27012123"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.
					
				//IMP.request_pay(param, callback) 호출
				IMP.request_pay({ // param
				  pg: "inicis",
				  pay_method: "card",
				  merchant_uid:  'merchant_' + new Date().getTime(),
				  name: "<%=nameList%>",
				  //amount: price,
				  amount: "100",
				  buyer_email: "<%=loginUser.getEmail()%>",
				  buyer_name: $("#info_name").html(),
				  buyer_tel: $("#info_phone").html(),
				  buyer_addr: $("#info_addr").html(),
				  buyer_postcode: "01181",
				  m_redirect_url : '/dailyChan/orderComplete.pro'	// 결제 완료 후 보낼 컨트롤러의 메소드명
				}, function (rsp) { // callback
					if ( rsp.success ) {
						// 주문 조회 입력
						var userId = "<%=loginUser.getMemberId()%>";
						
						$.ajax({
						url: "<%=contextPath%>/insertOrder.od",
						type: "POST",
						data : {jsonData : jsonData},
						success: function(msg) 
						{
							alert(msg);
						},
						error: function(e)
						{
							alert("ajax통신실패");
						}
						}); // 주문조회 입력 완료
						
							location.href = "/dailyChan/orderComplete.pro";
					 
						
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
			}); // 주문 결제 종료
		});
    </script>

</body>
</html>