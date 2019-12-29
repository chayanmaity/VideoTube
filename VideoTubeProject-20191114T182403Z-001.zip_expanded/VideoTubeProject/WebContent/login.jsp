<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VideoTube:login</title>
<style>
div.container {
	width: 100%;
	border: 1px solid gray;
}

div.login {
	margin-left: 1px;
	border-left: 1px solid gray;
	padding: 1em;
	text-align: center;
	font-size: 25px;
	background-color: #7E95C4;
}
</style>
</head>
<body>
	<div class="container">

		<%@include file="header.jsp"%>
		<%@include file="list.jsp"%>

		<div class="login">
			<p style="font-size: 19px">
				<font color="red">${param.message}</font>
			</p>
			<form action="log.jsp" method="post">
				<b>UserName</b> &nbsp; &nbsp;<b><input type="text"
					name="username" size="30"></b><br> <b>Password </b>
				&nbsp;&nbsp;&nbsp;&nbsp;<b><input type="password" name="password"
					size="30"></b><br> <br> <b><input type="submit"
					name="login" value="login" style="height: 30px; width: 100px"></b><br>
			</form>
			<br> <a href="register.jsp" style="font-size: 15px">Register
				with new account</a>
				<%  
     				if (session.getAttribute("username") == null) {  
        				System.out.print("null");
     				}
     				else{
     					String user=session.getAttribute("username").toString();
     					System.out.print(user);
     					
     				}
  				%>
  				${user}<b></b>
		</div>


		<%@include file="footer.jsp"%>

	</div>

</body>
</html>