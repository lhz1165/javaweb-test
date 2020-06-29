<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'MyJsp.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>

<body>
<%! final double PI = Math.PI;
    double r;

    double getArea(double a) {
        return PI * a * a;
    }

    double getLength(double a) {
        return 2 * PI * a;
    }
%>
<% r = 100;
    out.println("调用getArea方法计算半径是" + r + "的圆的面积：");
    double area = getArea(r);
    out.println(area);
    r = 50;
    out.println("<BR>调用getLength方法计算半径是" + r + "的圆的周长是：");
    double length = getLength(r);
    out.println(length);
%>


<input type="button" onclick='show()' value="我的星座"/>

<h2> 九九乘法表</h2>

<table width="100" height="100" border="5">
    <%
        int i, j;
        for (i = 1; i <= 9; i++) {
            out.println("<tr>");
            for (j = i; j <= 9; j++) {
                out.print("<td>" + " " + j + "*" + i + "=" + i * j + " " + "</td>");
            }
            for (j = 1; j < i; j++)
                out.print("<td>&nbsp</td>");
            out.println("</tr>");
        }
    %>
</table>


<script>
    function show() {
        var a = [['12-22', '01-19', '魔蝎座baidu'], ['01-20', '02-18', '水瓶座'], ['02-19', '03-20', '双鱼座'], ['02-21', '05-20', '白羊座'],
            ['04-21', '05-20', '金牛zhi座'], ['05-21', '06-21', '双子座'], ['06-22', '07-22', '巨蟹座'], ['07-23', '08-22', '狮子座'],
            ['08-23', '09-22', '处女座'], ['09-23', '10-22', '天秤座'], ['10-23', '11-21', '天蝎座'], ['11-22', '12-21', '射手座']];
        var datePattern = /^(\d{4})-(\d{1,2})-(\d{1,2})$/;
        var birthday = window.prompt('输入你的出生年月日(格式如1985-10-15)', '');
        try {
            if (!datePattern.test(birthday) && birthday) {
                alert('请输入正确的生日格式');
            } else {
                var b = new Date(Date.parse(birthday.replace('-', '/')));
                d = datePattern.exec(birthday);
                s = RegExp.$1;
                for (var i = 0; i < a.length; i++) {
                    var start_date = new Date(Date.parse(s + '/' + a[i][0].replace('-', '/')));
                    var end_date = new Date(Date.parse((i == 0 ? s - 0 + 1 : s) + '/' + a[i][1].replace('-', '/')));
                    if (b >= start_date && b <= end_date) {
                        window.status = '你的星座是:' + a[i][2];
                        alert('你的星座是'+ a[i][2]);
                        break;
                    }
                }
                if (i == '12') {
                    window.status = '错误的出生日期,无法解析';
                }
            }
        } catch (e) {
            alert("格式错误" + e);
        }
    }
</script>

</body>
</html>
