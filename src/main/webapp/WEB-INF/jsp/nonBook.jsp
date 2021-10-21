<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>비도서 : 괴담스토리 : 부천 스토리 창</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <section class="all_wrap">
        <div class="sub_bg_wrap max-w-1920 sub1_bg">
            <h2 class="text-center banner_tit">괴담 스토리</h2>
        </div>

        <div class="container">
            <ul class="location d-flex align-items-center">
                <li>
                    <a href="main.jsp">
                        <i class="fas fa-home"></i>
                        <span class="skip">메인 바로가기</span>
                    </a>
                </li>
                <li class="now_location">괴담 스토리</li>
            </ul>

            <div id="content" class="section">
                <div class="border_tab_btn">
                    <p class="text-center d-inline"><span><input type="button" class="chu" name="chu"
                                value="추천작"></span></p>
                    <p class="text-center d-inline"><span><input type="button" class="book" name="book"
                                value="도서"></span></p>
                    <p class="text-center d-inline on"><span><input type="button" class="nonBook" name="nonBook"
                                value="비도서"></span></p>
                </div>

                <div class="sub_box">
                    <div class="text-center">
                        <ul class="d-inline m-0-auto text-left sub_box_list list-padding-left">
                            <li>유네스코창의도시 부천과 부천국제판타스틱영화제는 전세계에 흩어져 있는 ‘괴담’을 발굴하여 아카이브하고있다.</li>
                            <li>인터넷 커뮤니티 게시판 글과 유튜브 영상을 비도서로 분류하여 소개한다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="d-flex align-items-baseline justify-content-end">
                <select name="" onchange="" class="all_select m-right-half">
                    <option>제목 + 출처</option>
                    <option value="">제목</option>
                    <option value="">출처</option>
                </select>
                <div class="search_wrap d-inline border-50">
                    <input type="text" id="" value="" placeholder="검색어를 입력하세요" class="search_input" />
                    <button class="search_icon"><span class="skip">검색</span></button>
                </div>
            </div>
        </div>

        <div class="section sub_cont_bg max-w-1920">
            <div class="container">
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
                            <th>출처</th>
                        </tr>
                    </thead>
                    <tbody class="col_body">
                        <tr>
                            <td class="d-n-576">9</td>
                            <td class="txt-overflow text-left"><a href="#" target="_blank">책 제목</a></td>
                            <td>출처</td>
                        </tr>

                        <tr>
                            <td class="d-n-576">8</td>
                            <td class="txt-overflow text-left"><a href="#" target="_blank">책 제목</a></td>
                            <td>출처</td>
                        </tr>

                        <tr>
                            <td class="d-n-576">7</td>
                            <td class="txt-overflow text-left"><a href="#" target="_blank">책 제목</a></td>
                            <td>출처</td>
                        </tr>

                        <tr>
                            <td class="d-n-576">6</td>
                            <td class="txt-overflow text-left"><a href="#" target="_blank">책 제목</a></td>
                            <td>출처</td>
                        </tr>

                        <tr>
                            <td class="d-n-576">5</td>
                            <td class="txt-overflow text-left"><a href="#" target="_blank">책 제목</a></td>
                            <td>출처</td>
                        </tr>

                        <tr>
                            <td class="d-n-576">4</td>
                            <td class="txt-overflow text-left"><a href="#" target="_blank">책 제목</a></td>
                            <td>출처</td>
                        </tr>

                        <tr>
                            <td class="d-n-576">3</td>
                            <td class="txt-overflow text-left"><a href="#" target="_blank">책 제목</a></td>
                            <td>출처</td>
                        </tr>

                        <tr>
                            <td class="d-n-576">2</td>
                            <td class="txt-overflow text-left"><a href="#" target="_blank">책 제목</a></td>
                            <td>출처</td>
                        </tr>

                        <tr>
                            <td class="d-n-576">1</td>
                            <td class="txt-overflow text-left"><a href="#" target="_blank">책 제목</a></td>
                            <td>출처</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="m-up-down text-center d-flex justify-content-center align-items-center paging_btn" id="list-paging">
            <span class="paging_first"><span class="skip">맨 앞으로</span><a href="#">&laquo;</a></span>

            <c:if test="${prev}">
                <span class="paging_prev">
                    <c:if test="${select == 1}">
                        [ <a href="${pageContext.request.contextPath}/nonBook.do?num=1">이전</a>
                        ]
                    </c:if>

                    <c:if test="${select > 1}">
                        [ <a href="${pageContext.request.contextPath}/nonBook.do?num=${select - 1}">이전</a>
                        ]
                    </c:if>
                </span>
            </c:if>

            <c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
                <span class="paging_num">
                    <c:if test="${select != num}">
                        <a href="${pageContext.request.contextPath}/nonBook.do?num=${num}">${num}</a>
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
                        [ <a href="${pageContext.request.contextPath}/nonBook.do?num=1">다음</a>
                        ]
                    </c:if>

                    <c:if test="${select > 1}">
                        [ <a href="${pageContext.request.contextPath}/nonBook.do?num=${select + 1}">다음</a>
                        ]
                    </c:if>
                </span>
            </c:if>

            <span class="paging_last"><span class="skip">맨 뒤로</span><a href="#">&raquo;</a></span>
        </div>
    </section>
    <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
<script type="text/javascript">
    $(".chu").click(function () {

        $.ajax({
            type: "GET",
            url: "/ghostStory.do",
            async: false,
            dataType: "text",
            error: function (error) {
                console.log("error");
            },
            success: function (data) {
                console.log("success");
                alert("ghostStory");
                location.href = '/ghostStory.do';
            }
        });
    })

    $(".book").click(function () {

        $.ajax({
            type: "GET",
            url: "/book.do",
            async: false,
            dataType: "text",
            error: function (error) {
                console.log("error");
            },
            success: function (data) {
                console.log("success");
                alert("book");
                location.href = '/book.do';
            }
        });
    })

    $(".nonBook").click(function () {

        $.ajax({
            type: "GET",
            url: "/nonBook.do",
            async: false,
            dataType: "text",
            error: function (error) {
                console.log("error");
            },
            success: function (data) {
                console.log("success");
                alert("nonBook");
                location.href = '/nonBook.do';
            }
        });
    })
</script>

</html>