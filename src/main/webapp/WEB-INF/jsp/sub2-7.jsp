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
                <li class="now_location">안아줘, 독바로 안아줘!</li>
            </ul>

            <div id="content" class="section">
                <p class="cont_tit text-center">안아줘, 독바로 안아줘!</p>
                <hr />

                <p class="small_tit"><span class="tit_icon"></span>스틸컷</p>

                <div class="still_rolling common_dots">
                    <p class="still_cut"><img src="images/still7_1.jpg" alt="스틸컷 이미지1" /></p>
                    <p class="still_cut"><img src="images/still7_2.jpg" alt="스틸컷 이미지2" /></p>
                    <p class="still_cut"><img src="images/still7_3.jpg" alt="스틸컷 이미지3" /></p>
                </div>
            </div>
        </div>

        <div class="section sub_cont_bg max-w-1920">
            <div class="cont_width">
                <p class="small_tit"><span class="tit_icon"></span>시놉시스</p>
                <p class="cont_txt">
                    보호자 없이 아이들끼리 살아간다면, 어떤 일이 일어날 수 있을까? 은발이, 앞머리, 단발이. 고아들이 숨어 사는 곳에 수상한 남자가 나타났다!
                </p>
            </div>
        </div>

        <div class="container">
            <div class="section">
                <p class="small_tit"><span class="tit_icon"></span>감독</p>
                <div class="row align-items-end director_info" style="width:100%">
                    <div class="col-3 col-md-10 f-left">
                        <img src="images/director7.jpg" alt="이지안 감독" />
                    </div>

                    <div class="col-9 col-md-12 f-right">
                        <p><b>이 지 안</b></p>
                        <p class="cont_txt text-justify">2011년 단편 &lt;다정한 묘지&gt;를 연출했다. 크리에이티브 디렉터로 활동하다가 10년 만에
                            &lt;안아줘, 독바로 안아줘!&gt;를 연출했다.</p>
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