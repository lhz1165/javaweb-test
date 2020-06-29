
<jsp:useBean id="user" class="com.logBean.LogBean" scope="page"></jsp:useBean>
<h2>跟表单关联，设置所有的属性值</h2>
<hr/>
<jsp:setProperty property="*" name="user"/>
用户名：<jsp:getProperty property="username" name="user"/><br/>
密码：<jsp:getProperty property="password" name="user"/>

