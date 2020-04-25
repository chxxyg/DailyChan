<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.orderDelivery.model.vo.OrderDelivery, com.kh.admin.adminMember.model.vo.*"%>
<%
	ArrayList<OrderDelivery> list = (ArrayList<OrderDelivery>)request.getAttribute("list");
	int count = (Integer)request.getAttribute("count");
	
	AdPageInfo pi = (AdPageInfo)request.getAttribute("pi");
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	
%>       
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
    /*content*/
    	body{margin:0px;padding:0px; left:0; top:0; box-sizing:border-box;}
        #adproduct{
            width:100%;height:100%; background-color: white;
            position: fixed; left: 15%; top:5%;
        }
        #adproductcount{
            width:25px;
            border:none;
            color:black;
        }
        #allcount{
            margin-top: 10px;
        }
        .listProduct{
            margin-top:30px;
            text-align:center;
            width:1150px;
            border: 1px solid ;
            position:relative;
            max-height:600px;
            border-collapse:collapse;
        }
        .listProduct>thead>tr>th{
            border:1px solid black;
        }
        #allcount{width:1150px; }
        .listProduct>tbody tr td{
            border: 1px solid black;
        }
        .listProduct>tbody tr td th{									
			height: 20px;
        }
        .outer{
         	margin:15px;
         	padding:15px;
         	width:1400px;
         	height:90%;
         	background:white;
         	opacity:0.7;
        }
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
		.listProduct>tbody>tr:hover {
			background:linear-gradient(to bottom, #1d1d1d 5%, #e9e7e5 100%);
			background-color:#5554547e;
			cursor:pointer;
		}
		#ordercategory{
			border:none;
			width:100%;
			font-size:16px;
		}
		.pagingArea{
			text-align:center;
			margin-right:220px;
		}
    </style>
</head>
<body>

		<%@ include file="../adminCommon/adminMainPage.jsp" %>
	
    <div id="adproduct">
      <div class="outer">
        <h1>&nbsp;&nbsp;&nbsp;결제관리</h1>
        <br>
        	아이디 <input type="text"> <button type="button" onclick="">조회</button><br>
        <div id="allcount">
            <div id="countcontent">
                <div style="width:30%;">총 결제 : <input type="text" id="adproductcount" value="<%= count%>"> 개</div>
               
            </div>
        </div>  
        <table class="listProduct">
            <thead>
                <tr>
                    <th width="110">주문번호</th>
                    <th width="250">회원아이디</th>
                    <th width="200">주문자</th>
                    <th width="250">휴대전화</th>
                    <th width="150">주문총가격</th>
                    <th width="200">주문날짜</th>
                    <th width="150">주문/배송상태</th>
                    <th width="150">주문/배송상태변경</th>
                    <th width="60">변경</th>
                </tr>
            </thead>
            <tbody>
            	
               		<% for(OrderDelivery o : list){ %>
                	<tr>
                	
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
                   <form action="<%=contextPath %>/adpayCategory.ad" method="get">
                   <input type="hidden" name="currentPage" value="1">
                   <input type="hidden" name="payNo" value="<%=o.getOdOrderNo()%>">
                    <td>
	                    <select id="ordercategory" name="payCategory" >
	                    	<option value=0>결제 전</option>
	                    	<option value=1>결제완료</option>
	                    	<option value=2>결제취소</option>
	                    	<option value=3>상품준비중</option>
	                    	<option value=4>배송중</option>
	                    	<option value=5>배송완료</option>
	                    	<option value=6>반품완료</option>
	                    </select>
                    </td>
                    <td> <button type="submit" onclick="">변경</button></td>
                    </form>
                	</tr>
                	<% } %>
                
                
            </tbody>

        </table>  
        <br><br><br>
       <div class="pagingArea" >
			<% if(currentPage!=1) {%>
			<button onclick="location.href='paymentList.ad?currentPage=1'"> &lt;&lt; </button>
			
			<button onclick="location.href='paymentList.ad?currentPage=<%=currentPage-1%>';"> &lt;</button>
			<% } %>
			
			<%for(int p=startPage; p<=endPage; p++){ %>
				<% if(currentPage != p){%>
				<button onclick="location.href='paymentList.ad?currentPage=<%=p%>';"><%=p%></button>
				<% }else { %>
				<button disabled><%=p %></button>	
				<% } %>
			<%} %>
			
			<% if(currentPage!=maxPage) {%>
			<button onclick="location.href='paymentList.ad?currentPage=<%=currentPage+1%>';"> &gt;</button>
			<button onclick="location.href='paymentList.ad?currentPage=<%=maxPage%>';"> &gt;&gt; </button>
			<% } %>
		</div>
       </div>
    </div>
    
</body>
</html>