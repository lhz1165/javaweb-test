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
    request.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    out.println(username);
    session.setAttribute("username",username);
%>

<form action="result2.jsp" method="post" name="form2 ">
    account:<label>
    <input type="text" name="account">
</label>
    <input type="submit" name="sumbit">

</form>




</body>
</html>
