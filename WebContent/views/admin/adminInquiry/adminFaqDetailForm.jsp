<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.frequentInquiry.model.vo.*"%>
<%
	FrequentInquiry f = (FrequentInquiry) request.getAttribute("f");
	String mid = request.getParameter("mid");
%>    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
    /*content*/
    	body{margin:0px;padding:0px; left:0; top:0; box-sizing:border-box;}
        #adproductEnroll{
            width:100%;height:100%; background-color: white;
            position: fixed; left: 15%; top:5%;
        }
         #adcate{
            margin-left:80px;
            margin-top:50px;
            line-height: 40px;
            font-weight: bolder;
            height:280px;
            
        }
        #outer{
			margin:15px;
         	padding:15px;
         	width:700px;
         	height:90%;
         	background:rgba(255,240,240,0.6);
         	opacity:0.7;  
         	border-radius:50px; 
         	margin-left:50px;  
             box-shadow:inset 1px 2px 5px 5px #aeb2b7;
             
        }
        #enrollsubmit{
        	text-align:center;
            margin-top:50px;
            
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
        
    </style>
</head>
<body>
		<%@ include file="../adminCommon/adminMainPage.jsp" %>

    <div id="adproductEnroll">
       <div id="outer">
        <h1>&nbsp;&nbsp;&nbsp;FAQ 작성</h1>
        <form action="<%=contextPath %>/updateFaq.ad" method="post">
        <input type="hidden" name="mid" value=<%=mid %>>
        <table id="adcate">
            <tr>
                <td width="200" >* 카테고리</td>
                <% if(f.getFaqCategory()==1){ %>
                <td><input type="text" readonly value="주문/취소"></td>
                <% }if(f.getFaqCategory()==2){ %>
                <td><input type="text" readonly value="배송"></td>
                <% }if(f.getFaqCategory()==3){ %>
                <td><input type="text" readonly value="쿠폰/기타"></td>
                <% }if(f.getFaqCategory()==4){ %>
                <td><input type="text" readonly value="회원정보"></td>
                <% }if(f.getFaqCategory()==5){ %>
                <td><input type="text" readonly value="제품"></td>
                <%} %>
            </tr>
            <tr>
                <td width="200">* 제목</td>
                <td><input type="text" required name="faqTitle" value="<%=f.getFaqTitle() %>"></td>
            </tr>
                       
            <tr>
                <td width="200">FAQ 상세내용</td>
                <td><textarea cols="40" rows="25" style="resize:none" name="faqContent" required><%=f.getFaqContent() %></textarea></td>
            </tr>
        </table>
       		 <div id="enrollsubmit">
        		<button type="submit" onclick="return updateFaq();">FAQ 수정</button>&nbsp;
        		<button type="button" onclick="deleteFaq();">삭제하기</button>&nbsp;
        		<button type="button" onclick="location.href='<%=contextPath%>/faqList.ad?currentPage=1'">목록으로</button>
        	</div>
        	</form>        
       </div>
    </div>
     <script>
  		  function deleteFaq(){   		
    		
	    		var bool = confirm("정말 삭제시키겠습니까?");
	    		if(bool){
	    			location.href = "<%=contextPath%>/faqDelete.ad?mid=<%=mid %>";	
	    		}else{
	    			alert("취소하였습니다.");
    			}
    		
    		}
  		  function updateFaq(){
  			  
  			  var bool = confirm("정말 수정하겠습니까?");
  			  if(bool){
  				  return true;
  			  }else{
  				  alert("취소하였습니다.");
  				  return false;
  			  }
  			  
  		  }
  		  
  		  
    </script>
</body>
</html>