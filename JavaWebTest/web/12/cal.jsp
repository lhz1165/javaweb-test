<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="cal" scope="request" class="com.logBean.Calculator">
    <jsp:setProperty name="cal" property="*"/>
</jsp:useBean>

<html>
<head>
    <title>Web Calculator</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
</head>

<body>
<%
    String CalRst = null;
    try {
        cal.calculate();
        CalRst = cal.getFirOpd() + cal.getOperator() + cal.getSndOpd() + "=" + cal.getResult();
    }catch (Exception e) {
        CalRst = e.getMessage();
    }
%>

<!--建立输入表单，提交给cal.jsp处理-->
<form method=get action="cal.jsp">
    <table>
        <tr>
            <td>简单计算器</td>
        </tr>
        <tr>
            <td>Result : </td>
            <td><input type="text" name="result" value=<%=CalRst%> /></td>
        </tr>
        <tr>
            <td>FstOpd : </td>
            <td><input type="text" name="firOpd" /></td>
        </tr>
        <tr>
            <td>Operator : </td>
            <td><select name="operator">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
            </td>
        </tr>
        <tr>
            <td>SndOpd : </td>
            <td><input type="text" name="sndOpd" /></td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#eeeeee"><input type=submit value=Calculate /></td>
        </tr>
    </table>
</form>
</body>
</html>
