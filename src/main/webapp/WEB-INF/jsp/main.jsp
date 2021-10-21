<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>부천 스토리 창</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <section class="all_wrap">
        <div class="skip">
            <a href="https://www.freepik.com/vectors/book" class="skip">Book vector created by freepik -
                www.freepik.com</a>
            <a href="https://www.freepik.com/vectors/book" class="skip">Book vector created by freepik -
                www.freepik.com</a>
        </div>
        <div class="visual_wrap max-w-1920 d-n-576 common_dots">
            <div><img src="images/img1.png" alt="메인 슬라이드 이미지" /></div>
            <div><img src="images/img2.png" alt="메인 슬라이드 이미지" /></div>
            <div><img src="images/img3.png" alt="메인 슬라이드 이미지" /></div>
            <div><img src="images/img4.png" alt="메인 슬라이드 이미지" /></div>
            <div><img src="images/img5.png" alt="메인 슬라이드 이미지" /></div>
            <div><img src="images/img6.png" alt="메인 슬라이드 이미지" /></div>
        </div>
        <div class="m_visual_wrap max-w-1920 d-b-576 common_dots">
            <div><img src="images/img1_m.png" alt="메인 슬라이드 이미지" /></div>
            <div><img src="images/img2_m.png" alt="메인 슬라이드 이미지" /></div>
            <div><img src="images/img3_m.png" alt="메인 슬라이드 이미지" /></div>
            <div><img src="images/img4_m.png" alt="메인 슬라이드 이미지" /></div>
            <div><img src="images/img5_m.png" alt="메인 슬라이드 이미지" /></div>
            <div><img src="images/img6_m.png" alt="메인 슬라이드 이미지" /></div>
        </div>

        <div id="content" class="container">
            <div class="m_width">
                <div class="link_tab d-flex">
                    <div class="link_tab_tit">
                        <div>
                            <p class="main_tab_tit">WHAT'S ON</p>
                            <div class="main_tab_line"></div>
                            <p class="small_txt main_tab_txt"><b>‘스토리 창’</b>
                                <br />- 다양한 채널을 통한 스토리 발굴·수집
                                <br />- 스토리의 2차 콘텐츠 제작·유통 지원
                                <br />- 스토리 보존·활용을 위한 통합 시스템</p>
                        </div>
                    </div>
                    <div class="link_tab_cont d-flex">
                        <div class="each_link">
                            <div>
                                <a href="${pageContext.request.contextPath}/ghostStory.do">
                                    <div class="img_wrap">
                                        <p class="link_img"><img src="images/bifan.jpg" alt="기본 이미지" /></p>
                                    </div>
                                    <p class="text-left link_tit"><b>괴</b>담 스토리</p>
                                </a>
                            </div>
                        </div>
                        <div class="each_link">
                            <div>
                                <a href="${pageContext.request.contextPath}/ghostSusang.do">
                                    <div class="img_wrap">
                                        <p class="link_img"><img src="images/winner.png" alt="기본 이미지" /></p>
                                    </div>
                                    <p class="text-left link_tit"><b>괴</b>담 수상작</p>
                                </a>
                            </div>
                        </div>
                        <div class="each_link">
                            <div>
                                <a href="${pageContext.request.contextPath}/wholeStudent.do">
                                    <div class="img_wrap">
                                        <p class="link_img"><img src="images/story.png" alt="기본 이미지" /></p>
                                    </div>
                                    <p class="text-left link_tit"><b>중</b>고등학생 이야기대회</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="max-w-1920 main_banner">
            <div class="banner_wrap">
                <ul class="d-flex justify-content-between align-items-center">
                    <li class="each_banner">
                        <a href="https://www.bucheon.go.kr/site/main/index148" target="_blank"><img
                                src="images/banner_logo1.png" alt="판타지아 부천 바로가기" /></a>
                    </li>
                    <li class="each_banner">
                        <a href="http://bucheoncityofliterature.or.kr/site/main/unesco2" target="_blank"><img
                                src="images/banner_logo2.png" alt="창의 도시 바로가기" /></a>
                    </li>
                    <li class="each_banner">
                        <a href="#" target="_blank"><img src="images/banner_logo3.png" alt="부천 디아스포라 문학상 바로가기" /></a>
                    </li>
                    <li class="each_banner">
                        <a href="http://www.naramal.or.kr/cms/default.aspx" target="_blank"><img
                                src="images/banner_logo4.png" alt="전국 국어교사 모임 바로가기" /></a>
                    </li>
                    <li class="each_banner">
                        <a href="https://www.komacon.kr/komacon/" target="_blank"><img src="images/banner_logo5.png"
                                alt="한국 만화 영상 진흥원 바로가기" /></a>
                    </li>
                    <li class="each_banner">
                        <a href="http://www.bifan.kr/" target="_blank"><img src="images/banner_logo6.png"
                                alt="BIFAN 바로가기" /></a>
                    </li>
                    <li class="each_banner">
                        <a href="#" target="_blank"><img src="images/banner_logo7.png" alt="23 BIFAN 바로가기" /></a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>