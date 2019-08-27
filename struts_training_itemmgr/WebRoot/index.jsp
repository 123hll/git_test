<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>物料管理项目</title>
	<script language="javascript">
		function check1(){
			if( document.getElementById("username").value==""){
				alert("请输入用户名");
				return false;
			}
			if( document.getElementById("password").value==""){
				alert("请输入密码");
				return false;
			}
			document.text.submit();
		}
		function check2(){
			var url="<%=path %>/register.html";
			window.location.href=url;
		}
	</script>
</head>
<body>
	<h1>物料管理项目</h1>
	<hr>
	<form name="text" action="user/login.do" method="post">
	<!--<form action="user/login.do" method="post">-->
		用户：<input type="text" name="username" id="username"><br>
		密码：<input type="password" name="password" id="password"><br>
		<tr>
			<td><input type="button" value="登陆" name="login" onClick="check1()"></td>&nbsp;&nbsp;
			<td ><input type="button" value="注册" name="register" onClick="check2()"></td>
		</tr>
		<!--<input type="submit" value="登录">&nbsp&nbsp&nbsp&nbsp<input type="submit" value="注册">-->
	</form>
	<p>
	<a href="basedata/changelan.do?lan=zh">中文</a>&nbsp&nbsp<a href="basedata/changelan.do?lan=en">英文</a><br>

</body>
</html>