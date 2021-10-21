<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>공지사항 : 관리자 : 부천 스토리 창</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <section class="all_wrap">
        <div class="sub_bg_wrap sub5_bg">
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
                <li class="prev_location">관리자</li>
                <li class="prev_location">공지사항</li>
                <li class="now_location">상세 페이지</li>
            </ul>

            <p class="small_tit"><span class="tit_icon"></span>작성글 상세 보기</p>
            <hr />

            <div class="max-w-1920 p_r">
                <div class="p_bg"></div>
                <div class="container">
                    <div id="content" class="section" style="padding-top: 0%;">
                        <div class="each_wrap">
                            <div class="each_inner_wrap">
                                <input type="hidden" value="${dto.seq}">
                                <div class="each_info">
                                    <p class="cont_tit">
                                        <c:out value="${dto.title}" />
                                    </p>
                                    <ul class="detail_info">
                                        <li>
                                            <p>
                                                <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd" />
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="each_cont">
                                    <p>
                                        <c:out value="${dto.content}" />
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="m-up-down m-up-down-reduce d-flex justify-content-center">
                            <p class="btn link_btn" style="margin-right: 1rem;"><a href="/admin/noticeAllList.do?num=1"
                                    class="border-50">목록</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>