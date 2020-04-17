<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/productDetailPage.css">
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

    <table id="productDetail">
        <tr>
            <td>
                <table id="productImg">
                    <tr>
                        <td colspan="4"><img id="productTitleImg" src="../../resources/sampledata/햄듬뿍부대찌개.jpg"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table id="productInfo">
                    <tr>
                        <td><div id="productName">데일리찬 상품명</div></td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td><div id="productPrice1">가격</div></td>
                                    <td><div id="productPrice2">10,000</div></td>
                                    <td><div id="productPrice3">원</div></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td><div class="productLine"></div></td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td><div id="productGpa">★★★★☆ 4.7</div></td>
                                    <td><div id="productReview">리뷰(120건)</div></td>
                                    <td><div id="productShare"><a href=""><img src="<%= request.getContextPath() %>/resources/img/sharelogo.png" width="30" height="30"></a></div></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td><div id="productPoint">적립금안내 &nbsp;&nbsp;|&nbsp;&nbsp; 구매 금액의 1% 포인트 적립</div></td>
                    </tr>
                    <tr>
                        <td><div id="productDelivery">배송비안내 &nbsp;&nbsp;|&nbsp;&nbsp; 3만원 이상 구매 시 무료배송 (배송비 3000원)</div></td>
                    </tr>
                    <tr>
                        <td><div class="productLine"></div></td>
                        
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <div id="productAmountWrap">
                                            <button id="productMinusBtn" type="button">-</button>
                                            <span id="productAmount">60</span>
                                            <button id="productPlusBtn" type="button">+</button>
                                        </div>
                                    </td>
                                    <td><div id="productTotal">총 제품 금액</div></td>
                                    <td><div id="productTotalPrice">600,000원</div></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td><button id="productBtn1" class="productBtn" type="button">바로구매</button></td>
                                    <td><button id="productBtn2" class="productBtn" type="button">장바구니</button></td>
                                    <td><button id="productBtn3" class="productBtn" type="button">찜하기</button></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <div class="line"></div>

    <table id="detailWrap">
        <tr>
            <td>
                <table class="detailBtns">
                    <tr>
                        <td><a href=""><div class="detailBtn" id="detailBtnA1">상세설명</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnB1">상품정보</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnC1">리뷰(120건)</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnD1">상품문의</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <div><img id="detailImg" src="../../resources/sampledata/햄듬뿍부대찌개_detail.jpg" style="width:800px; margin-left:100px;"></div>
            </td>
        </tr>
        <tr>
            <td>
                <table class="detailBtns">
                    <tr>
                        <td><a href=""><div class="detailBtn" id="detailBtnA2">상세설명</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnB2">상품정보</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnC2">리뷰(120건)</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnD2">상품문의</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <div><img id="detailInfo" src="../../resources/sampledata/햄듬뿍부대찌개_info.jpg" style="width:900px; margin-left:50px"></div>
            </td>
        </tr>
        <tr>
            <td>
                <table class="detailBtns">
                    <tr>
                        <td><a href=""><div class="detailBtn" id="detailBtnA3">상세설명</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnB3">상품정보</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnC3">리뷰(120건)</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnD3">상품문의</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table id="detailReview">
                    <tr>
                        <td width="1000px">
                            <span id="detailGpaLabel">구매 고객 평점&nbsp;&nbsp;</span>
                            <span id="detailGpa">★★★★☆ 4.7</span>
                            <span id="detailGpaInfo">등록된 리뷰 120건 기준</span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table id="detailReviewList">
                    <tr>
                        <td>1234</td>
                        <td>★★★★☆</td>
                        <td>데일리찬 리뷰 나야나~~!~!@!@#</td>
                        <td>writerID</td>
                        <td>2020-04-10</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <button id="detailReviewBtn" type="button">리뷰 작성</button>
            </td>
        </tr>
        <!-- 상세조회(클릭 시 슬라이드 다운), 페이징 기능 추가하기 -->
        <tr>
            <td>
                <table class="detailBtns">
                    <tr>
                        <td><a href=""><div class="detailBtn" id="detailBtnA4">상세설명</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnB4">상품정보</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnC4">리뷰(120건)</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnD4">상품문의</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table id="detailQnaList">
                    <tr>
                        <td>1234</td>
                        <td>배송문의</td>
                        <td>데일리찬 배송 빨리해주시조</td>
                        <td>writerID</td>
                        <td>2020-04-10</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <button id="detailQnaBtn" type="button">문의하기</button>
            </td>
        </tr>
        <!-- 상세조회(클릭 시 슬라이드 다운), 페이징 기능 추가하기 -->
    </table>
        
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>
    
</body>
</html>