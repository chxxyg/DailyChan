<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.frequentInquiry.model.vo.FrequentInquiry, com.kh.admin.adminMember.model.vo.* "%>
<%
	ArrayList<FrequentInquiry> list = (ArrayList<FrequentInquiry>)request.getAttribute("list");
	
	
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
        .listFaq{
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
        .listFaq>thead>tr>th{
            border:1px solid #181c20;
            
        }
       
        
        .listFaq>tbody>tr>td{
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
		.listFaq>tbody>tr:hover {
			background:linear-gradient(to bottom, #1d1d1d 5%, #e9e7e5 100%);
			background-color:#5554547e;
			cursor:pointer;
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
        <h1>&nbsp;&nbsp;&nbsp;FAQ 관리</h1>
        <br>
        	<form action="<%=contextPath%>/faqSearch.ad?currentPage=1" method="get">
        	<input type="hidden" name="currentPage" value="1">
        	카테고리 <select name="faqCategory">
	        			<option value="1">주문/취소</option>
	                	<option value="2">배송</option>
	                	<option value="3">쿠폰/기타</option>
	                	<option value="4">회원정보</option>
	                	<option value="5">제품</option>
        		  </select> <button type="submit" onclick="">조회</button><br>
        	</form>
        <div id="allcount">
                <div style="width:30%;">총 게시글 :  <input type="text" id="adproductcount" value="<%=pi.getListCount()%>"> 개</div>
                <div style="width:70%; text-align:right;"><button onclick="location.href='<%=contextPath%>/faqEnrollForm.ad'">작성하기</button> </div>
        </div>  
        <table class="listFaq">
            <thead>
                <tr>
                    <th width="50">번호</th>
                    <th width="250">카테고리</th>
                    <th width="450">제목</th>
                   
                </tr>
            </thead>
            <tbody>
            		<% for(FrequentInquiry f : list){ %>
                <tr>
                    <td><%=f.getFaqBoardNo() %></td>
                    <% if(f.getFaqCategory()==1){ %>
                    <td>주문/취소</td>
                    <% }if(f.getFaqCategory()==2){ %>
                    <td>배송</td>
                    <% }if(f.getFaqCategory()==3){ %>
                    <td>쿠폰/기타</td>
                    <% }if(f.getFaqCategory()==4){ %>
                    <td>회원정보</td>
                    <% }if(f.getFaqCategory()==5){ %>
                    <td>제품</td>
                    <%} %>
                    <td><%=f.getFaqTitle() %></td>
                </tr>
                <% } %>
            </tbody>

        </table>  
           <br><br><br>
       <div class="pagingArea" align="center">
			<% if(currentPage!=1) {%>
			<button onclick="location.href='faqList.ad?currentPage=1'"> &lt;&lt; </button>
			
			<button onclick="location.href='faqList.ad?currentPage=<%=currentPage-1%>';"> &lt;</button>
			<% } %>
			
			<%for(int p=startPage; p<=endPage; p++){ %>
				<% if(currentPage != p){%>
				<button onclick="location.href='faqList.ad?currentPage=<%=p%>';"><%=p%></button>
				<% }else { %>
				<button disabled><%=p %></button>	
				<% } %>
			<%} %>
			
			<% if(currentPage!=maxPage) {%>
			<button onclick="location.href='faqList.ad?currentPage=<%=currentPage+1%>';"> &gt;</button>
			<button onclick="location.href='faqList.ad?currentPage=<%=maxPage%>';"> &gt;&gt; </button>
			<% } %>
		</div>                  
               
       </div>
    </div>
    <script>
   		$(function(){
   			$(".listFaq>tbody>tr").click(function(){
   				// console.log("클릭");
	   				
	   			var mid = $(this).children().eq(0).text();
	   			// faq번호 밸류값이 넘어감 
	   			
	 			location.href="<%= contextPath%>/faqDetail.ad?mid=" + mid; 
 			});
 
   		});   
    </script>
</body>
</html>