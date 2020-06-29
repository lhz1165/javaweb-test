<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="bean" class="com.logBean.LogBean" scope="page" />

<h2>注册成功！</h2>
<jsp:setProperty property="*" name="user"/>
用户名：<jsp:getProperty property="username" name="user"/><br/>
密码：<jsp:getProperty property="password" name="user"/>
真实姓名：<jsp:getProperty property="trueName" name="user"/>
性别：<jsp:getProperty property="sex" name="user"/>
地址：<jsp:getProperty property="address" name="user"/>
电话：<jsp:getProperty property="phone" name="user"/>






</body>
</html>


