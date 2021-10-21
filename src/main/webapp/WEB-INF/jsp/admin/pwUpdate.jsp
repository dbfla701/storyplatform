<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>비밀번호 변경 : 관리자 : 부천 스토리 창</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <section class="all_wrap">
        <div class="all_form_wrap">
            <h2 class="text-center">관리자 비밀번호 변경</h2>
            <div class="form_wrap">
                <form name="joinForm" method="post">
                    <table>
                        <tbody>
                            <tr>
                                <td><label for="inputPw">기존 비밀번호</label></td>
                                <td class="text_form">
                                    <input type="text" id="inputPw" name="inputPw" style="width:85%;" />
                                    <input type="submit" onclick="" value="확인" class="admin_btn">
                                </td>
                            </tr>

                            <tr>
                                <td><label>변경 비밀번호</label></td>
                                <td><input type="text" id="newPw" name="newPw" /></td>
                            </tr>

                            <tr>
                                <td><label>비밀번호 확인</label></td>
                                <td><input type="text" id="newPw2" name="newPw2" /></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <p class="text-center"><input type="submit" value="비밀번호 변경" onclick='' class="admin_btn text-form" />
                </p>
            </div>
        </div>
    </section>

    <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>