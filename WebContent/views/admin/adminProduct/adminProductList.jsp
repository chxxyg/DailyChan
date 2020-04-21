<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product, com.kh.admin.adminMember.model.vo.*"%>
<%
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
	AdPageInfo pi = (AdPageInfo)request.getAttribute("pi");
	int count = (Integer)request.getAttribute("count");
	
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
        .listProduct{
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
        .listProduct>thead>tr>th{
            border:1px solid #181c20;
            
        }
       
        
        .listProduct>tbody>tr>td{
            border: 1px solid #181c20;
            table-layout:fixed;
            
            
        }
        tbody{vertical-align: top;
        }
        table{table-layout:fixed;}
        Button {
			box-shadow:inset 0px 1px 0px 0px #fce2c1;
			background:linear-gradient(to bottom, #ffc477 5%, #fb9e25 100%);
			background-color:#ffc477;
			border-radius:6px;
			border:1px solid #eeb44f;
			display:inline-block;
			cursor:pointer;
			color:#ffffff;
			font-family:Arial;
			font-size:13px;
			font-weight:bold;
			padding:6px 11px;
			text-decoration:none;
			text-shadow:0px 1px 0px #cc9f52;
		}
		Button:hover {
			background:linear-gradient(to bottom, #fb9e25 5%, #ffc477 100%);
			background-color:#fb9e25;
		}
		Button:active {
			position:relative;
			top:1px;
		}
        
      
    </style>
</head>
<body>
		<%@ include file="../adminCommon/adminMainPage.jsp" %>
	
    <div id="adproduct">
      <div class="outer">
        <h1>&nbsp;&nbsp;&nbsp;상품관리</h1>
        <br>
        	상품명 <input type="text"> <button type="button" onclick="">조회</button><br>
        <div id="allcount">
                <div style="width:30%;">총 상품 수 :  <input type="text" id="adproductcount" value="<%= count%>"> 개</div>
                <div style="width:70%; text-align:right;"><button onclick="location.href='http://localhost:9999/dailyChan/views/admin/adminProduct/adminProductEnrollForm.jsp'">상품등록</button> <button>선택삭제</button></div>
        </div>  
        <table class="listProduct">
            <thead>
                <tr>
                    <th width="170">상품코드</th>
                    <th width="200">업체명</th>
                    <th width="320">상품명</th>
                    <th width="100">판매가</th>
                    <th width="80">재고수량</th>
                </tr>
            </thead>
            <tbody>
        		    <% for(Product p : list){ %>
                <tr>
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
    <br><br>
		
		<!-- 현재 페이지에 보여질 페이징바 -->
		<div class="pagingArea" align="center">
			<% if(currentPage!=1) {%>
			<!-- 맨 처음으로(<<) -->
			<button onclick="location.href='productList.ad?currentPage=1'"> &lt;&lt; </button>
			
			<!-- 이전페이지로 (<) -->
			<button onclick="location.href='productList.ad?currentPage=<%=currentPage-1%>';"> &lt;</button>
			<% } %>
			
			<%for(int p=startPage; p<=endPage; p++){ %>
				<% if(currentPage != p){%>
				<button onclick="location.href='productList.ad?currentPage=<%=p%>';"><%=p%></button>
				<% }else { %>
				<button disabled><%=p %></button>	
				<% } %>
			<%} %>
			
			<% if(currentPage!=maxPage) {%>
			<!-- 다음페이지로 (<) -->
			<button onclick="location.href='productList.ad?currentPage=<%=currentPage+1%>';"> &gt;</button>
			<!-- 맨 마지막으로 (>>) -->
			<button onclick="location.href='productList.ad?currentPage=<%=maxPage%>';"> &gt;&gt; </button>
			<% } %>
		</div>
	</div>
     
</body>
</html>