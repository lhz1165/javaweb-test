<%--
  Created by IntelliJ IDEA.
  User: lhz
  Date: 2020/6/28
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

  <head>

        <title>research.jsp页面</title>

      </head>

  <body>

    <form  ctiona="myrequest.jsp" method="post" name=form >

         <font size="5">个人信息调查表</font><br>

         用户名：<input type="text" value=""name="name"><br>

         密码：<input type="password"value="" name="age"><br>
         确认密码：<input type="password"value="" name="age"><br>

         性别：

         <select name="sex">

         <Option selected value="male">男

         <Option selected value="female">女

     

         </select><br>

       
         爱好：

         <input type="checkbox"name="item"value="运动">运动

         <input type="checkbox"name="item"value="旅游">旅游

         <input type="checkbox"name="item"value="服装">服装<br>

         <input type="checkbox"name="item"value="阅读">阅读

         <input type="checkbox"name="item"value="音乐">音乐

         <input type="checkbox"name="item"value="购物">购物<br>

              政治面貌：<input type="text" value=""name="name"><br>



         个人简介：

         <textArea name="message"rows="3"cols="10"></textArea><br>

         <input type="submit"value="提交"name="submit">

         <input type="reset"value="重置">   

        

        </form>


