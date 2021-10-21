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
                                <p class="cont_tit">‘제21회 전국 중고등학생 이야기대회’안내</p>
                                <ul class="detail_info">
                                    <li>
                                        <p>
                                            <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd" />
                                        </p>
                                    </li>
                                </ul>
                            </div>
                            <div class="each_cont d-flex row justify-content-center align-items-center">
                                <div class="each_cont_img col-4 col-md-6 f-left"><img src="images/notice_view_img.jpg"
                                        alt="이야기대회 이미지"></div>
                                <p class="each_cont_txt col-8 col-md-12 f-right">- 전국 중‧고등학생을 대상으로 하는 이야기 창작 경연으로,
                                    2021년부터 부천시와 (사)전국국어교사모임이 공동개최한다.
                                    <br />⦁ 참가자격: 중·고 재학생 및 동일 연령의 모든 청소년
                                    <br />⦁ 부 문: 옛날이야기, 요즘이야기(내용 제한 없음)
                                    <br />⦁ 진행방식: 동영상을 활용한 비대면 이야기대회
                                    <br />⦁ 제출자료: 참가신청서, 동영상 파일(6±1분)
                                    <br />⦁ 전송메일: uri-mal@hanmail.net
                                    <br />⦁ 제출기간: 2021. 11. 16. ~ 11. 30.
                                    <br />⦁ 결과발표: 2021. 12. 17.(전국모 홈페이지)
                                    <br />⦁ 시 상: 문화체육부장관상, 시상금 등
                                    <br />⦁ 주 최: 부천시, (사)전국국어교사모임
                                    <br />&nbsp;&nbsp;※&nbsp;&nbsp;세부내용은 <a href="http://www.naramal.or.kr"
                                        style="color: inherit; text-decoration: underline;">www.naramal.or.kr</a> 참고</p>
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