<%--
  Created by IntelliJ IDEA.
  User: lhz
  Date: 2020/6/28
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username == null || password == null) {
        response.sendRedirect("response.jsp");
    }else {
        response.sendRedirect("ok.jsp");

    }
%>
</body>
</html>
