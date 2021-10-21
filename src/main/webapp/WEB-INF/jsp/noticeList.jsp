<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>공지사항 : 부천 스토리 창</title>
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
                <li class="now_location">공지사항</li>
            </ul>

            <div id="content" class="m-up-down d-flex justify-content-between main_notice" style="max-width: 1200px;">
                <div class="notice_wrap">
                    <a href="https://www.bifan.kr/webzine/news_view.asp?pk_seq=83171&sc_board_seq=12&sc_num=409&sc_top_cond=all&actEvent=view&page=5&"
                        target="_blank">
                        <p class="notice_img"><img src="images/notice_img1.jpg" alt="공지사항 이미지" /></p>
                        <p class="notice_txt text-center txt-overflow">괴담창작지원</p>
                        <p class="small_txt notice_txt text-center txt-overflow">당신의 수상한 재능을 지원합니다.</p>
                    </a>
                </div>

                <div class="notice_wrap">
                    <a href="https://www.bifan.kr/webzine/news_view.asp?pk_seq=83838&sc_board_seq=12&sc_num=450&sc_top_cond=all&actEvent=view&page=1"
                        target="_blank">
                        <p class="notice_img"><img src="images/notice_img2.jpg" alt="공지사항 이미지" /></p>
                        <p class="notice_txt text-center txt-overflow">괴담 수상작 메타버스 상영</p>
                        <p class="small_txt notice_txt text-center txt-overflow">심야에도 괜찮아</p>
                    </a>
                </div>

                <div class="notice_wrap">
                    <a href="http://news.bucheon.go.kr/news/articleView.html?idxno=24835" target="_blank">
                        <p class="notice_img"><img src="images/notice_img3.jpg" alt="공지사항 이미지" /></p>
                        <p class="notice_txt text-center txt-overflow">전국 중고등학생 이야기대회 협약</p>
                        <p class="small_txt notice_txt text-center txt-overflow">부천시와 공동 개최, 스토리산업 육성</p>
                    </a>
                </div>
            </div>

            <div class="text-right m-up-down m-up-down-reduce">
                <div class="search_wrap d-inline border-50">
                    <input type="text" id="" value="" placeholder="검색어를 입력하세요" class="search_input" />
                    <button class="search_icon"><span class="skip">검색</span></button>
                </div>
            </div>

            <div class="section" style="padding-top:0">
                <table class="table col_table text-center">
                    <colgroup>
                        <col style="width:15%" class="d-n-576">
                        <col style="width:75%">
                        <col style="width:15%">
                    </colgroup>

                    <thead class="col_head">
                        <tr>
                            <th class="d-n-576">구분</th>
                            <th>제목</th>
                            <th>작성일자</th>
                        </tr>
                    </thead>

                    <tbody class="col_body">
                        
                        <tr>
                            <td class="d-n-576"><span class="fixed_notice_icon fixed_notice_icon_1">
                                    공지</span></td>
                            <td class="txt-overflow text-left"><a href="sub5-1.jsp" class="fixed_notice">‘부천 스토리 창’
                                    안내</a></td>
                            <td>
                                2021-09-15
                            </td>
                        </tr>

                        <tr>
                            <td class="d-n-576"><span class="fixed_notice_icon fixed_notice_icon_2">
                                    알림</span></td>
                            <td class="txt-overflow text-left"><a href="sub5-2.jsp" class="fixed_notice">‘제21회 전국 중고등학생
                                    이야기대회’안내</a></td>
                            <td>
                                2021-09-15
                            </td>
                        </tr>

                        <tr id="list">
                            <td class="d-n-576"><span class="fixed_notice_icon fixed_notice_icon_3">
                                    <c:out value="${dto.sort}" /></span></td>
                            <td class="txt-overflow text-left"><a
                                    href="${pageContext.request.contextPath}/noticeDetail.do?seq=${dto.seq}">
                                    <c:out value="${dto.title}" /></a></td>
                            <td>
                                <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd" />
                            </td>
                        </tr>

                    </tbody>
                </table>
                
                <!-- 페이징 시작 -->

                <div class="m-up-down text-center d-flex justify-content-center align-items-center paging_btn"
                    id="list-paging">
                    <span class="paging_first"><span class="skip">맨 앞으로</span><a href="#">&laquo;</a></span>

                    <c:if test="${prev}">
                        <span class="paging_prev">
                            <c:if test="${select == 1}">
                                [ <a href="${pageContext.request.contextPath}/noticeList.do?num=1">이전</a>
                                ]
                            </c:if>

                            <c:if test="${select > 1}">
                                [ <a href="${pageContext.request.contextPath}/noticeList.do?num=${select - 1}">이전</a>
                                ]
                            </c:if>
                        </span>
                    </c:if>

                    <c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
                        <span class="paging_num">
                            <c:if test="${select != num}">
                                <a href="${pageContext.request.contextPath}/noticeList.do?num=${num}">${num}</a>
                            </c:if>
                        </span>
                        <span class="paging_now">
                            <c:if test="${select == num}">
                                <b>${num}</b>
                            </c:if>
                        </span>
                    </c:forEach>

                    <c:if test="${next}">
                        <span class="paging_next">
                            <c:if test="${select == 1}">
                                [ <a href="${pageContext.request.contextPath}/noticeList.do?num=1">다음</a>
                                ]
                            </c:if>

                            <c:if test="${select > 1}">
                                [ <a href="${pageContext.request.contextPath}/noticeList.do?num=${select + 1}">다음</a>
                                ]
                            </c:if>
                        </span>
                    </c:if>

                    <span class="paging_last"><span class="skip">맨 뒤로</span><a href="#">&raquo;</a></span>
                </div>
            </div>
        </div>
    </section>

    <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>