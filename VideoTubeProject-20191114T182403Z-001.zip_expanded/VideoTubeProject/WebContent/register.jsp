<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VideoTube:Register</title>
<style>
div.container {
	width: 100%;
	border: 1px solid gray;
}

div.register {
	margin-left: 170px;
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

		<div class="register">
			<form action="reg.jsp" method="post">
				<b>Enter UserName</b> &nbsp; &nbsp;<b><input type="text"
					name="username" size="30"></b><br> <b>Enter Password </b>
				&nbsp;&nbsp;&nbsp;&nbsp;<b><input type="password"
					name="password" size="30"></b><br> <b>Re-enter
					Password </b> &nbsp;&nbsp;<b><input type="password"
					name="repassword" size="30"></b><br> <br> <b><input
					type="submit" value="register" style="height: 30px; width: 100px"></b><br>
				<br>
			</form>
		</div>


		<%@include file="footer.jsp"%>

	</div>



</body>
</html>