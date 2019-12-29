<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
div.container {
	width: 100%;
	border: 1px solid gray;
}

header {
	padding: 2mm;
	color: white;
	background-color: red;
	clear: left;
	font-size: 20px;
}

form {
	display: inline-block;
}
</style>
</head>
<body>

	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@page import="java.net.URLEncoder"%>


	<%
		String str = "";

		if (session.getAttribute("username") == null) {
			System.out.print("null");
			str = "<a href=\"login.jsp\" style=\"float: right;\">Upload Video</a>";
		} else {
			String user = session.getAttribute("username").toString();
			System.out.print(user);
			str = "&nbsp;&nbsp;&nbsp;&nbsp;"
					+ "Welcome "
					+ user
					+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
					+ " <a href=\"logout.jsp\" style=\"float: right;\">(LogOut)</a>"
					+ " <a href=\"uploadvideo.jsp\" >Upload Videos</a>";

		}

		System.out.println(str);
	%>
	<div id="outerline" class="container">

		<header> &nbsp;&nbsp;<b><a href="index.jsp">VideoTube</a></b> &emsp;&emsp;&emsp;
		<form action="indexsearch.jsp" method="get">
			<input type="text" placeholder="Search.." name="search" size="50"
				maxlength="100" style="float: center;"> &nbsp;&nbsp;&nbsp; <input
				type="submit" value="Search" align="middle">
		</form>
		<%=str%> </header>
	</div>

</body>
</html>