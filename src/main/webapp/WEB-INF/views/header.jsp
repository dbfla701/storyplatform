<%@page import="com.min.Dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="header_wrap">
    <div id="skip_menu">
        <a href="#content" role="button">본문 바로가기</a>
    </div>

    <div class="header d-flex cont_width">
        <h1 class="logo"><a href="main.do">BUCHOEN STORY <b>창</b></a></h1>

        <ul class="menu_wrap d-flex">
            <li class="menu"><a href="${pageContext.request.contextPath}/ghostStory.do">괴담스토리</a></li>
            <li class="menu"><a href="${pageContext.request.contextPath}/ghostSusang.do">괴담수상작</a></li>
            <li class="menu"><a href="${pageContext.request.contextPath}/wholeStudent.do">전국 중고등학생 이야기대회</a></li>
            <li class="menu"><a href="${pageContext.request.contextPath}/StoryBoard.do?num=1">스토리 등록</a></li>
            <li class="menu"><a href="${pageContext.request.contextPath}/noticeList.do?num=1">공지사항</a></li>
            
            <%
                // 세션값 가져오기
                BoardDto adminid = (BoardDto) session.getAttribute("adminid"); // Object 타입이므로 다운캐스팅
                String Name = adminid == null ? "" : adminid.getAdminid();
            %>

            <%
                if (Name!="") {
            %>
            <li class="menu text-center second_menu_wrap"><a href="#" class="open_more">관리자<span
                        class="skip">더보기</span></a>
                <ul class="second_menu text-center">
                    <li><a href="/admin/storyAllList.do?num=1">스토리 등록</a></li>
                    <li><a href="/admin/noticeAllList.do?num=1">공지사항</a></li>
                    <li><a href="/admin/pwUpdate.do">비밀번호 변경</a></li>
                    <li><a href="/logout.do">로그아웃</a></li>
                </ul>
            </li>
            <%
                }
            %>
           
        </ul>
    </div>

    <div class="menu_btn"><a href="#"><img src="images/menu.png" alt="메뉴 열기"></a></div>
    <div class="close_btn"><a href="#"><img src="images/close.png" alt="메뉴 닫기"></a></div>
    <div class="g_bg"></div>
</div>

<script type="text/javascript">
    $(window).resize(function () {
        if (window.innerWidth <= 768) {
            $('.menu_wrap li a').off('click').on('click', function () {
                $('.second_menu').slideToggle();
            });

            function menu_btn_active() {
                $('.menu_btn').addClass('active');
                $('.g_bg, .close_btn, .menu_wrap').removeClass('active');
            }

            menu_btn_active();
            $('.menu_btn > a').on('click', function () {
                $('.menu_btn').removeClass('active');
                $('.g_bg, .close_btn, .menu_wrap').addClass('active');
            });

            $('.close_btn > a, .g_bg').on('click', function () {
                menu_btn_active();
            });
        } else {
            $('.menu_wrap li').hover(function () {
                $('.second_menu:not(:animated)', this).slideToggle('300');
            });
            $('.menu_btn').removeClass('active');
        }
    }).resize();
</script>