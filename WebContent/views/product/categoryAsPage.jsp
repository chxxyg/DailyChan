<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 - 아시안</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/categoryPage.css">
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

    <table id="categoryWrap">
        <tr>
            <td colspan="4" style="font-size: 50px; font-weight: 600; text-align: center;">아시안</td>
        </tr>
        <tr>
            <td colspan="4">
                <table>
                    <tr>
                        <td><a href=""><div class="categoryBtns">전체보기</div></a></td>
                        <td><a href=""><div class="categoryBtns">중식</div></a></td>
                        <td><a href=""><div class="categoryBtns">일식</div></a></td>
                        <td><a href=""><div class="categoryBtns">베트남</div></a></td>
                        <td><a href=""><div class="categoryBtns">퓨전</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right;">
                <div id="categoryFilter">
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
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg1" class="productImg" src="../../resources/sampledata/햄듬뿍부대찌개.jpg"></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName1" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo1" class="productInfo">
                                            <span id="productPrice1" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor1" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn1" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg2" class="productImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName2" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo2" class="productInfo">
                                            <span id="productPrice2" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor2" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn2" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg3" class="productImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName3" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo3" class="productInfo">
                                            <span id="productPrice3" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor3" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn3" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg4" class="productImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName4" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo4" class="productInfo">
                                            <span id="productPrice4" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor4" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn4" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg5" class="productImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName5" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo5" class="productInfo">
                                            <span id="productPrice5" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor5" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn5" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg6" class="productImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName6" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo6" class="productInfo">
                                            <span id="productPrice6" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor6" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn6" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg7" class="productImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName7" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo7" class="productInfo">
                                            <span id="productPrice7" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor7" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn7" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg8" class="productImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName8" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo8" class="productInfo">
                                            <span id="productPrice8" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor8" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn8" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg9" class="productImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName9" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo9" class="productInfo">
                                            <span id="productPrice9" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor9" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn9" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg10" class="productImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName10" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo10" class="productInfo">
                                            <span id="productPrice10" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor10" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn10" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg11" class="productImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName11" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo11" class="productInfo">
                                            <span id="productPrice11" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor11" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn11" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="categoryInnerTable">
                                <tr>
                                    <td>
                                        <a href=""><img id="productImg12" class="productImg" src=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productName12" class="productName"><a href="">데일리찬 상품명</a></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productInfo12" class="productInfo">
                                            <span id="productPrice12" class="productPrice">12,000원</span>
                                            <span>|</span>
                                            <span id="productFor12" class="productFor">1인분</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="productBtn12" class="productBtn">
                                            <button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png" alt=""></button>
                                            <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png" alt=""></button>
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