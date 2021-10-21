<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>상세페이지 : 공지사항 : 부천 스토리 창</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <section class="all_wrap">
        <div class="sub_bg_wrap max-w-1920 sub5_bg">
            <h2 class="text-center banner_tit">공지사항</h2>
        </div>

        <div class="container">
            <ul class="location d-flex align-items-center">
                <li>
                    <a href="main.jsp">
                        <i class="fas fa-home"></i>
                        <span class="skip">메인 바로가기</span>
                    </a>
                </li>
                <li class="prev_location">공지사항</li>
                <li class="now_location">상세 페이지</li>
            </ul>
        </div>
        <div class="max-w-1920 p_r">
            <div class="p_bg"></div>
            <div class="container">
                <div id="content" class="section" style="padding-top: 0%;">
                    <div class="each_wrap">
                        <div class="each_inner_wrap">
                            <input type="hidden" value="${dto.seq}">
                            <div class="each_info">
                                <p class="cont_tit">‘부천 스토리 창’ 안내</p>
                                <ul class="detail_info">
                                    <li>
                                        <p>
                                            <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd" />
                                        </p>
                                    </li>
                                </ul>
                            </div>
                            <div class="each_cont">
                                <p><b>⦁ 부천 스토리 창?</b>
                                    - 스토리 보존·활용을 위한 통합관리시스템으로, BIFAN과 함께 수집한 9,373편의 괴담스토리 DB화, 괴담 단편영화 창작지원 수상작,
                                    <br />- 전국 중고등학생 이야기대회 수상작, 스토리 게시판으로 구성되어 있으며, 스토리를 발굴·수집하여 2차 콘텐츠로 제작 기반 마련을 목표로
                                    한다.
                                    <br />- 부천시는 스토리산업을 주력으로 스토리 아카이브, 레지던시, 괴담 창작지원, 전국 중고등학생 이야기대회, 스토리텔링 아카데미를 중점
                                    추진하고
                                    <br />- 있으며, 2025년 작동군부대 문화재생단지 내 스토리텔링센터를 건립하여 더욱 체계적으로 발전시켜 나갈 계획이다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="m-up-down m-up-down-reduce d-flex justify-content-center">
                        <p class="btn link_btn" style="margin-right: 1rem;"><a
                                href="${pageContext.request.contextPath}/noticeList.do?num=1" class="border-50">목록</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>