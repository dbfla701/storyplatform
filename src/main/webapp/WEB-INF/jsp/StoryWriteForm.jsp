<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>스토리 작성 : 스토리 등록 : 부천 스토리 창</title>
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
                <li class="prev_location">스토리 등록</li>
                <li class="now_location">스토리 작성하기</li>
            </ul>

            <div id="content" class="section">
                <div class="sub_box">
                    <div>
                        <ul class="text-left sub_box_list list-padding-left">
                            <li>작성한 글에 대한 저작권은 창작자 본인에게 있으며, 타인의 지식재산권을 침해하지 않아야합니다.</li>
                            <li>등록된 글은 다양한 통로로 기획·개발될 수 있으며, 등록된 이메일로 연락될 수 있습니다. 원치 않으면 비공개로 체크해주세요.</li>
                            <li>등록한 글은 관리자 승인을 거처 게시됩니다.</li>
                            <li class="warning_text" style="list-style: none;"><i
                                    class="fas fa-exclamation-circle"></i>&nbsp;&nbsp;비방, 욕설, 음란물, 광고 글이나 등록과 관련 없는 글,
                                저작권에 위배되는 글은 사전 통보 없이 삭제될 수 있습니다.</li>
                        </ul>
                    </div>
                </div>

                <p class="small_tit"><span class="tit_icon"></span>작성하기</p>
                <hr />

                <form name="joinUser" role="form" method="post" action="${pageContext.request.contextPath}/writing.do">
                    <div class="d-flex justify-content-between register_box row">
                        <div>
                            <p class="cont_txt">이메일</p>
                            <input type="text" id="" value="" placeholder="bucheon@naver.com"
                                class="input_email input_common" />
                        </div>

                        <div>
                            <p class="cont_txt">키워드</p>
                            <select name="" onchange="" class="keyWord_select">
                                <option>선택</option>
                                <option value="">로맨스</option>
                                <option value="">액션/무협</option>
                                <option value="">명량/코믹</option>
                                <option value="">공포/스릴러</option>
                                <option value="">탐정/추리</option>
                                <option value="">SF/판타지</option>
                                <option value="">기타</option>
                            </select>
                        </div>
                    </div>

                    <div>
                        <p class="cont_txt">이메일 공개 여부</p>
                        <label style="margin-right:1rem"><input type="radio" value="공개" name="emailcheck"
                                checked />공개</label>
                        <label><input type="radio" value="비공개" name="emailcheck" />비공개</label>
                    </div>

                    <p class="cont_txt"><label for="title">제목</label></p>
                    <input type="text" value="" id="title" name="title" placeholder="제목을 입력해주세요."
                        class="input_common write_txt" />
                    <p class="cont_txt"><label for="content">스토리 작성</label></p>
                    <textarea id="content" name="content" class="write_txt write_form"
                        placeholder="스토리를 작성해주세요."></textarea>
                    <p class="btn list_btn text-center"><input type="submit" value="등록" /></p>
                </form>
            </div>
        </div>

        <div class="cont_width">
        </div>
    </section>

    <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>