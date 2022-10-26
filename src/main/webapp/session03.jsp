<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 3:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>세션사용하기</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
          crossorigin="anonymous"></script>
</head>
<body>
<%
  String name;
  String value;

  //  Enumeration 타입으로 데이터를 받을 경우 원하는 데이터 타입을 설정할 수 있음
  Enumeration<String> en = session.getAttributeNames();
  // 타입 미설정 시 Object 타입
//  Enumeration en = session.getAttributeNames();
  int i = 0;

  while (en.hasMoreElements()) {
    i++;
    name = en.nextElement();
    value = (String)session.getAttribute(name);

    out.println("설정된 세션의 속성 이름 : [" + i + "] : " + name + "<br>");
    out.println("설정된 세션의 속성 값 : [" + i + "] : " + value + "<br>");
  }
%>
</body>
</html>






