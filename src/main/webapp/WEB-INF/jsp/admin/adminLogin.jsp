<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>관리자 로그인 : 부천 스토리 창</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <form name="joinUser" role="form" method="post" action="${pageContext.request.contextPath}/logining.do">
        <%@ include file="/WEB-INF/views/header.jsp" %>

        <section class="all_wrap">
            <div class="all_form_wrap">
                <h2 class="text-center">관리자 로그인</h2>
                <div class="form_wrap">
                    <table>
                        <tbody>
                            <tr>
                                <td><label>아이디</label></td>
                                <td><input type="text" id="adminid" name="adminid" /></td>
                            </tr>

                            <tr>
                                <td><label>비밀번호</label></td>
                                <td><input type="password" id="pw" name="pw" /></td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="text-center"><input type="submit" value="로그인" class="admin_btn login" /></p>
                </div>
            </div>
        </section>

        <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

        <%@ include file="/WEB-INF/views/footer.jsp" %>
    </form>
</body>

</html>