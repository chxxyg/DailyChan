<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찬Day</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/chandayPage.css">
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

    <table id="chandayWrap">
        <tr>
            <td colspan="4" style="font-size: 50px; font-weight: 600; text-align: center;">찬Day</td>
        </tr>
        <tr>
            <td colspan="4">
                <table>
                    <tr>
                        <td><a href=""><div class="chandayBtn">전체보기</div></a></td>
                        <td><a href=""><div class="chandayBtn">메인반찬</div></a></td>
                        <td><a href=""><div class="chandayBtn">밑반찬</div></a></td>
                        <td><a href=""><div class="chandayBtn">김치</div></a></td>
                        <td><a href=""><div class="chandayBtn">나물</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4"><div class="chandayStep">STEP1. 원하는 세트 수량을 선택해주세요.</div></td>
        </tr>
        <tr>
            <td colspan="4">
                <table>
                    <tr>
                        <td><a href=""><div class="chandaySet">3SET / 11,900원</div></a></td>
                        <td><a href=""><div class="chandaySet">5SET / 18,900원</div></a></td>
                        <td><a href=""><div class="chandaySet">7SET / 23,900원</div></a></td>
                        <td><a href=""><div class="chandaySet">10SET / 31,900원</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4"><div class="chandayStep">STEP2. 선택한 세트 수량만큼 원하시는 상품을 골라주세요.</div></td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right;">
                <button type="button" id="checkAuto">간편 담기</button>
            </td>
        </tr>
        <tr>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg1" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName1" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo1" class="chandayProductInfo">
                                <span id="chandayProductPrice1" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor1" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn1" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg2" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName2" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo2" class="chandayProductInfo">
                                <span id="chandayProductPrice2" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor2" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn2" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg3" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName3" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo3" class="chandayProductInfo">
                                <span id="chandayProductPrice3" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor3" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn3" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg4" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName4" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo4" class="chandayProductInfo">
                                <span id="chandayProductPrice4" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor4" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn4" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg5" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName5" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo5" class="chandayProductInfo">
                                <span id="chandayProductPrice5" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor5" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn5" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg6" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName6" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo6" class="chandayProductInfo">
                                <span id="chandayProductPrice6" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor6" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn6" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg7" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName7" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo7" class="chandayProductInfo">
                                <span id="chandayProductPrice7" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor7" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn7" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg8" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName8" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo8" class="chandayProductInfo">
                                <span id="chandayProductPrice8" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor8" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn8" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg9" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName9" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo9" class="chandayProductInfo">
                                <span id="chandayProductPrice9" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor9" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn9" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg10" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName10" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo10" class="chandayProductInfo">
                                <span id="chandayProductPrice10" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor10" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn10" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg11" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName11" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo11" class="chandayProductInfo">
                                <span id="chandayProductPrice11" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor11" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn11" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg12" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName12" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo12" class="chandayProductInfo">
                                <span id="chandayProductPrice12" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor12" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn12" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg13" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName13" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo13" class="chandayProductInfo">
                                <span id="chandayProductPrice13" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor13" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn13" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg14" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName14" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo14" class="chandayProductInfo">
                                <span id="chandayProductPrice14" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor14" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn14" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg15" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName15" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo15" class="chandayProductInfo">
                                <span id="chandayProductPrice15" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor15" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn15" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="chandayInnerTable">
                    <tr>
                        <td>
                            <a href=""><img id="chandayProductImg16" class="chandayProductImg" src=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductName16" class="chandayProductName"><a href="">데일리찬 상품명</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductInfo16" class="chandayProductInfo">
                                <span id="chandayProductPrice16" class="chandayProductPrice">12,000원</span>
                                <span>|</span>
                                <span id="chandayProductFor16" class="chandayProductFor">1인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="chandayProductBtn16" class="chandayProductBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="chandayCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                <button type="button" style="border: none; background-color: white;"><img class="chandayLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                            </div>
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