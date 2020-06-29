<%--
  Created by IntelliJ IDEA.
  User: lhz
  Date: 2020/6/28
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mysql.cj.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //驱动程序名
        String driverName = "com.mysql.jdbc.Driver";
        //数据库用户名
        String userName = "root";
        //密码
        String userPasswd = "root";
        //数据库名
        String dbName = "jsp_db";
        //表名
        String tableName = "student";
        //联结字符串
        String url = "jdbc:mysql://localhost/" + dbName + "?user="
                + userName + "&password=" + userPasswd+"&useUnicode=true&characterEncoding=utf8&autoReconnect=true&useSSL=false&serverTimezone=UTC";
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
        Connection connection = DriverManager.getConnection(url);
        Statement statement = connection.createStatement();
        String sql = "SELECT * FROM " + tableName;
        ResultSet rs = statement.executeQuery(sql);
        //获得数据结果集合
        ResultSetMetaData rmeta = rs.getMetaData();
        //确定数据集的列数，亦字段数
        int numColumns = rmeta.getColumnCount();
        // 输出每一个数据值
        out.print("id");
        out.print("|");
        out.print("name");
        out.print("|");
        out.print("password");
        out.print("|");
        out.print("detail");
        out.print("<br>");
        while (rs.next()) {
            out.print(rs.getInt(1) + " ");
            out.print("|");
            out.print(rs.getString(2));
            out.print("|");
            out.print(rs.getString(3));
            out.print("|");
            out.print(rs.getString(4));
            out.print("<br>");
        }
        out.print("<br>");
        out.print("数据库连接成功，恭喜你");
        rs.close();
        statement.close();
        connection.close();

    %>
</body>
</html>
