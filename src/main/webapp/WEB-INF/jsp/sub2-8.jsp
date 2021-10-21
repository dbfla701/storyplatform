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
                <li class="now_location">애타게 찾던 그대</li>
            </ul>

            <div id="content" class="section">
                <p class="cont_tit text-center">애타게 찾던 그대</p>
                <hr />

                <p class="small_tit"><span class="tit_icon"></span>스틸컷</p>

                <div class="still_rolling common_dots">
                    <p class="still_cut"><img src="images/still8_1.jpeg" alt="스틸컷 이미지1" /></p>
                    <p class="still_cut"><img src="images/still8_2.jpg" alt="스틸컷 이미지2" /></p>
                    <p class="still_cut"><img src="images/still8_3.jpg" alt="스틸컷 이미지3" /></p>
                </div>
            </div>
        </div>

        <div class="section sub_cont_bg max-w-1920">
            <div class="cont_width">
                <p class="small_tit"><span class="tit_icon"></span>시놉시스</p>
                <p class="cont_txt">
                    공원을 지나가는 모든 사람들에게 말을 거는 여자, 해온. 뭔가 이상하다. 호숫가에 멍하니 앉아 있는 남자, 준범. 해온이 말을 걸자 소스라치게 놀란다. 뭔가 수상하다. 해온은
                    준범에게 술을 마시자고 제안하고,. 이상한 사람과 수상한 사람의 뜬금없는 대화가 시작되었다.
                </p>
            </div>
        </div>

        <div class="container">
            <div class="section">
                <p class="small_tit"><span class="tit_icon"></span>감독</p>
                <div class="row align-items-end director_info" style="width:100%">
                    <div class="col-3 col-md-10 f-left">
                        <img src="images/director8.jpg" alt="이민섭 감독" />
                    </div>

                    <div class="col-9 col-md-12 f-right">
                        <p><b>이 민 섭</b></p>
                        <p class="cont_txt text-justify">‘먼 미래’에 ‘어떤 영화’를 만들기 위해 노력 중이다. BIFAN 2019에서 상영되었던 &lt;아버지
                            가방에들어가신다!&gt;(2019)를 비롯해 &lt;갤럭시 아이즈&gt;(2020) 등 SF 판타지 장르의 영화들을 만들어 왔다.</p>
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