<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>괴담수상작 : 부천 스토리 창</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <section class="all_wrap">
        <div class="sub_bg_wrap max-w-1920 sub2_bg">
            <h2 class="text-center banner_tit">괴담 수상작</h2>
        </div>

        <div class="container">
            <ul class="location d-flex align-items-center">
                <li>
                    <a href="main.jsp">
                        <i class="fas fa-home"></i>
                        <span class="skip">메인 바로가기</span>
                    </a>
                </li>
                <li class="now_location">괴담 수상작</li>
            </ul>

            <div id="content" class="section">
                <div class="sub_box">
                    <div class="text-center">
                        <ul class="d-inline m-0-auto text-left sub_box_list list-padding-left">
                            <li>2020년 <b>유네스코창의도시 부천</b>과 <b>부천국제판타스틱영화제</b>가 함께 론칭한
                                ‘괴담’을 주제로 한 단편영화 제작지원 프로젝트.</li>
                            <li>시나리오를 공모하여 제작지원금과 후반제작 멘토링을 지원,
                                완성작은 다음해 BIFAN을 통해 상영된다.</li>
                            <li>&lt;기획(개발) → 제작 → 배급&gt;의 선순환구조를 이루는 ‘부천 괴담 생태계 구축’을 추진하고 있다.</li>
                            <li class="warning_text" style="list-style: none;"><i
                                    class="fas fa-exclamation-circle"></i>&nbsp;&nbsp;본 웹사이트에 사용된 모든 컨텐츠, 이미지 등의 무단 도용 및
                                배포 행위를 금지합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="cont_width text-right">
            <select name="archiveOption" onchange="location.href=this.value" class="all_select">
                <option>연도별</option>
                <option value="/ghostSusang.do">2020</option>
            </select>
        </div>

        <div class="section sub_cont_bg max-w-1920">
            <div class="container">
                <p class="cont_tit text-center">2020 수상작</p>
                <hr />

                <div class="square_wrap d-flex f-wrap">
                    <div class="square_content text-center sub2_bg1">
                        <div class="inner_wrap d-flex">
                            <a href="sub2-1.jsp" class="inner d-flex justify-content-center">
                                <p class="tit">귀신 친구</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub2_bg2">
                        <div class="inner_wrap d-flex">
                            <a href="sub2-2.jsp" class="inner d-flex justify-content-center">
                                <p class="tit">딩크족</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub2_bg3">
                        <div class="inner_wrap d-flex">
                            <a href="sub2-3.jsp" class="inner d-flex justify-content-center">
                                <p class="tit">로타리 여자</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub2_bg4">
                        <div class="inner_wrap d-flex">
                            <a href="sub2-4.jsp" class="inner d-flex justify-content-center">
                                <p class="tit">별난 TV백과 전국의 <br /> 기인들을 찾아서!</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub2_bg5">
                        <div class="inner_wrap d-flex">
                            <a href="sub2-5.jsp" class="inner d-flex justify-content-center">
                                <p class="tit">불안은 영혼을 잠식한다</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub2_bg6">
                        <div class="inner_wrap d-flex">
                            <a href="sub2-6.jsp" class="inner d-flex justify-content-center">
                                <p class="tit">소망어린이집 근무 안내서</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub2_bg7">
                        <div class="inner_wrap d-flex">
                            <a href="sub2-7.jsp" class="inner d-flex justify-content-center">
                                <p class="tit">안아줘, 독바로 안아줘!</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub2_bg8">
                        <div class="inner_wrap d-flex">
                            <a href="sub2-8.jsp" class="inner d-flex justify-content-center">
                                <p class="tit">애타게 찾던 그대</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub2_bg9">
                        <div class="inner_wrap d-flex">
                            <a href="sub2-9.jsp" class="inner d-flex justify-content-center">
                                <p class="tit">흔적</p>
                            </a>
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