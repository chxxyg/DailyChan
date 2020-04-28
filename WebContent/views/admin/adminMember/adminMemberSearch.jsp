<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.member.model.vo.Member, com.kh.admin.adminMember.model.vo.*" %> 
    
<%

	
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
	int count = (Integer)request.getAttribute("count");
			
	AdPageInfo pi = (AdPageInfo)request.getAttribute("pi");
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	int listCount = pi.getListCount();
	
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
        .listMember{
            margin-top:30px;
            text-align:center;
            width:1150px;
            border: 1px solid #181c20;
            position:relative;
            max-height:600px;
            border-collapse:collapse; 
            
        }
      	/*상품 등록 삭제 버튼css*/
        #allcount{width:1150px; }
        #allcount>div{float:left;}
        
        /*테이블 헤드*/
        .listMember>thead>tr>th{
            border:1px solid #181c20;
            
        }
       
        
        .listMember>tbody>tr>td{
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
		.listMember>tbody>tr:hover {
			background:linear-gradient(to bottom, #1d1d1d 5%, #e9e7e5 100%);
			background-color:#5554547e;
			cursor:pointer;
		}
        
      
    </style>
</head>
<body>
	<%@ include file="../adminCommon/adminMainPage.jsp" %>
	
    <div id="adproduct">
      <div class="outer">
        <h1>&nbsp;&nbsp;&nbsp;회원관리</h1>
        <br>
        	<form id="searchForm" action="<%=contextPath%>/memberSearch.ad" method="get">회원 ID 
        	<input type="hidden" name="currentPage" value="1">
        		<input type="text" name="memberId"> <button type="submit" onclick="">조회</button> 
        	</form><br>
        <div id="allcount">
                <div style="width:30%;">총 회원 수 : <input type="text" id="adproductcount" value="<%= pi.getListCount() %>"> 명</div>
                <div style="width:70%; text-align:right;"><button onclick="location.href='<%=contextPath%>/memberList.ad?currentPage=1'">전체리스트</button> </div>
        </div>  
        <table class="listMember">
            <thead>
                <tr>
                    <th width="120">아이디</th>
                    <th width="150">이름</th> 
                    <th width="250">이메일</th>
                    <th width="150">전화번호</th>
                    <th width="100">가입일</th>
                    <th width="100">수정일</th>
                    <th width="150">탈퇴여부</th>
                    <th width="150">적립금</th>
                </tr>
            </thead>
            <tbody>
                    <% for(Member m : list){ %>
                <tr>
                    <td><%= m.getMemberId() %></td>
                    <td><%= m.getMemberName() %></td>
                    <td><%= m.getEmail() %></td>
                    <td><%= m.getPhone() %></td>
                    <td><%= m.getEnrollDate() %></td>
                    <td><%= m.getModifyDate() %></td>
                    <td><%= m.getDelMemberYn() %></td>
                    <td><%= m.getPointSum() %></td>
                </tr>
                <% } %>
               
                
                
            </tbody>

        </table> 
        <br><br><br>
       <div class="pagingArea" align="center">
			<% if(currentPage!=1) {%>
			<button onclick="location.href='memberSearch.ad?currentPage=1'"> &lt;&lt; </button>
			
			<button onclick="location.href='memberSearch.ad?currentPage=<%=currentPage-1%>';"> &lt;</button>
			<% } %>
			
			<%for(int p=startPage; p<=endPage; p++){ %>
				<% if(currentPage != p){%>
				<button onclick="location.href='memberSearch.ad?currentPage=<%=p%>';"><%=p%></button>
				<% }else { %>
				<button disabled><%=p %></button>	
				<% } %>
			<%} %>
			
			<% if(currentPage!=maxPage) {%>
			<button onclick="location.href='memberSearch.ad?currentPage=<%=currentPage+1%>';"> &gt;</button>
			<button onclick="location.href='memberSearch.ad?currentPage=<%=maxPage%>';"> &gt;&gt; </button>
			<% } %>
		</div>         
       </div>
    </div>
    <script>
   		$(function(){
   			$(".listMember>tbody>tr").click(function(){
   				// console.log("클릭");
	   				
	   			var mid = $(this).children().eq(0).text();
	   				
	 			location.href="<%= contextPath%>/detail.ad?mid=" + mid; 
 			});
 
   		});   
    </script>
</body>
</html>
