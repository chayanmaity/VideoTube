<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Playing Video</title>
<style>
div.container {
	width: 100%;
	border: 1px solid gray;
}

div.mainbody {
	margin-left: 170px;
	border-left: 1px solid gray;
	padding: 1em;
	text-align: left;
	font-size: 20px;
	background-color: #F5F5DC;
}
video {
    width: auto;
    height: 500px;
    
}
</style>
</head>
<body>
	<div class="container">

		<%@include file="header.jsp"%>

		<%@include file="list.jsp"%>
		
		<%
				
			String path=request.getParameter("video").toString();
			
			System.out.println(path);
		%>
		<div class="mainbody">
			<video style="display:block; margin: 0 auto;" controls>
  				<source src="<%=path %>" type="video/mp4">
  				<source src="<%=path %>" type="video/ogg">
  				<source src="<%=path %>" type="video/3gp">
  
			</video>
			<p><%=request.getParameter("name") %><br>
			<h6>Category: <%=request.getParameter("cate") %> || Uploaded by: <%=request.getParameter("uploader") %></h6>
			</p>
		</div>
	</div>
</body>
</html>