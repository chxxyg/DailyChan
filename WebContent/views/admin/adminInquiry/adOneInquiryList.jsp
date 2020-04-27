<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.admin.adminOneInquiry.model.vo.AdOneInquiry" %>
<%
	ArrayList<AdOneInquiry> list = (ArrayList<AdOneInquiry>)request.getAttribute("list"); 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1상담리스트</title>
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
        #allcount{width:1215px; }
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
         
      
    </style>
</head>
<body>
	<%@ include file="../adminCommon/adminMainPage.jsp" %>
	
    <div id="adproduct">
      <div class="outer">
        <h1>&nbsp;&nbsp;&nbsp;1:1상담관리</h1>
        <br>
        	<form id="searchForm" action="<%=contextPath%>/OneInquirySearch.ad" method="post">회원 ID 
        		<input type="text" name="memberId"> <button type="submit" onclick="">조회</button> 
        	</form><br>
        <div id="allcount">
                <div style="width:30%;">총 개수 : <input type="text" id="adproductcount" value="<%= list.size() %>"> 개</div>
                
        </div>  
        <table class="listMember">
            <thead>
                <tr>
                    <th width="70">문의번호</th>
                    <th width="150">문의일시</th> 
                    <th width="120">아이디</th>
                    <th width="250">제목</th>
                    <th width="550">내용</th>
                    <th width="70">답변여부</th>
                </tr>
            </thead>
            <tbody>
					<% for(AdOneInquiry i : list){ %>
                <tr>
                    <td><%= i.getInquiryBoardNo() %></td>
                    <td><%= i.getInquiryCreateDate() %></td>
                    <td><%= i.getMemberId() %></td>
                    <td><%= i.getInquiryTitle() %></td>
                    <td><%= i.getInquiryContent() %></td>
                    <td class="emphasis"><%= i.getInquiryResponseYn() %></td>
                </tr>
                <% } %>
               
                
                
            </tbody>

        </table>  
       </div>
    </div>
    <script>
   		$(function(){
   			$(".listMember>tbody>tr").click(function(){
   				// console.log("클릭");
	   				
	   			var ibn = $(this).children().eq(0).text();
	   				
	 			location.href="<%= contextPath%>/adOneInquiryDetail.ad?ibn=" + ibn; 
 			});
 
   		});   
    </script>
</body>
</html>