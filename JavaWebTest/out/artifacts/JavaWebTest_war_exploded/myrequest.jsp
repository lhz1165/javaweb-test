<%--
  Created by IntelliJ IDEA.
  User: lhz
  Date: 2020/6/28
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

  <head>

        <title>myrequest.jsp页面</title>

      </head>

  <body>

<%

//    String referer = request.getHeader("Referer");
//
//    if(referer==null||referer.trim().length()==0||
//
//            !referer.equals("http://localhost:8080/myform.jsp")){
//
//        response.sendRedirect("myform.jsp");
//
//        return;
//
//    }

    request.setCharacterEncoding("utf-8");

    response.setContentType("text/html;charset=utf-8");

    String name=request.getParameter("name");

    String age=request.getParameter("age");

    String xueli=request.getParameter("sex");

    String itemName[]=request.getParameterValues("item");

    String pingjia =request.getParameter("R");

    String message=request.getParameter("message");

    out.println("您的提交的信息"+"<br>");



    out.println("用户名："+name+"<br>");





    out.println("密码："+age+"<br>");



    out.println("性别："+xueli+"<br>");



    out.println("爱好：");



    for(int k=0;k<itemName.length;k++)

    {

    out.println(""+itemName[k]+"<br>");

    }



    out.println("个人简介："+message+"<br>");

%>

  </body>

</html>
