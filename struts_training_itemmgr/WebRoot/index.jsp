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
<title>���Ϲ�����Ŀ</title>
	<script language="javascript">
		function check1(){
			if( document.getElementById("username").value==""){
				alert("�������û���");
				return false;
			}
			if( document.getElementById("password").value==""){
				alert("����������");
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
	<h1>���Ϲ�����Ŀ</h1>
	<hr>
	<form name="text" action="user/login.do" method="post">
	<!--<form action="user/login.do" method="post">-->
		�û���<input type="text" name="username" id="username"><br>
		���룺<input type="password" name="password" id="password"><br>
		<tr>
			<td><input type="button" value="��½" name="login" onClick="check1()"></td>&nbsp;&nbsp;
			<td ><input type="button" value="ע��" name="register" onClick="check2()"></td>
		</tr>
		<!--<input type="submit" value="��¼">&nbsp&nbsp&nbsp&nbsp<input type="submit" value="ע��">-->
	</form>
	<p>
	<a href="basedata/changelan.do?lan=zh">����</a>&nbsp&nbsp<a href="basedata/changelan.do?lan=en">Ӣ��</a><br>

</body>
</html>