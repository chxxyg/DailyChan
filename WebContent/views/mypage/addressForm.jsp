<%@page import="com.kh.mypage.model.vo.Address"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ArrayList<Address> list = (ArrayList<Address>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 관리</title>
<style>
	body
	{
		width: 1000px;
		height: 1700px;
		margin: auto;
	}
	.sub_cont {
    position: relative;
    float: left;
    width: 770px;
    min-height: 860px;
    padding: 0 0 40px 30px;
    margin: auto;
}
.sub_cont button {
    display: block;
    overflow: visible;
    margin: 0;
    padding: 0;
    cursor: pointer;
    border: 0;
    background: none;
}
.sub_cont h3.tit {
    padding: 0 0 15px 0;
    margin-bottom: 25px;
    border-bottom: 1px solid #ededed;
    font-size: 21px;
    color: #000;
    line-height: 22px;
    font-weight: bold;
    letter-spacing: -1px;;
}
.mys_summ {
    position: relative;
    overflow: hidden;
    clear: both;
    padding: 0 0 14px 10px;
}
.mys_summ .txt {
    clear: both;
    padding: 4px 0 18px 10px;
    font-size: 14px;
    line-height: 18px;
    color: #333;
    letter-spacing: -1px;
}
.mys_summ button.bx {
    position: absolute;
    top: 0;
    right: 0;
    height: 36px;
    padding: 0 12px;
    border: 1px solid #dbdbdb;
    font-size: 12px;
    color: #333;
    line-height: 34px;
    letter-spacing: -1px;
    display: block;
    overflow: visible;
    margin: 0;
    cursor: pointer;
    background: none;
}
.mys_chk {
    overflow: hidden;
    clear: both;
    height: 32px;
    margin-bottom: 10px;
}
.mys_chk button.bt {
    border-color: #999;
}
.mys_chk button {
    float: left;
    height: 30px;
    padding: 0 11px 2px 11px;
    margin-right: 6px;
    border: 1px solid #dbdbdb;
    font-size: 12px;
    line-height: 14px;
    color: #333;
    letter-spacing: -1px;
    display: block;
    overflow: visible;
    margin: 0;
    cursor: pointer;
    background: none;
}
.mys_tbl {
    overflow: hidden;
    clear: both;
    margin-bottom: 50px;
}
.mys_tbl .tbl {
    position: relative;
    overflow: hidden;
    border-bottom: 1px solid #ddd;
    background: #fff;
    display: block;
}
.mys_tbl .tbl table {
    table-layout: fixed;
    width: 100%;
    border-top: 1px solid #333;
    margin: 0 -1px -1px 0;
    min-width: 100%;
    max-width: none;
    border-spacing: 0;
    border-collapse: collapse;
}
.mys_tbl .tbl table thead th {
    height: 42px;
    border-bottom: 1px solid #dbdbdb;
    font-size: 12px;
    color: #333;
    text-align: center;
    letter-spacing: -1px;
    background: #f4f4f4;
    font-weight: normal;
    font-style: normal;
}
.mys_tbl .tbl td .nor {
    color: #666;
}

.mys_tbl .tbl td span {
    display: block;
}
.mys_tbl .tbl td .nor em.ic {
    display: block;
    width: 56px;
    height: 14px;
    margin: 5px auto 0 auto;
    border: 1px solid #f7702e;
    font-style: normal;
    font-size: 11px;
    color: #f7702e;
    line-height: 11px;
    letter-spacing: -1px;
}
.mys_tbl .tbl td {
    padding: 14px 5px;
    border-bottom: 1px solid #eee;
    font-size: 13px;
    line-height: 18px;
    color: #666;
    letter-spacing: -1px;
    text-align: center;
}
.mys_tbl .tbl td .addr {
    padding-left: 10px;
    font-size: 13px;
    line-height: 20px;
    color: #666;
    text-align: left;
    letter-spacing: 0;
}
.mys_tbl .tbl td .addr em {
    display: block;
    font-style: normal;
}
.mys_tbl .tbl td .btn {
    font-size: 12px;
}
.mys_tbl .tbl td .btn button.sq {
    display: block;
    width: 86px;
    height: 32px;
    margin: 5px auto;
    color: #fff;
    background: #363441;
}
.mys_tbl .tbl td .btn button {
    display: inline-block;
    font-size: 12px;
    line-height: 30px;
    color: #222;
    text-align: center;
}
.mys_tbl .tbl td .btn button.bxs {
    display: block;
    width: 86px;
    height: 32px;
    margin: 5px auto;
    border: 1px solid #dbdbdb;
}
.mys_tbl .tbl td .btn button.del {
    display: block;
    width: 86px;
    height: 32px;
    margin: 5px auto;
    border: 1px solid #dbdbdb;
}
.mys_notice {
	height: 90px;
    overflow: hidden;
    clear: both;
    padding: 20px 34px 34px 110px;
    margin-bottom: 50px;
    background: #efefef url(/dailyChan/resources/img/ico_noti_b.png) no-repeat 40px 40px;
}
.mys_notice h4 {
    margin-bottom: 8px;
    font-size: 16px;
    line-height: 18px;
    color: #333;
    font-weight: bold;
}
.mys_notice ul
{
	list-style: none;
	padding-inline-start: 0;
	margin-block-start: 0em;
    margin-block-end: 0em;
}
.mys_notice li {
    padding: 0 0 4px 12px;
    font-size: 13px;
    line-height: 18px;
    color: #666;
    letter-spacing: -1px;
    background: url(/dailyChan/resources/img/bu_box_gray.png) no-repeat 0 8px;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/dailyChan/resources/js/addressForm.js" rel="javascript" type="text/javascript"></script>
</head>
<body>
	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>
	<input type="hidden" id="userId" value="<%=m.getMemberId()%>">
	<div id="mys_content" class="sub_cont">
			<h3 class="tit">배송지 관리</h3>
			<input id="userId" type="hidden" name="userId" value="<%=m.getMemberId()%>">
			<!-- MY SUMMARY -->
			<div class="mys_summ">
				<input type="hidden" id="addrNo" value="<%=list.size() %>">
				<div class="txt"><b><%=m.getMemberName() %></b> 님의 배송지 목록에 총 <b><%=list.size() %></b> 곳이 저장되어 있습니다.</div>
				<button type="button" class="bx" title="배송지 추가 새창" name="modifyBtn" data-modify-yn="N" data-mbr_dlvp_seq="0">배송지 추가</button>
			</div>
			<!-- //MY SUMMARY -->
			

			<div class="mys_chk">
				<button type="button" class="bt" title="배송지목록 선택삭제" name="deleteMultiBtn">선택 삭제</button>
			</div>

			<!-- MY LIST -->	
			<div class="mys_tbl">
				<div class="tbl">
					<table>
						<colgroup>
							<col style="width:50px">
							<col style="width:120px">
							<col style="width:auto">
							<col style="width:190px;">
							<col style="width:120px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><input type="checkbox" id="chk_all" name="chk_all" title="전체 배송지 선택"></th>
								<th scope="col">이름</th>
								<th scope="col">주소</th>
								<th scope="col">휴대전화</th>
								<th scope="col">수정/삭제</th>
							</tr>
						</thead>
						<tbody>
							<%for(int i = 0; i < list.size(); i++){ %>
							<tr>
								<td>
									<% if(list.get(i).getAddressDefault().equals("N")){ %>
										<input type="checkbox" class="chk" name="mbr_dlvp_seq" value="<%= m.getMemberId() %>" >
									<% } %>
								</td>
								<td>
									<span class="nor"><%= list.get(i).getAddressName() %>
										<%if(list.get(i).getAddressDefault().equals("Y")){ %>
										<em class="ic">기본배송지</em>
										<% } %>
									</span>
								</td>
								<td>
									<span class="addr">
	
										<em>[<%=list.get(i).getZipCode() %>]</em>
	
										<%=list.get(i).getAddress() %><br>

										<%= list.get(i).getAddressDetail() %>

									</span>
								</td>
								<td>
									
								<span class="num">
									<% 	String result = list.get(i).getPhone();
										String phone = result.substring(0, 3);
										if(result.length() == 11)
										{
										    phone += "-" + result.substring(3, 7);
										    phone += "-" + result.substring(7);
										}
										else if(result.length() == 10)
										{
										    phone += "-" + result.substring(3, 6);
										    phone += "-" + result.substring(6);
										}
									%>
									<%= phone %>
								</span>

								</td>
								<td>
									<span class="btn">
										<button type="button" class="sq" title="배송지 수정 새창" data-mbr_dlvp_seq="000000<%=i %>" name="modifyBtn" data-modify-yn="Y">수정</button>
										<% if(list.get(i).getAddressDefault().equals("N")){ %>
										<button type="button" class="bxs" title="기본배송지 설정 알림" data-mbr_dlvp_seq="000000<%=i %>" name="modiBaseYnBtn" value="<%= m.getMemberId() %>">기본 배송지</button>
										<button type="button" class="del" title="배송지 삭제 알림" name="deleteOneBtn" data-mbr_dlvp_seq="000000<%=i %>" value="<%= m.getMemberId() %>">삭제</button>
										<% } %>
									</span>
								</td>
							</tr>
							<% } %>
						</tbody>
					</table>
				</div>
			</div>
			<!-- //MY LIST -->	
			
			<!-- MY NOTICE -->
			<div class="mys_notice">
				<h4>배송지 <b>TIP</b></h4>
				<ul>
					<li>배송지는 최대 2개 까지 저장이 가능합니다.</li>
					<li>제주도 및 해외는 주문이 불가합니다.</li>
				</ul>
			</div>
			<!-- //MY NOTICE -->

		</div>
			<%@ include file="../../views/common/mainFooter.jsp" %>
			
			
		
</body>
</html>