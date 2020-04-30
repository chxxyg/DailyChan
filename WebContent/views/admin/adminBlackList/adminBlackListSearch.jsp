<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.admin.adminBlackList.model.vo.BlackList, com.kh.admin.adminMember.model.vo.*" %> 
    
<%

	
	ArrayList<BlackList> list = (ArrayList<BlackList>)request.getAttribute("list");
	//PageInfo pi = (pageInfo)request.getAttribute("pi");
	//int count = (Integer)request.getAttribute("count");
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
    <title>블랙리스트 조회</title>
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
         	width:1300px;
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
            width:1100px;
            border: 1px solid #181c20;
            position:relative;
            max-height:600px;
            /*border-collapse:collapse; 테이블 간격 없애는구문*/
            
        }
      	/*상품 등록 삭제 버튼css*/
        #allcount{width:1100px; }
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
		.emphasis {
			box-shadow:inset 0px 1px 0px 0px #181c20;
			background:linear-gradient(#181c20);
			background-color:#181c20;
			border:1px solid #181c20;
			cursor:pointer;
			color:#ffffff;
			font-family:Arial;
			font-weight:bold;

			text-decoration:none;
			text-shadow:0px 1px 0px #181c20;
		}
		.emphasis:hover {
			background:linear-gradient(to bottom, #1d1d1d 5%, #e9e7e5 100%);
			background-color:#5554547e;
		}
		.emphasis:active {
			position:relative;
			top:1px;
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
        <h1>&nbsp;&nbsp;&nbsp;블랙리스트</h1>
        <br>
        	<form id="blackListForm" action="<%=contextPath%>/blackListSearch.ad" method="post">회원 ID 
        	 <input type="hidden" name="currentPage" value="1">
        		<input type="text" name="memberId"> <button type="submit" onclick="">조회</button> 
        	</form><br>       	
        <div id="allcount">
                <div style="width:30%;">총 인원 수 : <input type="text" id="adproductcount" value="<%= pi.getListCount() %>"> 명</div>
                <div style="width:70%; text-align:right;"><button onclick="location.href='<%=contextPath%>/blackListEnroll.ad'">추가</button> </div>
        </div>  
        <table class="listMember">
            <thead>
                <tr>
                    <th width="80">번호</th>
                    <th width="120">아이디</th> 
                    <th width="400">사유</th>
                    <th width="150">제제일자</th>
                    <th width="80">해제여부</th>
                </tr>
            </thead>
            <tbody>
                 <% for(BlackList b : list){ %>
                <tr>
                    <td><%= b.getBlackNo() %></td>
                    <td><%= b.getMemberId() %></td>
                    <td><%= b.getPenaltyCuase() %></td>
                    <td><%= b.getPenaltyDate() %></td>
                    <td class="emphasis"><%= b.getNonblockYn() %></td>
                </tr>
                <% } %>
              
            </tbody>

        </table>  
        <br><br><br>
        <div class="pagingArea" align="center">
			<% if(currentPage!=1) {%>
			<button onclick="location.href='blackListSearch.ad?currentPage=1'"> &lt;&lt; </button>
			
			<button onclick="location.href='blackListSearch.ad?currentPage=<%=currentPage-1%>';"> &lt;</button>
			<% } %>
			
			<%for(int p=startPage; p<=endPage; p++){ %>
				<% if(currentPage != p){%>
				<button onclick="location.href='blackListSearch.ad?currentPage=<%=p%>';"><%=p%></button>
				<% }else { %>
				<button disabled><%=p %></button>	
				<% } %>
			<%} %>
			
			<% if(currentPage!=maxPage) {%>
			<button onclick="location.href='blackListSearch.ad?currentPage=<%=currentPage+1%>';"> &gt;</button>
			<button onclick="location.href='blackListSearch.ad?currentPage=<%=maxPage%>';"> &gt;&gt; </button>
			<% } %>
		</div>
       </div>
    </div>
    <script>
   		$(function(){
   			$(".listMember>tbody>tr").click(function(){
   				// console.log("클릭");
	   				
	   			var bno = $(this).children().eq(0).text();
	   				
	 			location.href="<%= contextPath%>/blackListDetail.ad?bno=" + bno; 
 			});
 
   		});   
    </script>
</body>
</html>
