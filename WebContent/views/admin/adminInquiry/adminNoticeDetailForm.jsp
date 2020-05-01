<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.notice.model.vo.*, com.kh.inquiry.model.vo.*"%>
<%
	Attachment at = (Attachment)request.getAttribute("at");
	Notice n = (Notice)request.getAttribute("n");
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
		a:link{
		text-decoration:none;
		color:black;
		}
		.file{
			font-size:12px;
			line-height:1.8;
		}
        
         
        
    </style>
</head>
<body>
		<%@ include file="../adminCommon/adminMainPage.jsp" %>

    <div id="adproductEnroll">
       <div id="outer">
        <h1>&nbsp;&nbsp;&nbsp;공지사항 상세보기</h1>
        <form action="<%=contextPath %>/noticeUpdate.ad" method="post" enctype="multipart/form-data">
	        <table id="adcate">
	        	<input type="hidden" name="mid" value="<%=mid%>">
	            <tr>
	                <td width="200" >* 공지사항 제목</td>
	                <td><input type="text" style="width:300px;" required name="ntTitle" value="<%=n.getNoticeTitle()%>"></td>
	            </tr>
	           
	         	<tr>
	         		<td width="200">* 이미지</td>
	         		<%if(at != null){ %>
	         		<td><p class="file">기존파일 : <a download="<%= at.getChangeName()%>"href="<%=contextPath%>/resources/attachment_notice/<%=at.getChangeName()%>"><%=at.getChangeName() %></a>
	         		     <br><input type="file" name="ntUpfile"></p>
	         		</td>
	         		<%}else{ %>
	         		<td>첨부파일이 없습니다.<br><input type="file" name="ntUpfile"></td>
	         		
	         		<%} %>
	         	</tr>
	                       
	            <tr>
	                <td width="200">* 공지사항 내용</td>
	                <td><textarea cols="40" rows="25" style="resize:none" name="ntContent" required ><%=n.getNoticeContent()%></textarea></td>
	            </tr>
	        </table>
	       		 <div id="enrollsubmit">
	        		<button type="submit" onclick="return updateNotice();">공지사항 수정</button>&nbsp;
	        		<button type="button" onclick="deleteNotice();">공지사항 삭제</button>&nbsp;
	        		<button type="button" onclick="location.href='<%=contextPath%>/noticeList.ad?currentPage=1'">목록으로</button>
        		</div>        
        </form>
       </div>
    </div>
       <script>
  		  function deleteNotice(){   		
    		
	    		var bool = confirm("정말 삭제하겠습니까?");
	    		if(bool){
	    			location.href = "<%=contextPath%>/noticeDelete.ad?mid=<%=mid%>";	
	    		}else{
	    			alert("취소하였습니다.");
    			}
    		
    		}
  		  function updateNotice(){
  			  
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