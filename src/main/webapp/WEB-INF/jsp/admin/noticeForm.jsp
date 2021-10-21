<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>공지사항 작성 : 관리자 : 부천 스토리 창</title>
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
                <li class="now_location">공지사항 작성</li>
            </ul>

            <p class="small_tit"><span class="tit_icon"></span>공지사항 작성</p>
            <hr />

            <form name="joinUser" role="form" method="post" action="${pageContext.request.contextPath}/noticeWrite.do">
                <table class="form_table">
                    <tbody>
                        <tr>
                            <td><label for="sort">구분</label>
                                <select id="sort" name="sort">
                                    <option value="공지">공지</option>
                                    <option value="알림">알림</option>
                                    <option value="공고">공고</option>
                                </select>
                            </td>
                            <td class="table_tit"><label for="title">제목</label> </td>
                            <td class="table_txt">
                                <input type="text" id="title" name="title" placeholder="제목을 입력하세요" />
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit"><label for="content">내용</label> </td>
                            <td class="table_txt">
                                <textarea id="content" name="content" placeholder="내용을 입력하세요"></textarea>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div class="text-center m-up-down">
                    <input type="submit" onclick="" value="작성" class="admin_btn on f-size-up " />
                    <input type="submit" onclick="" value="취소" class="admin_btn cancel f-size-up" />
                </div>
            </form>
        </div>
    </section>

    <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>