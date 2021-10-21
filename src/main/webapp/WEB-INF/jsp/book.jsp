<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>도서 : 괴담스토리 : 부천 스토리 창</title>
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
                    <p class="text-center d-inline on"><span><input type="button" class="book" name="book"
                                value="도서"></span></p>
                    <p class="text-center d-inline"><span><input type="button" class="nonBook" name="nonBook"
                                value="비도서"></span></p>
                </div>

                <div class="sub_box">
                    <div class="text-center">
                        <ul class="d-inline m-0-auto text-left sub_box_list list-padding-left">
                            <li>유네스코창의도시 부천과 부천국제판타스틱영화제는 전세계에 흩어져 있는 ‘괴담’을 발굴하여 아카이브하고있다.</li>
                            <li>도서 이미지를 클릭하면 책소개 페이지로 연결되고 저자, 목차, 출판사 서평 등 도서정보를 볼 수 있다.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="d-flex align-items-baseline justify-content-end">
                <select name="" onchange="" class="all_select w-85 m-right-half">
                    <option>전체</option>
                    <option value="">괴담</option>
                </select>
                <div class="search_wrap d-inline border-50">
                    <input type="text" id="book-keyword" value="" placeholder="검색어를 입력하세요" class="search_input" />
                    <button class="search_icon" onclick="loadPageRead(1)"><span class="skip">검색</span></button>
                </div>
            </div>
        </div>

        <div class="section sub_cont_bg max-w-1920">
            <div class="container">
                <ul class="book_list d-flex f-wrap" id="book-list">
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="book_img"><a href="#" target="_blank" ;><img src="images/default.png"
                                        alt="추천작 도서 표지" /></a></p>
                            <p class="list_txt txt-overflow">책 제목</p>
                            <p class="small_txt text-center txt-overflow">저자</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="m-up-down text-center d-flex justify-content-center align-items-center paging_btn" id="list-paging">
            <span class="paging_first"><span class="skip">맨 앞으로</span><a href="#">&laquo;</a></span>

            <c:if test="${prev}">
                <span class="paging_prev">
                    <c:if test="${select == 1}">
                        [ <a href="${pageContext.request.contextPath}/book.do?num=1">이전</a>
                        ]
                    </c:if>

                    <c:if test="${select > 1}">
                        [ <a href="${pageContext.request.contextPath}/book.do?num=${select - 1}">이전</a>
                        ]
                    </c:if>
                </span>
            </c:if>

            <c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
                <span class="paging_num">
                    <c:if test="${select != num}">
                        <a href="${pageContext.request.contextPath}/book.do?num=${num}">${num}</a>
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
                        [ <a href="${pageContext.request.contextPath}/book.do?num=1">다음</a>
                        ]
                    </c:if>

                    <c:if test="${select > 1}">
                        [ <a href="${pageContext.request.contextPath}/book.do?num=${select + 1}">다음</a>
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

    function renderBookList(page) {
        let html = "";

        for (i = 0; i < page.length; i++) {
            html += "<li><div>";
            html += '<p class="book_img"><a href="#" ;><img src="images/default.png" alt="추천작 도서 표지"/></a></p>';
            html += '<p class="list_txt txt-overflow">' + page[i].BOOK_NAME + '</p>';
            html += '<p class="small_txt text-center txt-overflow">' + page[i].BOOK_AUTHOR + '</p>';
            html += '</div></li>';
        }

        $("#book-list").html(html);
    }

    function listPaging(data) {
        let html = "";
        const current = data.current;
        const min = data.min;
        const max = data.max;
        const pre = current > 5 ? current - 5 : min;
        const next = current + 5 < max - 1 ? current + 5 : max;
        const pageFirst = data.pageFirst;
        const page2st = data.page2st;
        const page3st = data.page3st;
        const page4st = data.page4st;
        const page5st = data.page5st;

        const page_1_class = current === pageFirst ? "paging_now" : "paging_num";
        const page_2_class = current === page2st ? "paging_now" : "paging_num";
        const page_3_class = current === page3st ? "paging_now" : "paging_num";
        const page_4_class = current === page4st ? "paging_now" : "paging_num";
        const page_5_class = current === page5st ? "paging_now" : "paging_num";


        html += '<span class="paging_first" onclick="loadPageRead(' + min +
            ')" style="cursor:pointer"><span class="skip">맨 앞으로</span><a >&laquo;</a></span>';
        html += '<span class="paging_prev" onclick="loadPageRead(' + pre +
        ')" style="cursor:pointer"><a >이전</a></span>';
        html += '<span class="' + page_1_class + '" onclick="loadPageRead(' + pageFirst +
            ')" style="cursor:pointer"><a >' + pageFirst + '</a></span>';
        if (page2st !== "") html += '<span class="' + page_2_class + '"><a onclick="loadPageRead(' + page2st +
            ')" style="cursor:pointer">' + page2st + '</a></span>';
        if (page3st !== "") html += '<span class="' + page_3_class + '"><a onclick="loadPageRead(' + page3st +
            ')" style="cursor:pointer">' + page3st + '</a></span>';
        if (page4st !== "") html += '<span class="' + page_4_class + '"><a onclick="loadPageRead(' + page4st +
            ')" style="cursor:pointer">' + page4st + '</a></span>';
        if (page5st !== "") html += '<span class="' + page_5_class + '"><a onclick="loadPageRead(' + page5st +
            ')" style="cursor:pointer">' + page5st + '</a></span>';
        html += '<span class="paging_next"><a onclick="loadPageRead(' + next +
        ')" style="cursor:pointer">다음</a></span>';
        html += '<span class="paging_last" onclick="loadPageRead(' + max +
            ')" style="cursor:pointer"><span class="skip" >맨 뒤로</span><a>&raquo;</a></span>';

        $("#list-paging").html(html);
    }

    function loadPageRead(page) {

        const Select = $("#search-keyword option:selected").val();
        const Keyword = $("#book-keyword").val();

        const PageUrl = Select === "NONE" ?
            "${pageContext.request.contextPath}/book/page/" + page + "/read.do" :
            "${pageContext.request.contextPath}/book/" +
            Select + "/" + Keyword + "/" + page + "/read.do";

        const PagingUrl = Select === "NONE" ?
            "${pageContext.request.contextPath}/book/page/" + page + "/current.do" :
            "${pageContext.request.contextPath}/book/" +
            Select + "/" + Keyword + "/" + page + "/current.do";


        $.ajax({
            type: "GET",
            url: PageUrl,
            success: function (data) {
                const page = data.page;
                renderBookList(page);
            },
        });

        $.ajax({
            type: "GET",
            url: PagingUrl,
            success: function (data) {
                listPaging(data);
            },
        });
    }

    $(document).ready(function (e) {
        loadPageRead(1);
    })
</script>

</html>