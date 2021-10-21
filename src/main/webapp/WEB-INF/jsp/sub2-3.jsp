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
                <li class="now_location">로타리 여자</li>
            </ul>

            <div id="content" class="section">
                <p class="cont_tit text-center">로타리 여자</p>
                <hr />

                <p class="small_tit"><span class="tit_icon"></span>스틸컷</p>

                <div class="still_rolling common_dots">
                    <p class="still_cut"><img src="images/still3_1.jpg" alt="스틸컷 이미지1" /></p>
                    <p class="still_cut"><img src="images/still3_2.jpg" alt="스틸컷 이미지2" /></p>
                    <p class="still_cut"><img src="images/still3_3.jpg" alt="스틸컷 이미지3" /></p>
                </div>
            </div>
        </div>

        <div class="section sub_cont_bg max-w-1920">
            <div class="cont_width">
                <p class="small_tit"><span class="tit_icon"></span>시놉시스</p>
                <p class="cont_txt">
                    아빠의 재혼 준비로 인해 시골 할머니 집에 보내진 승주와 형 승호. 더운 여름밤, 승호는 할머니에게 이 동네에서 실제로 있었던 무서운 이야기를 해 달라고 조른다. 할머니는 유부남과
                    사귀다 목이 비틀려 죽은 처녀 이야기를 들려준다.
                </p>
            </div>
        </div>

        <div class="container">
            <div class="section">
                <p class="small_tit"><span class="tit_icon"></span>감독</p>
                <div class="row align-items-end director_info" style="width:100%">
                    <div class="col-3 col-md-10 f-left">
                        <img src="images/director3.jpg" alt="윤은경 감독" />
                    </div>

                    <div class="col-9 col-md-12 f-right">
                        <p><b>윤 은 경</b></p>
                        <p class="cont_txt text-justify">심리학과 영화를 전공했다. 다년간 충무로에서 다양한 작품들의 조연출을 거친 후, 2020년 개봉한 장편 호러영화
                            &lt;호텔 레이크&gt;로 연출을 시작했다. 호러 장르에 관심을 가지고 꾸준히 호러 작품 만들기를 이어 나가고 있다.</p>
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