<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>전국 중고등학생 이야기대회 : 부천 스토리 창</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <section class="all_wrap">
        <div class="sub_bg_wrap max-w-1920 sub3_bg">
            <h2 class="text-center banner_tit">전국 중고등학생 이야기 대회</h2>
        </div>

        <div class="container">
            <ul class="location d-flex align-items-center">
                <li>
                    <a href="main.jsp">
                        <i class="fas fa-home"></i>
                        <span class="skip">메인 바로가기</span>
                    </a>
                </li>
                <li class="now_location">전국 중고등학생 이야기 대회</li>
            </ul>

            <div id="content" class="section">
                <div class="sub_box">
                    <div class="text-center">
                        <ul class="d-inline m-0-auto text-left sub_box_list list-padding-left">
                            <li>말하고 듣는 능력과 기술·상상력·창조력 향상 및 창의인재 양성을 목표로 2021년부터 부천시와 (사)전국국어교사모임이 공동개최하며, <br />전국 15개
                                지역 예선을 거처 부천에서 본선대회가 열린다.</li>
                            <li style="list-style: none;">※&nbsp;&nbsp;2000년 10월(1회) ~ 2021년 12월(21회)</li>
                            <li class="warning_text" style="list-style: none;"><i
                                    class="fas fa-exclamation-circle"></i>&nbsp;&nbsp;본 웹사이트에 사용된 모든 컨텐츠, 이미지 등의 무단 도용 및
                                배포 행위를 금지합니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="cont_width d-flex justify-content-between align-items-baseline">
            <div class="btn link_btn std_btn">
                <a href="#" class="border-50 d-inline m-right-half on">중등부</a><a href="#"
                    class="border-50 d-inline">고등부</a>
            </div>

            <select name="archiveOption" onchange="location.href=this.value" class="all_select">
                <option>연도별</option>
                <option value="/wholeStudent.do">2020</option>
            </select>
        </div>

        <div class="section sub_cont_bg max-w-1920">
            <div class="container t">
                <p class="cont_tit text-center">2020 수상작</p>
                <hr />

                <div class="student square_wrap d-flex f-wrap">
                    <div class="square_content text-center sub3_m1">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=BdjFMrel-3c&list=PLUJ8vYUKD8CxvcgB5-yieQq9JOtwI8aBM&index=3"
                                class="inner d-flex justify-content-center">
                                <p class="tit">부산 주례중학교<br />김&cir;진</p>
                            </a>
                        </div>
                    </div>
                    <div class="square_content text-center sub3_m2">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=OtPWWqwwdHQ&list=PLUJ8vYUKD8CxvcgB5-yieQq9JOtwI8aBM&index=21"
                                class="inner d-flex justify-content-center">
                                <p class="tit">대구 범물중학교<br />전&cir;현</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_m3">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=6thDOekqwtk&list=PLUJ8vYUKD8CxvcgB5-yieQq9JOtwI8aBM&index=25"
                                class="inner d-flex justify-content-center">
                                <p class="tit">광주 월곡중학교<br />권&cir;민</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_m4">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=vqsL4feLLBg&list=PLUJ8vYUKD8CxvcgB5-yieQq9JOtwI8aBM&index=18"
                                class="inner d-flex justify-content-center">
                                <p class="tit">대구 새본리중학교<br />류&cir;서</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_m5">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=Jup0bCfluM0&list=PLUJ8vYUKD8CxvcgB5-yieQq9JOtwI8aBM&index=17"
                                class="inner d-flex justify-content-center">
                                <p class="tit">대구 조암중학교<br />이&cir;호</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_m6">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=tXCrGUvwrPk&list=PLUJ8vYUKD8CxvcgB5-yieQq9JOtwI8aBM&index=27"
                                class="inner d-flex justify-content-center">
                                <p class="tit">광주 전대사대부중<br />박&cir;민</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_m7">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=EoEFn4dmnPw&list=PLUJ8vYUKD8CxvcgB5-yieQq9JOtwI8aBM&index=13"
                                class="inner d-flex justify-content-center">
                                <p class="tit">부산 모전중학교<br />이&cir;원</p>
                            </a>
                        </div>
                    </div>

                    <div class="skip">Icons made by <a href="https://www.freepik.com" title="Freepik">Freepik</a> from
                        <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
                    <div class="square_content text-center d-n-576 sub3_default"></div>

                    <div class="square_content text-center d-n-768 sub3_default"></div>
                </div>

                <div class="student square_wrap d-flex f-wrap" style="display:none">
                    <div class="square_content text-center sub3_h1">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=ndouhl8fm_o&list=PLUJ8vYUKD8CzC3eYb2G0G_qkOMIXIgx47&index=13"
                                class="inner d-flex justify-content-center">
                                <p class="tit">대구 운암고등학교<br />김&cir;호</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_h2">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=mU0zMKHfqSo&list=PLUJ8vYUKD8CzC3eYb2G0G_qkOMIXIgx47&index=12"
                                class="inner d-flex justify-content-center">
                                <p class="tit">충북 양청고등학교<br />이&cir;진</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_h3">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=qYwD_Itmhbg&list=PLUJ8vYUKD8CzC3eYb2G0G_qkOMIXIgx47&index=5"
                                class="inner d-flex justify-content-center">
                                <p class="tit">부산 부산동여자고등학교<br />김&cir;서</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_h4">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=v2HYEHAyDJw&list=PLUJ8vYUKD8CzC3eYb2G0G_qkOMIXIgx47&index=15"
                                class="inner d-flex justify-content-center">
                                <p class="tit">광주 금호중앙여자고등학교<br />박&cir;리</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_h5">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=1HvYHgLJxyI&list=PLUJ8vYUKD8CzC3eYb2G0G_qkOMIXIgx47&index=1"
                                class="inner d-flex justify-content-center">
                                <p class="tit">전남 중마고등학교<br />이&cir;경</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_h6">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=eA2do3K4ZY0&list=PLUJ8vYUKD8CzC3eYb2G0G_qkOMIXIgx47&index=9"
                                class="inner d-flex justify-content-center">
                                <p class="tit">대구 호산고등학교<br />노&cir;은</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_h7">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=wxgPNYqXW44&list=PLUJ8vYUKD8CzC3eYb2G0G_qkOMIXIgx47&index=10"
                                class="inner d-flex justify-content-center">
                                <p class="tit">대구 구암고등학교<br />김&cir;령</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center sub3_h8">
                        <div class="inner_wrap d-flex">
                            <a href="https://www.youtube.com/watch?v=HSLpo8v95_o&list=PLUJ8vYUKD8CzC3eYb2G0G_qkOMIXIgx47&index=7"
                                class="inner d-flex justify-content-center">
                                <p class="tit">경남 경남항공고등학교<br />이&cir;훈</p>
                            </a>
                        </div>
                    </div>

                    <div class="square_content text-center d-n-768 sub3_default"></div>
                </div>

            </div>
        </div>
    </section>

    <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>