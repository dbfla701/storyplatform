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
                <li class="now_location">소망어린이집 근무안내서</li>
            </ul>

            <div id="content" class="section">
                <p class="cont_tit text-center">소망어린이집 근무안내서</p>
                <hr />

                <p class="small_tit"><span class="tit_icon"></span>스틸컷</p>

                <div class="still_rolling common_dots">
                    <p class="still_cut"><img src="images/still6_1.jpg" alt="스틸컷 이미지1" /></p>
                    <p class="still_cut"><img src="images/still6_2.jpg" alt="스틸컷 이미지2" /></p>
                    <p class="still_cut"><img src="images/still6_3.jpg" alt="스틸컷 이미지3" /></p>
                </div>
            </div>
        </div>

        <div class="section sub_cont_bg max-w-1920">
            <div class="cont_width">
                <p class="small_tit"><span class="tit_icon"></span>시놉시스</p>
                <p class="cont_txt">
                    세상만사에 딱히 관심이 없는 신입교사 김나리. 장대비가 쏟아지는 날, 소망어린이집에 첫 출근을 하게 된다. 무언가 이상해 보이는 어린이집 분위기 속 오직 퇴근만을 기다리며 버티는
                    신입교사. 아이들이 하원을 하고 퇴근 각을 뽑는 찰나, 갑자기 마무리만 부탁한다며 나가 버리는 선배 교사 덕분에 아직 부모님이 데리러 오지 않은 아이들과 시간을 보내게 된다.
                </p>
            </div>
        </div>

        <div class="container">
            <div class="section">
                <p class="small_tit"><span class="tit_icon"></span>감독</p>
                <div class="row align-items-end director_info" style="width:100%">
                    <div class="col-3 col-md-10 f-left">
                        <img src="images/director6.jpg" alt="김민지 감독" />
                    </div>

                    <div class="col-9 col-md-12 f-right">
                        <p><b>김 민 지</b></p>
                        <p class="cont_txt text-justify">영화를 본 후, 여운이 쉽게 가시지 않았다. 그 여운이 영화의 길로 이끌었다. 그렇게 동국대학교 영화영상학과로
                            편입을 한 후 여전히 그 여운과 함께하고 있다. 첫 연출작 &lt;시나브로&gt;(2018)는 춤에 관한 영화로, 천안춤영화제에서 최우수상을 수상했고 서울무용영화제에
                            상영됐다.</p>
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