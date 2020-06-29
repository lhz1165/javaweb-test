<%--
  Created by IntelliJ IDEA.
  User: lhz
  Date: 2020/6/28
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="friend" scope="request" class="com.logBean.Friend">
    <jsp:setProperty name="friend" property="*"/>
</jsp:useBean>
<html>

<head>
    <title>Title</title>
</head>
<body>
<h3>查看信息</h3>
<%
    out.println(       new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8")
    );
    out.println(       new String(request.getParameter("address").getBytes("ISO-8859-1"),"utf-8")
    );
    out.println(       new String(request.getParameter("phone").getBytes("ISO-8859-1"),"utf-8")
    );
    out.println(       new String(request.getParameter("qq").getBytes("ISO-8859-1"),"utf-8")
    );
    out.println(      new String(request.getParameter("email").getBytes("ISO-8859-1"),"utf-8")
    );

%>

</body>
</html>
