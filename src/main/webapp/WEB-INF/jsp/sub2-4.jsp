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
                <li class="now_location">별난 TV백과 전국의 기인들을 찾아서!</li>
            </ul>

            <div id="content" class="section">
                <p class="cont_tit text-center">별난 TV백과 전국의 기인들을 찾아서!</p>
                <hr />

                <p class="small_tit"><span class="tit_icon"></span>스틸컷</p>

                <div class="still_rolling common_dots">
                    <p class="still_cut"><img src="images/still4_1.jpg" alt="스틸컷 이미지1" /></p>
                    <p class="still_cut"><img src="images/still4_2.jpg" alt="스틸컷 이미지2" /></p>
                    <p class="still_cut"><img src="images/still4_3.jpg" alt="스틸컷 이미지3" /></p>
                </div>
            </div>
        </div>

        <div class="section sub_cont_bg max-w-1920">
            <div class="cont_width">
                <p class="small_tit"><span class="tit_icon"></span>시놉시스</p>
                <p class="cont_txt">
                    전국 곳곳에서 일어나는 신기하고 기묘한 이야기들을 밀도 있게 취재, 독특한 구성과 내레이션으로 전달하는 SBC의 인기 프로그램 ‘별난 TV 백과: 전국의 기인들을 찾아서!’. 이번
                    ‘제 617회: 괴짜 아저씨와 말하는 염소의 기묘한 동거’ 편에서는 온 읍내를 떠들썩하게 만든 말하는 염소와 주인 아저씨의 진실을 파헤치기 위하여, 안하무인 최PD가
                    출동하는데...
                </p>
            </div>
        </div>

        <div class="container">
            <div class="section">
                <p class="small_tit"><span class="tit_icon"></span>감독</p>
                <div class="row align-items-end director_info" style="width:100%">
                    <div class="col-3 col-md-10 f-left">
                        <img src="images/director4.jpg" alt="안윤빈 감독" />
                    </div>

                    <div class="col-9 col-md-12 f-right">
                        <p><b>안 윤 빈</b></p>
                        <p class="cont_txt text-justify">서일대 연극영화학과 입학, 코미디 스릴러 단편 &lt;백색소음&gt;(2019)을 연출하였다. BIFAN 괴담
                            단편 제작지원작으로 만든 &lt;별난TV백과 : 전국의 기인들을 찾아서!&gt;는 2000년대 TV프로그램을 모티브한 영화로 두번째 연출작이다.</p>
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