<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/searchResultPage.css">
</head>
<body>
    <table id="searchWrap">
        <tr>
            <td colspan="4">
                <div id="searchInputWrap">
                    <form id="searchInputForm">
                        <div id="searchInputArea">
                            <input id="searchInput" type="search" placeholder="찾고 싶은 상품을 검색해보세요.">
                            <a href=""><img id="searchResultBtn" src="<%=contextPath%>/resources/img/searchlogo.png"></a>
                        </div>
                    </form>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <div id="searchKeywordWrap"><span id="searchKeyword">키워드</span> 검색어로 총 <span id="searchTotal">8</span>개의 상품을 찾았습니다. </div>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <table>
                    <tr>
                        <td><a href=""><div class="searchCategoryBtns">전체보기</div></a></td>
                        <td><a href=""><div class="searchCategoryBtns">중분류</div></a></td>
                        <td><a href=""><div class="searchCategoryBtns">중분류</div></a></td>
                        <td><a href=""><div class="searchCategoryBtns">중분류</div></a></td>
                        <td><a href=""><div class="searchCategoryBtns">기타</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right;">
                <div id="searchFilter">
                    <span><a href="">인기순</a></span>
                    <span>&nbsp; | &nbsp;</span>
                    <span><a href="">최신순</a></span>
                    <span>&nbsp; | &nbsp;</span>
                    <span><a href="">낮은가격순</a></span>
                    <span>&nbsp; | &nbsp;</span>
                    <span><a href="">높은가격순</a></span>
                    <span>&nbsp; | &nbsp;</span>
                    <span><a href="">고객리뷰순</a></span>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            <table class="searchInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="searchProductImg1" class="searchProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductName1" class="searchProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductInfo1" class="searchProductInfo">
                                            <span id="searchProductPrice1" class="searchProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="searchProductFor1" class="searchProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductBtn1" class="searchProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="searchCartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="searchLikeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="searchInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="searchProductImg2" class="searchProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductName2" class="searchProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductInfo2" class="searchProductInfo">
                                            <span id="searchProductPrice2" class="searchProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="searchProductFor2" class="searchProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductBtn2" class="searchProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="searchCartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="searchLikeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="searchInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="searchProductImg3" class="searchProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductName3" class="searchProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductInfo3" class="searchProductInfo">
                                            <span id="searchProductPrice3" class="searchProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="searchProductFor3" class="searchProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductBtn3" class="searchProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="searchCartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="searchLikeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="searchInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="searchProductImg4" class="searchProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductName4" class="searchProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductInfo4" class="searchProductInfo">
                                            <span id="searchProductPrice4" class="searchProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="searchProductFor4" class="searchProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductBtn4" class="searchProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="searchCartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="searchLikeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="searchInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="searchProductImg5" class="searchProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductName5" class="searchProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductInfo5" class="searchProductInfo">
                                            <span id="searchProductPrice5" class="searchProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="searchProductFor5" class="searchProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductBtn5" class="searchProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="searchCartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="searchLikeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="searchInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="searchProductImg6" class="searchProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductName6" class="searchProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductInfo6" class="searchProductInfo">
                                            <span id="searchProductPrice6" class="searchProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="searchProductFor6" class="searchProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductBtn6" class="searchProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="searchCartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="searchLikeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="searchInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="searchProductImg7" class="searchProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductName7" class="searchProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductInfo7" class="searchProductInfo">
                                            <span id="searchProductPrice7" class="searchProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="searchProductFor7" class="searchProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductBtn7" class="searchProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="searchCartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="searchLikeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="searchInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="searchProductImg8" class="searchProductImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductName8" class="searchProductName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductInfo8" class="searchProductInfo">
                                            <span id="searchProductPrice8" class="searchProductPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="searchProductFor8" class="searchProductFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="searchProductBtn8" class="searchProductBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="searchCartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="searchLikeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
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
    
</body>
</html>