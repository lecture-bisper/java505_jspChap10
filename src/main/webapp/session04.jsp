<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>세션 사용하기</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
          crossorigin="anonymous"></script>
</head>
<body>
<h3>----- 세션을 삭제하기 전 -----</h3>
<%
  String userId = (String) session.getAttribute("userId");
  String userPw = (String) session.getAttribute("userPw");
  out.println("설정된 세션 이름 userId : " + userId + "<br>");
  out.println("설정된 세션 값 userPw : " + userPw + "<br>");

  session.removeAttribute("userId");
%>
<br>
<h3>----- 세션을 삭제한 후 -----</h3>
<%
  userId = (String) session.getAttribute("userId");
  userPw = (String) session.getAttribute("userPw");
  out.println("설정된 세션 이름 userId : " + userId + "<br>");
  out.println("설정된 세션 값 userPw : " + userPw + "<br>");
%>
</body>
</html>






