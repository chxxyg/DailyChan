<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*"%>
<%
	ArrayList<AttachmentProduct> ap = (ArrayList<AttachmentProduct>)request.getAttribute("ap");
	Product p = (Product)request.getAttribute("p");
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
            line-height: 30px;
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
       
        
        #dailyList{height:20px;}
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
		#adcate>tr>td> input{
			width:300px;
		}
		#adcate>tr>td{
			width:300px;
			size:300px;
		}
		#adcate>tr>td input{
			width:300px;
			size:300px;
		}
		.file3{
			font-size:12px;
			 line-height:1.8;
		}
		a:link{
		text-decoration: none;
		color:black;
		}
    </style>
</head>
<body>
		<%@ include file="../adminCommon/adminMainPage.jsp" %>

    <div id="adproductEnroll">
       <div id="outer">
        <h1>&nbsp;&nbsp;&nbsp;상품정보</h1>
            <form id="PdinsertForm" action="<%= contextPath %>/updateProduct.ad" method="post" enctype="multipart/form-data">
        <table id="adcate">
            
            <tr>
                <td width="200" > 카테고리</td>
                <td>
			        <input type="text" value="<%= p.getProCategory() %>" readonly>
        		</td>
            </tr>
            <tr>
                <td width="200">* 상품명</td>
                <td><input type="text" value="<%= p.getProName() %>" name="pdTitle"></td>
            </tr>
            <tr>
                <td width="200">상품코드</td>
                <td><input type="text" value="<%= p.getProCode() %>" name="pdCode" readonly></td>
            </tr>
            <tr>
                <td width="200">납품업체명</td>
                <td><input type="text" value="<%= p.getProSupplyName() %>" readonly>
                </td>
            </tr>
            <tr>
            	
            	<% if (ap.get(0).getAtFileLevel() != 1){ %>
                <td width="200">* 기본이미지</td>
                <td><p class="file3">기존파일 : <a download="<%= ap.get(0).getAtFileName() %>"href="<%=contextPath%>/resources/attachment_product/<%=ap.get(0).getAtFileName() %>" ><%=ap.get(0).getAtFileName() %></a> 
                	<br><input type="file" name="pdUpfile1" value=""></p>
                </td>
                <% }else{ %>
                <td width="200">* 기본이미지<td>
                		파일이 없습니다.<br><input type="file" name="pdUpfile1" value="">
                <% } %>
            </tr>
            <tr>
            	<% if (ap.get(1) != null){ %>
                <td width="200">* 세부 이미지 01</td>
                <td><p class="file3">기존파일 : <a download="<%= ap.get(1).getAtFileName() %>"href="<%=contextPath%>/resources/attachment_product/<%=ap.get(1).getAtFileName() %>" ><%=ap.get(1).getAtFileName() %> </a>
                	<br><input type="file" name="pdUpfile2" ></p>
                </td>
                <% }else{ %>
                <td width="200">* 세부 이미지 01</td>
                	파일이 없습니다.<br><input type="file" name="pdUpfile2" >
                <% } %>
           		
            </tr>


            <tr>
                <td width="200">* 판매가</td>
                <td><input type="text"  value="<%= p.getProPrice() %>" name="pdPrice"></td>
            </tr>
            <tr>
                <td width="200">* 수량</td>
                <td><input type="text"  value="<%= p.getProStock() %>" name="pdStock"></td>
            </tr>
            <tr>
                <% if (ap.get(2) != null){ %>
                <td width="200">* 상품 정보 이미지</td>
                <td><p class="file3">기존파일 : <a download="<%= ap.get(2).getAtFileName() %>"href="<%=contextPath%>/resources/attachment_product/<%=ap.get(2).getAtFileName() %>" ><%=ap.get(2).getAtFileName() %></a> 
                	<br><input type="file" name="pdUpfile3" ></p>
                </td>
                <% }else{ %>
                <td width="200">* 상품 정보 이미지</td>
              	     <p class="file3">파일이 없습니다.<br><input type="file" name="pdUpfile3" ><p>
              	<% } %>     
            </tr>
       		 </table>
       		 <div id="enrollsubmit">
        		<button type="submit" onclick="return updateProduct();">수정하기</button>&nbsp;&nbsp;
        		<button type="button" onclick="deleteProduct();">삭제하기</button>&nbsp;&nbsp;
        		<button type="button" onclick="location.href='<%= contextPath%>/productList.ad?currentPage=1'">목록으로</button>
        	</div> 
        	</form>       
       </div>
    </div>
    <script>
  		  function deleteProduct(){   		
    		
	    		var bool = confirm("정말 삭제 시키겠습니까?");
	    		if(bool){
	    			location.href = "<%=contextPath%>/deleteProduct.ad?mid=<%=p.getProCode()%>";	
	    		}else{
	    			alert("취소하였습니다.");
    			}
    		
    		}
  		  function updateProduct(){
  			  
  			  var bool = confirm("정말 수정 하겠습니까?");
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