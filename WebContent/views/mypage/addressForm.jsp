<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 관리</title>
<style>
	body
	{
		width: 1000px;
		height: 2000px;
		margin: auto;
	}
	.sub_cont {
    position: relative;
    float: left;
    width: 760px;
    min-height: 860px;
    padding: 0 0 40px 30px;
    margin: auto;
}
</style>
</head>
<body>
	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>

	<div id="mys_content" class="sub_cont">
			<h3 class="tit">배송지 관리</h3>
			
			<!-- MY SUMMARY -->
			<div class="mys_summ">
				<div class="txt"><b>오경택</b> 님의 배송지 목록에 총 <b>2</b> 곳이 저장되어 있습니다.</div>
				<button type="button" class="bx" title="배송지 추가 새창" name="modifyBtn" data-modify-yn="N">배송지 추가</button>
			</div>
			<!-- //MY SUMMARY -->
			

			<div class="mys_chk">
				<button type="button" class="bt" title="배송지목록 선택삭제" name="deleteMultiBtn">선택 삭제</button>
			</div>

			<!-- MY LIST -->	
			<div class="mys_tbl">
				<div class="tbl">
					<table>
						<caption>배송지 관리 | 이름,주소,휴대전화,수정/삭제의 정보를 제공하는 표</caption>
						<colgroup>
							<col style="width:50px">
							<col style="width:120px">
							<col style="width:auto">
							<col style="width:190px;">
							<col style="width:120px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><input type="checkbox" id="chk_all" name="chk_all" onclick="checkall(this.checked, 'mbr_dlvp_seq')" title="전체 배송지 선택"></th>
								<th scope="col">이름</th>
								<th scope="col">주소</th>
								<th scope="col">휴대전화</th>
								<th scope="col">수정/삭제</th>
							</tr>
						</thead>
						<tbody>
		
							<tr>
								<td></td>
								<td><span class="nor">오경택 <em class="ic">기본배송지</em></span></td>
								<td>
									<span class="addr">
	
										<em>[21378]</em>
	
										인천광역시 부평구 부흥로243번길 39 (부평동, 욱일아파트) 3동 707호<br>

										인천광역시 부평구 부평동 65-7 욱일아파트 3동 707호

									</span>
								</td>
								<td>
									
								<span class="num">010-8614-5374</span>

								</td>
								<td>
									<span class="btn">
										<button type="button" class="sq" title="배송지 수정 새창" data-mbr_dlvp_seq="0000001" name="modifyBtn" data-modify-yn="Y">수정</button>
									</span>
								</td>
							</tr>

							<tr>
								<td><input type="checkbox" name="mbr_dlvp_seq" value="0000002" title="김길동 배송지선택"></td>
								<td><span class="nor" data-recvr-nm="김길동">김길동</span></td>
								<td>
									<span class="addr">
	
										<em>[21352]</em>
	
										인천광역시 부평구 길주남로 112-13 (부평동) ㄴㅁㅇㅁㅇ<br>

										인천광역시 부평구 부평동 10-43 ㄴㅁㅇㅁㅇ

									</span>
								</td>
								<td>
									
								<span class="num">010-1234-1234</span>

								</td>
								<td>
									<span class="btn">
										<button type="button" class="sq" title="배송지 수정 새창" data-mbr_dlvp_seq="0000002" name="modifyBtn" data-modify-yn="Y">수정</button>
										<button type="button" class="bxs" title="기본배송지 설정 알림" data-mbr_dlvp_seq="0000002" name="modiBaseYnBtn">기본 배송지</button>
										<button type="button" class="del" title="배송지 삭제 알림" name="deleteOneBtn" data-mbr_dlvp_seq="0000002">삭제</button>
									</span>
								</td>
							</tr>
						
						</tbody>
					</table>
				</div>
			
				<!-- PAGING -->
				<div id="box_page" class="paging">
					<span class="page">
					<a href="javascript:void(0);" class="select_num" data-current="true" data-value="1" data-parameters="">1<span class="ir">현재페이지</span></a>
					</span>
				</div>
				<!-- //PAGING -->
			</div>
			<!-- //MY LIST -->	
			
			<!-- MY NOTICE -->
			<div class="mys_notice">
				<h4>배송지 <b>TIP</b></h4>
				<ul>
					<li>회원정보의 회원주소와 이전 주문 주소지는 자동으로 등록됩니다.</li>
					<li>배송지는 최대 30개 까지 저장이 가능합니다.</li>
					<li>제주도 및 해외는 주문이 불가합니다.</li>
				</ul>
			</div>
			<!-- //MY NOTICE -->

		</div>
			<%@ include file="../../views/common/mainFooter.jsp" %>
		
</body>
</html>