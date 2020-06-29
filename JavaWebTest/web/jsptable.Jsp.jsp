<%--
  Created by IntelliJ IDEA.
  User: lhz
  Date: 2020/6/28
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--循环输出表格-->
            
<table border="1">
                    <%
    for (int i = 0; i < 10; i++) {
%>
                             
    <tr>
                         <%
        for (int j = 0; j < 1; j++) {
    %>
                                    
        <td><%=i * j%>
        </td>
                         <%
        }
    %>
                              
    </tr>
                      <%
    }
%>
                 
</table>
</body>
</html>
