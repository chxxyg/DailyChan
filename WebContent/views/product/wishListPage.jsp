<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜하기</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/wishListPage.css">
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

    <table id="wishListWrap">
        <tr>
            <td colspan="4" style="font-size: 50px; font-weight: 600; text-align: center; padding-bottom: 50px;">내가 찜한 상품</td>
        </tr>
        <!-- 찜한 순서대로 담을거라 필터(인기순) 안만들었음 -->
        <tr>
            <td>
                <!-- 찜한 상품만 등록되어있기 때문에 주황색 하트로 표시 / 누르면 찜한 목록에서 상품 제거됨 -->
                <table>
                    <tr>
                        <td>
                            <table class="wishListInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="wishListProductImg1" class="wishListProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductName1" class="wishListProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductInfo1" class="wishListProductInfo">
                                            <span id="wishListProductPrice1" class="wishListProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="wishListProductFor1" class="wishListProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductBtn1" class="wishListProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo_orange.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="wishListInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="wishListProductImg1" class="wishListProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductName1" class="wishListProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductInfo1" class="wishListProductInfo">
                                            <span id="wishListProductPrice1" class="wishListProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="wishListProductFor1" class="wishListProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductBtn1" class="wishListProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo_orange.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="wishListInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="wishListProductImg1" class="wishListProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductName1" class="wishListProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductInfo1" class="wishListProductInfo">
                                            <span id="wishListProductPrice1" class="wishListProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="wishListProductFor1" class="wishListProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductBtn1" class="wishListProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo_orange.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="wishListInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="wishListProductImg1" class="wishListProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductName1" class="wishListProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductInfo1" class="wishListProductInfo">
                                            <span id="wishListProductPrice1" class="wishListProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="wishListProductFor1" class="wishListProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductBtn1" class="wishListProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo_orange.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="wishListInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="wishListProductImg1" class="wishListProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductName1" class="wishListProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductInfo1" class="wishListProductInfo">
                                            <span id="wishListProductPrice1" class="wishListProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="wishListProductFor1" class="wishListProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductBtn1" class="wishListProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo_orange.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="wishListInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="wishListProductImg1" class="wishListProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductName1" class="wishListProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductInfo1" class="wishListProductInfo">
                                            <span id="wishListProductPrice1" class="wishListProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="wishListProductFor1" class="wishListProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="wishListProductBtn1" class="wishListProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="wishListLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo_orange.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
        
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>

</body>
</html>