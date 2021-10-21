<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>스토리 등록 : 관리자 : 부천 스토리 창</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <section class="all_wrap">
        <div class="sub_bg_wrap sub4_bg">
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
                <li class="prev_location">관리자</li>
                <li class="now_location">스토리 등록</li>
            </ul>

            <div id="content" class="m-up-down m-up-down-reduce">
                <div class="d-flex justify-content-between align-items-baseline">
                    <p class="btn link_btn"><a href="sub4-1.jsp" class="border-50"><span class="d-n-576">스토리
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

            <div class="clearfix">
                <p class="small_tit"><span class="tit_icon"></span>작성글 전체 보기</p>
                <hr />
                <select name="" onchange="" class="all_select right-float">
                    <option selected>전체 목록</option>
                    <option value="">반려 목록</option>
                    <option value="">등록 목록</option>
                </select>
            </div>

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
                            <th class="d-n-576">순서</th>
                            <th>제목</th>
                            <th class="d-n-576">키워드</th>
                            <th>상태</th>
                            <th>선택</th>
                        </tr>
                    </thead>
                    <tbody class="col_body">
                        <c:forEach items="${dto}" var="dto">
                            <tr id="list">
                                <td class="d-n-576" id="seq">
                                    <c:out value="${dto.seq}" />
                                </td>
                                <td class="txt-overflow"><a
                                        href="${pageContext.request.contextPath}/admin/storyAllListDetail.do?title=${dto.title}">
                                        <c:out value="${dto.title}" />
                                    </a></td>
                                <td class="d-n-576">
                                    <c:out value="${dto.keyword}" />
                                </td>
                                <td>${dto.permit}</td>
                                <td>
                                    <input type="button" class="admin_btn permit btn table_btn" id="per" value="등록" />
                                    <input type="button" class="admin_btn deny btn table_btn" id="de" value="반려" />
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
                                [ <a href="${pageContext.request.contextPath}/storyAllList.do?num=1">이전</a>
                                ]
                            </c:if>

                            <c:if test="${select > 1}">
                                [ <a href="${pageContext.request.contextPath}/storyAllList.do?num=${select - 1}">이전</a>
                                ]
                            </c:if>
                        </span>
                    </c:if>

                    <c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
                        <span class="paging_num">
                            <c:if test="${select != num}">
                                <a href="${pageContext.request.contextPath}/storyAllList.do?num=${num}">${num}</a>
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
                                [ <a href="${pageContext.request.contextPath}/storyAllList.do?num=1">다음</a>
                                ]
                            </c:if>

                            <c:if test="${select > 1}">
                                [ <a href="${pageContext.request.contextPath}/storyAllList.do?num=${select + 1}">다음</a>
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
    $("#per").click(function () {

        var str = ""
        var tdArr = new Array(); // 배열 선언
        var checkBtn = $(this);
        var tr = checkBtn.parent().parent();
        var td = tr.children();
        var seq = td.eq(0).text();

        alert(seq);

        $.ajax({

            type: "POST",
            url: "/admin/storyPermitList.do",
            async: false,
            data: {
                "seq": seq
            },
            dataType: "text",
            error: function (error) {
                console.log("error");
            },
            success: function (data) {
                console.log("success");
                alert("승인 되었습니다.");
                $('#list').remove();
                location.href = '/admin/storyPermitList.do';
            }
        });
    })


    $("#de").click(function () {

        var str = ""
        var tdArr = new Array(); // 배열 선언
        var checkBtn = $(this);
        var tr = checkBtn.parent().parent();
        var td = tr.children();
        var seq = td.eq(0).text();

        alert(seq);

        $.ajax({

            type: "POST",
            url: "/admin/storyDenyList.do",
            data: {
                "seq": seq
            },
            dataType: "text",
            error: function (error) {
                console.log("error");
            },
            success: function (data) {
                console.log("success");
                alert("반려되었습니다");
                $('#list').remove();
                location.href = '/admin/storyDenyList.do';
            }

        });
    })
</script>

</html>