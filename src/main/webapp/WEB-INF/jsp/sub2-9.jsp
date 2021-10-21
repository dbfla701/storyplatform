<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>상세페이지 : 괴담수상작 : 부천 스토리 창</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <section class="all_wrap">
        <div class="sub_bg_wrap max-w-1920 sub2_bg">
            <h2 class="text-center banner_tit">괴담 수상작</h2>
        </div>

        <div class="container">
            <ul class="location d-flex align-items-center">
                <li>
                    <a href="main.jsp">
                        <i class="fas fa-home"></i>
                        <span class="skip">메인 바로가기</span>
                    </a>
                </li>
                <li class="prev_location"><a href="${pageContext.request.contextPath}/ghostSusang.do">괴담 수상작</a></li>
                <li class="now_location">흔적</li>
            </ul>

            <div id="content" class="section">
                <p class="cont_tit text-center">흔적</p>
                <hr />

                <p class="small_tit"><span class="tit_icon"></span>스틸컷</p>

                <div class="still_rolling common_dots">
                    <p class="still_cut"><img src="images/still9_1.jpg" alt="스틸컷 이미지1" /></p>
                    <p class="still_cut"><img src="images/still9_2.jpg" alt="스틸컷 이미지2" /></p>
                    <p class="still_cut"><img src="images/still9_3.jpg" alt="스틸컷 이미지3" /></p>
                </div>
            </div>
        </div>

        <div class="section sub_cont_bg max-w-1920">
            <div class="cont_width">
                <p class="small_tit"><span class="tit_icon"></span>시놉시스</p>
                <p class="cont_txt">
                    지수는 언니인 민주와 연락이 되지 않는다는 엄마의 전화를 받고 민주의 집으로 향한다. 인기척 없는 민주의 집에서 지수는 뜻밖의 상황과 마주하고 폭발하는 분노에 사로잡힌다.
                </p>
            </div>
        </div>

        <div class="container">
            <div class="section">
                <p class="small_tit"><span class="tit_icon"></span>감독</p>
                <div class="row align-items-end director_info" style="width:100%">
                    <div class="col-3 col-md-10 f-left">
                        <img src="images/director9.jpg" alt="서태범 감독" />
                    </div>

                    <div class="col-9 col-md-12 f-right">
                        <p><b>서 태 범</b></p>
                        <p class="cont_txt text-justify">감독 겸 배우로 활동하고 있으며, 지금까지 6편의 단편영화를 연출했다. 다섯 번째 작품 &lt;언젠간 터질
                            거야&gt;(2020)는 전주국제영화제, 미쟝센단편영화제, 피렌체한국영화제에 초정되었으며, 가톨릭영화제에서 장려상을 수상하였다.</p>
                    </div>
                </div>

                <p class="btn list_btn text-center"><a href="${pageContext.request.contextPath}/ghostSusang.do"
                        class="">목록</a></p>

            </div>
        </div>
    </section>

    <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>