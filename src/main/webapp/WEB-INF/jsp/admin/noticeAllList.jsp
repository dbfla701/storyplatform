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
                <li class="now_location">공지사항</li>
            </ul>

            <div id="content" class="text-right m-up-down m-up-down-reduce">
                <div class="search_wrap d-inline border-50">
                    <input type="text" id="" value="" placeholder="검색어를 입력하세요" class="search_input" />
                    <button class="search_icon"><span class="skip">검색</span></button>
                </div>
            </div>

            <p class="small_tit"><span class="tit_icon"></span>작성글 전체 보기</p>
            <hr />

            <div class="section" style="padding-top:0">
                <table class="table col_table text-center">
                    <colgroup>
                        <col style="width:5%" class="d-n-576">
                        <col style="width:55%">
                        <col style="width:10%" class="d-n-576">
                        <col style="width:15%">
                        <col style="width:15%">
                    </colgroup>

                    <thead class="col_head">
                        <tr>
                            <th class="d-n-576">구분</th>
                            <th>제목</th>
                            <th class="d-n-576">작성자</th>
                            <th>작성일자</th>
                            <th>선택</th>
                        </tr>
                    </thead>
                    <tbody class="col_body">
                        <c:forEach items="${dto}" var="dto">
                            <tr id="list">
                                <td class="d-n-576">
                                    <span class="fixed_notice_icon fixed_notice_icon_3">
                                        <c:out value="${dto.sort}" /></span>
                                </td>

                                <td class="txt-overflow">
                                    <a
                                        href="${pageContext.request.contextPath}/admin/noticeAllListDetail.do?seq=${dto.seq}">
                                        <c:out value="${dto.title}" />
                                    </a>
                                </td>

                                <td class="d-n-576">관리자</td>

                                <td>
                                    <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd" />
                                </td>

                                <td>
                                    <input type="button" class="admin_btn" onclick="modi(${dto.seq})" value="수정" />
                                    <input type="button" class="admin_btn" onclick="del(${dto.seq})" value="삭제" />
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div class="clearfix">
                    <input type="submit" onclick="location.href='/admin/noticeForm.do'" value="글쓰기"
                        class="admin_btn on m-up-down f-size-up right-float" />
                </div>

                <div class="m-up-down text-center d-flex justify-content-center align-items-center paging_btn"
                    id="list-paging">
                    <span class="paging_first"><span class="skip">맨 앞으로</span><a href="#">&laquo;</a></span>
                    <c:if test="${prev}">
                        <span class="paging_prev">
                            <c:if test="${select == 1}">
                                [ <a href="${pageContext.request.contextPath}/noticeAllList.do?num=1">이전</a>
                                ]
                            </c:if>

                            <c:if test="${select > 1}">
                                [ <a href="${pageContext.request.contextPath}/noticeAllList.do?num=${select - 1}">이전</a>
                                ]
                            </c:if>
                        </span>
                    </c:if>

                    <c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
                        <span class="paging_num">
                            <c:if test="${select != num}">
                                <a href="${pageContext.request.contextPath}/noticeAllList.do?num=${num}">${num}</a>
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
                                [ <a href="${pageContext.request.contextPath}/noticeAllList.do?num=1">다음</a>
                                ]
                            </c:if>

                            <c:if test="${select > 1}">
                                [ <a href="${pageContext.request.contextPath}/noticeAllList.do?num=${select + 1}">다음</a>
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

<script type="text/javascript">
    function del(seq) {
        var chk = confirm("정말 삭제하시겠습니까?");
        if (chk) {
            location.href = '/admin/delete.do?seq=' + seq;
        }
    }

    function modi(seq) {
        var chk = confirm("수정하겠습니까?");
        if (chk) {
            location.href = '/admin/modify.do?seq=' + seq;
        }
    }
</script>

</html>