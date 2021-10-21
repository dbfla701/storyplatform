<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>추천작 : 괴담스토리 : 부천 스토리 창</title>
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
                    <p class="text-center d-inline on"><span><input type="button" class="chu" name="chu"
                                value="추천작"></span></p>
                    <p class="text-center d-inline"><span><input type="button" class="book" name="book"
                                value="도서"></span></p>
                    <p class="text-center d-inline"><span><input type="button" class="nonBook" name="nonBook"
                                value="비도서"></span></p>
                </div>

                <div class="sub_box">
                    <div class="text-center">
                        <ul class="d-inline m-0-auto text-left sub_box_list list-padding-left">
                            <li>2020년 유네스코창의도시 부천과 부천국제판타스틱영화제는 전세계에 흩어져 있는 ‘괴담’ 9,373편을 수집하였다.</li>
                            <li>그중 BIFAN이 선정한 추천작을 도서와 비도서로 분류하여 소개한다.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="cont_width">
            <div class="border_tab_btn recommend m-0-auto">
                <p class="tab_btn text-center d-inline on"><span><a href="#">추천도서</a></span></p>
                <p class="tab_btn text-center d-inline"><span><a href="#">추천 비도서</a></span></p>
            </div>
        </div>

        <script type="text/javascript">
            $('.recommend .tab_btn').click(function (e) {
                e.preventDefault();
                var book = $(this).index();

                $('.recommend .tab_btn').removeClass("on");
                $('.recommend .tab_btn').eq(book).addClass("on");

                $(".book_tab").hide();
                $(".book_tab").eq(book).show();
            })

            $(window).resize(function () {
                if (window.innerWidth <= 1024) {
                    $('.book_img').off('hover');
                    $('.slide_arrow').click(function () {
                        $(this).prev().children('.book_detail').filter(':not(:animated)').slideToggle(
                            '500');
                    });
                } else {

                }
            }).resize();
        </script>

        <div class="section sub_cont_bg max-w-1920">
            <div class="container">
                <div class="book_tab">
                    <ul class="book_list d-flex f-wrap">
                        <li>
                            <div>
                                <div class="book_img">
                                    <a href="https://search.daum.net/search?w=bookpage&bookId=841978&tab=introduction&DA=LB2&q=%EB%AC%B4%EC%84%9C%EC%9A%B4%20%EC%9D%B4%EC%95%BC%EA%B8%B0%203%20%3A%20%EC%98%81%ED%98%BC%EC%9D%98%20%EC%A1%B0%EC%A2%85%EC%9E%90" target="_blank" ;>
                                        <img src="images/book1.jpg" alt="추천작 도서 표지" />
                                        <div class="book_detail d-flex justify-content-center align-items-center">
                                            <ul class="d-flex justify-content-center align-items-center">
                                                <li class="detail_txt">삐삐</li>
                                                <li class="detail_txt">논산 훈련소 2</li>
                                                <li class="detail_txt_small"> by 송준의</li>
                                            </ul>
                                        </div>
                                    </a>
                                    <div class="slide_arrow"><span class="top_arrow"></span></div>
                                </div>
                                <p class="list_txt txt-overflow">무서운 이야기 3 : 영혼의 조종자</p>
                                <p class="small_txt text-center txt-overflow">송준의</p>
                            </div>
                        </li>

                        <li>
                            <div>
                                <div class="book_img">
                                    <a href="https://search.daum.net/search?w=bookpage&bookId=938972&tab=introduction&DA=LB2&q=%EB%81%9D%EB%82%98%EC%A7%80%20%EC%95%8A%EC%9D%80%20%EB%AC%B4%EC%84%9C%EC%9A%B4%20%EC%9D%B4%EC%95%BC%EA%B8%B0" target="_blank" ;>
                                        <img src="images/book2.jpg" alt="추천작 도서 표지" />
                                        <div class="book_detail d-flex justify-content-center align-items-center">
                                            <ul class="d-flex justify-content-center align-items-center">
                                                <li class="detail_txt">전신거울 속의 남자</p>
                                                <li class="detail_txt">이상한 외출</p>
                                                <li class="detail_txt_small">by 비명소리가득한방</span>
                                            </ul>
                                        </div>
                                    </a>
                                    <div class="slide_arrow"><span class="top_arrow"></span></div>
                                </div>
                                <p class="list_txt txt-overflow">끝나지 않은 무서운 이야기 : 오싹한 공포의 세계에서 온 초대장</p>
                                <p class="small_txt text-center txt-overflow">비명소리가득한방</p>
                            </div>
                        </li>

                        <li>
                            <div>
                                <div class="book_img">
                                    <a href="https://search.daum.net/search?w=bookpage&bookId=5159636&tab=introduction&DA=LB2&q=%EA%B4%B4%EB%8B%B4%EC%88%98%EC%A7%91%EA%B0%80" target="_blank" ;>
                                        <img src="images/book3.jpg" alt="추천작 도서 표지" />
                                        <div class="book_detail d-flex justify-content-center align-items-center">
                                            <ul class="d-flex justify-content-center align-items-center">
                                                <li class="detail_txt">방문자</li>
                                                <li class="detail_txt">어제 죽은 친구</li>
                                                <li class="detail_txt">죽음의 노래</li>
                                                <li class="detail_txt">절대 검색해서는 안 되는 단어</li>
                                                <li class="detail_txt_small">by 전건우</li>
                                            </ul>
                                        </div>
                                    </a>
                                    <div class="slide_arrow"><span class="top_arrow"></span></div>
                                </div>
                                <p class="list_txt txt-overflow">괴담수집가</p>
                                <p class="small_txt text-center txt-overflow">전건우</p>
                            </div>
                        </li>

                        <li>
                            <div>
                                <div class="book_img">
                                    <a href="https://search.daum.net/search?w=bookpage&bookId=4956405&tab=introduction&DA=LB2&q=%EB%AC%B4%EC%A1%B0%EA%B1%B4%20%EB%AA%A8%EB%A5%B4%EB%8A%94%20%EC%B2%99%ED%95%98%EC%84%B8%EC%9A%94" target="_blank" ;>
                                        <img src="images/book4.jpg" alt="추천작 도서 표지" />
                                        <div class="book_detail d-flex justify-content-center align-items-center">
                                            <ul class="d-flex justify-content-center align-items-center">
                                                <li class="detail_txt">스승과 제자</li>
                                                <li class="detail_txt">두려움을 먹는 귀신</li>
                                                <li class="detail_txt">호구</li>
                                                <li class="detail_txt">21세기 귀신</li>
                                                <li class="detail_txt_small">by 문화류씨</li>
                                            </ul>
                                        </div>
                                    </a>
                                    <div class="slide_arrow"><span class="top_arrow"></span></div>
                                </div>
                                <p class="list_txt txt-overflow">무조건 모르는 척하세요</p>
                                <p class="small_txt text-center txt-overflow">문화류씨</p>
                            </div>
                        </li>

                        <li>
                            <div>
                                <div class="book_img">
                                    <a href="https://search.daum.net/search?w=bookpage&bookId=4956447&tab=introduction&DA=LB2&q=%EC%A0%80%EC%8A%B9%EC%97%90%EC%84%9C%20%EB%8F%8C%EC%95%84%EC%98%A8%20%EB%82%A8%EC%9E%90" target="_blank" ;>
                                        <img src="images/book5.jpg" alt="추천작 도서 표지" />
                                        <div class="book_detail d-flex justify-content-center align-items-center">
                                            <ul class="d-flex justify-content-center align-items-center">
                                                <li class="detail_txt">아버지의 귀몽</li>
                                                <li class="detail_txt">저승에서 돌아온 남자</li>
                                                <li class="detail_txt">끝나지 않는 지배</li>
                                                <li class="detail_txt_small">by 문화류씨</li>
                                            </ul>
                                        </div>
                                    </a>
                                    <div class="slide_arrow"><span class="top_arrow"></span></div>
                                </div>
                                <p class="list_txt txt-overflow">저승에서 돌아온 남자</p>
                                <p class="small_txt text-center txt-overflow">문화류씨</p>
                            </div>
                        </li>

                        <li>
                            <div>
                                <div class="book_img">
                                    <a href="https://search.daum.net/search?w=bookpage&bookId=825188&tab=introduction&DA=LB2&q=%ED%95%9C%EA%B5%AD%20%EA%B3%B5%ED%8F%AC%EB%AC%B8%ED%95%99%20%EB%8B%A8%ED%8E%B8%EC%84%A0%20%3A%20%EB%8F%BC%EC%A7%80%EA%B0%80%EB%A9%B4%20%EB%86%80%EC%9D%B4" target="_blank" ;>
                                        <img src="images/book6.jpg" alt="추천작 도서 표지" />
                                        <div class="book_detail d-flex justify-content-center align-items-center">
                                            <ul class="d-flex justify-content-center align-items-center">
                                                <li class="detail_txt">돼지가면 놀이 <span class="detail_txt_small">by 유재중</span></li>
                                                <li class="detail_txt">여관바리 <span class="detail_txt_small">by 김희선</span></li>
                                                <li class="detail_txt">파리지옥 <span class="detail_txt_small">by 엄길윤</span></li>
                                            </ul>
                                        </div>
                                    </a>
                                    <div class="slide_arrow"><span class="top_arrow"></span></div>
                                </div>
                                <p class="list_txt txt-overflow">한국 공포문학 단편선 : 돼지가면 놀이</p>
                                <p class="small_txt text-center txt-overflow">유재중 외 2인</p>
                            </div>
                        </li>

                        <li>
                            <div>
                                <div class="book_img">
                                    <a href="https://search.daum.net/search?w=bookpage&bookId=825079&tab=introduction&DA=LB2&q=%ED%95%9C%EA%B5%AD%20%EA%B3%B5%ED%8F%AC%EB%AC%B8%ED%95%99%20%EB%8B%A8%ED%8E%B8%EC%84%A0%203%20%3A%20%EB%82%98%EC%9D%98%20%EC%8B%9D%EC%9D%B8%20%EB%A3%B8%EB%A9%94%EC%9D%B4%ED%8A%B8" target="_blank" ;>
                                        <img src="images/book7.jpg" alt="추천작 도서 표지" />
                                        <div class="book_detail d-flex justify-content-center align-items-center">
                                            <ul class="d-flex justify-content-center align-items-center">
                                                <li class="detail_txt">노랗게 물든 기억 <span class="detail_txt_small">by 장은호</span></li>
                                                <li class="detail_txt">공포인자 <span class="detail_txt_small">by 신진오</span></li>
                                                <li class="detail_txt">담쟁이 집 <span class="detail_txt_small">by 우명희</span></li>
                                                <li class="detail_txt">불은 비 <span class="detail_txt_small">by 김준영</span></li>
                                                <li class="detail_txt">불 <span class="detail_txt_small">by 김종일</span></li>
                                            </ul>
                                        </div>
                                    </a>
                                    <div class="slide_arrow"><span class="top_arrow"></span></div>
                                </div>
                                <p class="list_txt txt-overflow">한국 공포문학 단편선 3 : 나의 식인 룸메이트</p>
                                <p class="small_txt text-center txt-overflow">장은호 외 4인</p>
                            </div>
                        </li>

                        <li>
                            <div>
                                <div class="book_img">
                                    <a href="https://search.daum.net/search?w=bookpage&bookId=824504&tab=introduction&DA=LB2&q=%ED%95%9C%EA%B5%AD%20%EA%B3%B5%ED%8F%AC%EB%AC%B8%ED%95%99%20%EB%8B%A8%ED%8E%B8%EC%84%A0%204" target="_blank" ;>
                                        <img src="images/book8.jpg" alt="추천작 도서 표지" />
                                        <div class="book_detail d-flex justify-content-center align-items-center">
                                            <ul class="d-flex justify-content-center align-items-center">
                                                <li class="detail_txt">첫 출근 <span class="detail_txt_small">by 장은호</span></li>
                                                <li class="detail_txt">배심원 <span class="detail_txt_small">by 김유라</span></li>
                                            </ul>
                                        </div>
                                    </a>
                                    <div class="slide_arrow"><span class="top_arrow"></span></div>
                                </div>
                                <p class="list_txt txt-overflow">한국 공포문학 단편선 4</p>
                                <p class="small_txt text-center txt-overflow">장은호, 김유라</p>
                            </div>
                        </li>

                        <li>
                            <div>
                                <div class="book_img">
                                    <a href="https://search.daum.net/search?w=bookpage&bookId=1587984&tab=introduction&DA=LB2&q=%EB%8B%A8%ED%8E%B8%EB%93%A4%2C%20%ED%95%9C%EA%B5%AD%20%EA%B3%B5%ED%8F%AC%EB%AC%B8%ED%95%99%EC%9D%98%20%EB%B0%A4" target="_blank" ;>
                                        <img src="images/book9.jpg" alt="추천작 도서 표지" />
                                        <div class="book_detail d-flex justify-content-center align-items-center">
                                            <ul class="d-flex justify-content-center align-items-center">
                                                <li class="detail_txt">이화령 <span class="detail_txt_small">by 왼손</span></li>
                                                <li class="detail_txt">그네 <span class="detail_txt_small">by 사마란</span></li>
                                                <li class="detail_txt">고속버스 <span class="detail_txt_small">by 엄성용</span></li>
                                            </ul>
                                        </div>
                                    </a>
                                    <div class="slide_arrow"><span class="top_arrow"></span></div>
                                </div>
                                <p class="list_txt txt-overflow">단편들, 한국 공포문학의 밤</p>
                                <p class="small_txt text-center txt-overflow">왼손 외 2인</p>
                            </div>
                        </li>

                        <li>
                            <div>
                                <div class="book_img">
                                    <a href="https://search.daum.net/search?w=bookpage&bookId=3707196&tab=introduction&DA=LB2&q=%ED%98%B8%EB%9F%AC%ED%94%BD%EC%85%98" target="_blank" ;>
                                        <img src="images/book10.jpg" alt="추천작 도서 표지" />
                                        <div class="book_detail d-flex justify-content-center align-items-center">
                                            <ul class="d-flex align-items-center">
                                                <li class="detail_txt">괴물이 있다</li>
                                                <li class="detail_txt">꿈속의 그녀</li>
                                                <li class="detail_txt_small">by 양국일, 양국영</li>
                                            </ul>
                                        </div>
                                    </a>
                                    <div class="slide_arrow"><span class="top_arrow"></span></div>
                                </div>
                                <p class="list_txt txt-overflow">호러픽션</p>
                                <p class="small_txt text-center txt-overflow">양국일, 양국영</p>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="book_tab" style="display:none">
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
                                <td class="d-n-576">16</td>
                                <td class="txt-overflow text-left"><a href="http://web.humoruniv.com/board/humor/read.html?table=fear&number=78655" target="_blank">그 날의 사진관</a></td>
                                <td>웃대 공포게시판</td>
                            </tr>
                            <tr>
                                <td class="d-n-576">15</td>
                                <td class="txt-overflow text-left"><a href="https://bbs.ruliweb.com/community/board/300145/read/30565738" target="_blank">그 마을의 비밀</a></td>
                                <td>루리웹</td>
                            </tr>
                            <tr>
                                <td class="d-n-576">14</td>
                                <td class="txt-overflow text-left"><a href="https://m.ruliweb.com/hobby/board/300145/read/30565436?%3F=&page=68&view=gallery" target="_blank">그것은 작고 검은 색을 띄었다</a></td>
                                <td>루리웹</td>
                            </tr>
                            <tr>
                                <td class="d-n-576">13</td>
                                <td class="txt-overflow text-left"><a href="https://www.fmkorea.com/3265365003" target="_blank">그들은 모르고 있다</a></td>
                                <td>에펨코리아</td>
                            </tr>
                            <tr>
                                <td class="d-n-576">12</td>
                                <td class="txt-overflow text-left"><a href="https://bbs.ruliweb.com/hobby/board/300145/read/4186384?search_type=subject&search_key=%EA%B8%88%EA%B8%B0" target="_blank">금기</a></td>
                                <td>루리웹</td>
                            </tr>
                            <tr>
                                <td class="d-n-576">11</td>
                                <td class="txt-overflow text-left"><a href="https://vkepitaph.tistory.com/892" target="_blank">꼬리</a></td>
                                <td>괴담의 중심</td>
                            </tr>
                            <tr>
                                <td class="d-n-576">10</td>
                                <td class="txt-overflow text-left"><a href="https://bbs.ruliweb.com/hobby/board/300145/read/30568272?search_type=subject&search_key=%EB%8F%99%EB%84%A4+%EB%AF%B8%EC%8B%B1%EA%B3%B5%EC%9E%A5" target="_blank">동네 미싱공장</a></td>
                                <td>루리웹</td>
                            </tr>
                            <tr>
                                <td class="d-n-576">9</td>
                                <td class="txt-overflow text-left"><a href="https://www.inven.co.kr/board/wow/2368/820470" target="_blank">동아리방 이야기</a></td>
                                <td>월드오브워크래프트인벤</td>
                            </tr>

                            <tr>
                                <td class="d-n-576">8</td>
                                <td class="txt-overflow text-left"><a href="https://bbs.ruliweb.com/community/board/300145/read/29018545" target="_blank">돼지를 사랑한 남자</a></td>
                                <td>루리웹</td>
                            </tr>

                            <tr>
                                <td class="d-n-576">7</td>
                                <td class="txt-overflow text-left"><a href="https://bbs.ruliweb.com/community/board/300143/read/47385887" target="_blank">새우니</a></td>
                                <td>루리웹</td>
                            </tr>

                            <tr>
                                <td class="d-n-576">6</td>
                                <td class="txt-overflow text-left"><a href="http://m.humoruniv.com/board/read.html?table=fear&number=46434 " target="_blank">씨발년</a></td>
                                <td>웃대 공포게시판</td>
                            </tr>

                            <tr>
                                <td class="d-n-576">5</td>
                                <td class="txt-overflow text-left"><a href="https://m.cafe.daum.net/subdued20club/RaxJ/84078?listURI=%2Fsubdued20club%2FRaxJ" target="_blank">악마가 날 살렸는데 차라리 그때 죽었길 바라곤 해</a></td>
                                <td>Reddit</td>
                            </tr>

                            <tr>
                                <td class="d-n-576">4</td>
                                <td class="txt-overflow text-left"><a href="https://bbs.ruliweb.com/etcs/board/700254/read/316" target="_blank">저주받은 강원도 농장에서의 악몽 – 소무덤의 진실</a></td>
                                <td>루리웹</td>
                            </tr>

                            <tr>
                                <td class="d-n-576">3</td>
                                <td class="txt-overflow text-left"><a href="https://bbs.ruliweb.com/community/board/300145/read/30566966" target="_blank">제천 늘봄가든</a></td>
                                <td>루리웹</td>
                            </tr>

                            <tr>
                                <td class="d-n-576">2</td>
                                <td class="txt-overflow text-left"><a href="https://bbs.ruliweb.com/community/board/300145/read/30566912" target="_blank">지리산 방울소리</a></td>
                                <td>루리웹</td>
                            </tr>

                            <tr>
                                <td class="d-n-576">1</td>
                                <td class="txt-overflow text-left"><a href="https://bbs.ruliweb.com/community/board/300143/read/47842271" target="_blank">충남 청양에서 도깨비</a></td>
                                <td>루리웹</td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="m-up-down text-center d-flex justify-content-center align-items-center paging_btn">
                        <span class="paging_first"><span class="skip">맨 앞으로</span><a href="#">&laquo;</a></span>
                        <span class="paging_prev"><a href="#">이전</a></span>
                        <span class="paging_now"><a href="#">1</a></span>
                        <span class="paging_num"><a href="#">2</a></span>
                        <span class="paging_next"><a href="#">다음</a></span>
                        <span class="paging_last"><span class="skip">맨 뒤로</span><a href="#">&raquo;</a></span>
                    </div>
                </div>
            </div>
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