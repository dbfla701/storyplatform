<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>스토리 등록 : 부천 스토리 창</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <section class="all_wrap">
        <div class="sub_bg_wrap max-w-1920 sub4_bg">
            <h2 class="text-center banner_tit">스토리 등록</h2>
        </div>

        <div class="container">
            <ul class="location d-flex align-items-center">
                <li>
                    <a href="main.jsp">
                        <i class="fas fa-home"></i>
                        <span class="skip">메인 바로가기</span>
                    </a>
                </li>
                <li class="now_location">스토리 등록</li>
            </ul>

            <div id="content" class="section">
                <div class="sub_box">
                    <div class="text-center">
                        <ul class="d-inline m-0-auto text-left sub_box_list list-padding-left cont-left">
                            <li>장르나 형식에 구애없이 자유롭게 글을 작성할 수 있습니다.</li>
                            <li>등록된 글은 ‘부천 스토리 창’에 아카이브되며, 다양한 사업으로 기획(개발) 될 수 있습니다.</li>
                            <li class="warning_text" style="list-style: none;"><i
                                    class="fas fa-exclamation-circle"></i>&nbsp;&nbsp;본 웹사이트에 사용된 모든 컨텐츠, 이미지 등의 무단 도용 및
                                배포 행위를 금지합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div id="content" class="m-up-down m-up-down-reduce">
                <div class="d-flex justify-content-between align-items-baseline">
                    <p class="btn link_btn"><a href="${pageContext.request.contextPath}/StoryWriteForm.do"
                            class="border-50"><span class="d-n-576">스토리
                            </span>등록<span class="d-n-576">하기</span></a></p>
                    <div class="d-flex align-items-baseline">
                        <select name="" onchange="" class="all_select w-85 m-right-half">
                            <option>전체</option>
                            <option value="">로맨스</option>
                            <option value="">액션/무협</option>
                            <option value="">명량/코믹</option>
                            <option value="">공포/스릴러</option>
                            <option value="">탐정/추리</option>
                            <option value="">SF/판타지</option>
                            <option value="">기타</option>
                        </select>
                        <div class="search_wrap d-inline border-50">
                            <input type="text" id="" value="" placeholder="검색어를 입력하세요" class="search_input" />
                            <button class="search_icon"><span class="skip">검색</span></button>
                        </div>
                    </div>
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
                            <th class="d-n-576">순서</th>
                            <th>제목</th>
                            <th>키워드</th>
                        </tr>
                    </thead>
                    <tbody class="col_body">
                        <c:forEach items="${dto}" var="dto">
                            <tr id="list">
                                <td class="d-n-576">
                                    <c:out value="${dto.seq}" />
                                </td>

                                <td class="txt-overflow text-left">
                                    <a href="${pageContext.request.contextPath}/StoryBoardDetail.do?title=${dto.title}">
                                        <c:out value="${dto.title}" />
                                    </a>
                                </td>

                                <td>
                                    <c:out value="${dto.keyword}" />
                                </td>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div class="m-up-down text-center d-flex justify-content-center align-items-center paging_btn"
                    id="list-paging">
                    <span class="paging_first"><span class="skip">맨 앞으로</span><a href="#">&laquo;</a></span>

                    <c:if test="${prev}">
                        <span class="paging_prev">

                            <c:if test="${select == 1}">
                                [ <a href="${pageContext.request.contextPath}/StoryBoard.do?num=1">이전</a>
                                ]
                            </c:if>

                            <c:if test="${select > 1}">
                                [ <a href="${pageContext.request.contextPath}/StoryBoard.do?num=${select - 1}">이전</a>
                                ]
                            </c:if>
                        </span>
                    </c:if>

                    <c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
                        <span class="paging_num">
                            <c:if test="${select != num}">
                                <a href="${pageContext.request.contextPath}/StoryBoard.do?num=${num}">${num}</a>
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
                                [ <a href="${pageContext.request.contextPath}/StoryBoard.do?num=1">다음</a>
                                ]
                            </c:if>

                            <c:if test="${select > 1}">
                                [ <a href="${pageContext.request.contextPath}/StoryBoard.do?num=${select + 1}">다음</a>
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