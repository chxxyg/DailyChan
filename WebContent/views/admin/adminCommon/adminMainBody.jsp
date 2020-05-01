<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product,com.kh.admin.adminOneInquiry.model.vo.AdOneInquiry ,com.kh.orderDelivery.model.vo.OrderDelivery"%>
<%
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
	ArrayList<OrderDelivery> list1 = (ArrayList<OrderDelivery>)request.getAttribute("list1");
	ArrayList<AdOneInquiry> list2 = (ArrayList<AdOneInquiry>)request.getAttribute("list2");
%>   
<!DOCTYPE html>
<html lang="en">
<head>
<title>관리자메인페이지</title>
<style>
   		/*content*/
    	body{margin:0px;padding:0px; left:0; top:0; box-sizing:border-box;}
    	/*content전체 영역 건들지말것*/
        #adproduct{
            width:100%;height:100%; background-color: white;
            position: fixed; left: 15%; top:5%;
        }
        /*div크기*/
          .outer{
         	margin:15px;
         	padding:15px;
         	width:1200px;
         	height:90%;
         	background:white;
         	opacity:0.7;
        }
        
          /*count 수량*/
        #adproductcount{
            width:25px;
            border:none;
            color:#181c20;
        }
        
        #allcount{
            margin-top: 10px;
        }
        
        /*테이블 영역*/
        .listBody{
            margin-top:30px;
            text-align:center;
            width:1150px;
            border: 1px solid #181c20;
            position:relative;
            max-height:600px;
            /*border-collapse:collapse; 테이블 간격 없애는구문*/
        }
      	/*상품 등록 삭제 버튼css*/
        #allcount{width:1150px; }
        #allcount>div{float:left;}
        
        /*테이블 헤드*/
        .listBody>thead>tr>th{
            border:1px solid #181c20;
            
        }
       
        
        .listBody>tbody>tr>td{
            border: 1px solid #181c20;
            table-layout:fixed;
            
            
        }
        tbody{vertical-align: top;
        }
        table{table-layout:fixed;}
       Button {
			box-shadow:inset 0px 1px 0px 0px #181c20;
			background:linear-gradient(#181c20);
			background-color:#181c20;
			border-radius:6px;
			border:1px solid #181c20;
			display:inline-block;
			cursor:pointer;
			color:#ffffff;
			font-family:Arial;
			font-size:13px;
			font-weight:bold;
			padding:6px 11px;
			text-decoration:none;
			text-shadow:0px 1px 0px #181c20;
		}
		Button:hover {
			background:linear-gradient(to bottom, #1d1d1d 5%, #e9e7e5 100%);
			background-color:#5554547e;
		}
		Button:active {
			position:relative;
			top:1px;
		}
		.listBody>tbody>tr:hover {
			background:linear-gradient(to bottom, #1d1d1d 5%, #e9e7e5 100%);
			background-color:#5554547e;
			cursor:pointer;
		}
		
		#body1{
			width:100%;
			height:30%;
		}
		#body2{
			width:100%;
			height:35%;
		}
		#body3{
			width:100%;
			height:30%;
		}
                thead>tr>th{
			height:30px;
			font-weight: bold;
			font-size:17px;
		}		
      
    </style>
</head>
<body>
	<%@ include file="../adminCommon/adminMainPage.jsp" %>

 	<div id="adproduct">
      <div class="outer">
     	
     	<div id="body1">
      	<h2>최근주문상품</h2>
      	
      	<table class="listBody">
            <thead>
                <tr onClick="location.href='<%=contextPath%>/paymentList.ad?currentPage=1'">
                    <th width="150">주문번호</th>
                    <th width="120">회원아이디</th>
                    <th width="120">주문자</th>
                    <th width="120">휴대전화</th>
                    <th width="150">주문총가격</th>
                    <th width="100">주문날짜</th>
                    <th width="150">주문/배송상태</th>
                </tr>
            </thead>
            <tbody>
      			 <% for(OrderDelivery o : list1){ %>
                	<tr onClick="location.href='<%=contextPath%>/paymentList.ad?currentPage=1'">
                	
                    <td><%= o.getOdOrderNo() %></td>
                    <td><%= o.getOdMemberId() %></td>
                    <td><%= o.getOdMemberName() %></td>
                    <td><%= o.getOdPhone() %></td>
                    <td><%= o.getOdPaymentAmount() %></td>
                    <td><%= o.getOdOrderDate() %></td>
                    <% if(o.getOdStatus()==0){ %>
                    <td>결제전</td>
                    <% }if(o.getOdStatus()==1){ %>
                    <td>결제완료</td>
                    <% }if(o.getOdStatus()==2){ %>
                    <td>결제취소</td>
                    <% }if(o.getOdStatus()==3){ %>
                    <td>상품준비중</td>
                   	<% }if(o.getOdStatus()==4){ %>
                    <td>배송중</td>
                    <% }if(o.getOdStatus()==5){ %>
                    <td>배송완료</td>
                    <% }if(o.getOdStatus()==6){ %>
                    <td>반품완료</td>
                    <% } %>
       			<%} %>
            </tbody>
            
        </table>    
      	</div>
      	
      	<div id="body2">
      	<h2>최근 1:1상담</h2>
         <table class="listBody">
         	<thead>
                <tr onClick="location.href='<%=contextPath%>/adOneInquiryList.ad?currentPage=1'">
                    <th width="70">문의번호</th>
                    <th width="150">문의일시</th> 
                    <th width="120">아이디</th>
                    <th width="250">제 목</th>
                    <th width="150">내 용</th>
                    <th width="70">답변여부</th>
                </tr>
            </thead>
            <tbody>
            	<% for(AdOneInquiry i : list2){ %>
                <tr onClick="location.href='<%=contextPath%>/adOneInquiryList.ad?currentPage=1'">
                    <td><%= i.getInquiryBoardNo() %></td>
                    <td><%= i.getInquiryCreateDate() %></td>
                    <td><%= i.getMemberId() %></td>
                    <td><%= i.getInquiryTitle() %></td>
                    <td><%= i.getInquiryContent() %></td>
                    <% if (i.getInquiryResponseYn()==null){ %>
                    <td> 미답변</td>
                    <% }else{ %>
                    <td>답변완료</td>
                    <%} %>
                </tr>
                <% } %>
            
            </tbody>
            </table>
      	</div>
      	
      	<div id="body3">
      	<h2>재입고필요 상품</h2>
      	  <table class="listBody">
            <thead>
                <tr onClick="location.href='<%=contextPath%>/productList.ad?currentPage=1'">
                    <th width="170">상품코드</th>
                    <th width="200">업체명</th>
                    <th width="320">상 품 명</th>
                    <th width="100">판매가</th>
                    <th width="80">재고수량</th>
                </tr>
            </thead>
            <tbody>
                 <% for(Product p : list){ %>
                <tr onClick="location.href='<%=contextPath%>/productList.ad?currentPage=1'">
                    <td><%=p.getProCode() %></td>
                    <td><%=p.getProSupplyName() %></td>
                    <td><%=p.getProName() %></td>
                    <td><%=p.getProPrice() %></td>
                    <td><%=p.getProStock() %></td>
                </tr>
               	<% } %>	
               
            
            </tbody>
         </table>   
      	</div>
      	
      </div>
	</div>

</body>
</html>
