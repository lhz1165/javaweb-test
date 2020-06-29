<%--
  Created by IntelliJ IDEA.
  User: lhz
  Date: 2020/6/28
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        out.println("usernmae "+ session.getAttribute("username"));
        out.println("account "+ request.getParameter("account"));


    %>

</body>
</html>
