<%--
  Created by IntelliJ IDEA.
  User: lhz
  Date: 2020/6/28
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    java.util.Date currentTime = new java.util.Date();//得到当前系统时间

    String str_date1 = formatter.format(currentTime); //将日期时间格式化
    String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式
    out.print(str_date1+"</br>");
    if (currentTime.getHours() >= 0 && currentTime.getHours() < 11) {
        out.print("早上好");
    }else if(currentTime.getHours() >= 11 && currentTime.getHours() < 14){
        out.print("中午好");
    }else if(currentTime.getHours() >= 14 && currentTime.getHours() < 20){
        out.print("下午好");
    }else if(currentTime.getHours() >= 20 && currentTime.getHours() < 24){
        out.print("晚上");
    }

%>
</body>
</html>
