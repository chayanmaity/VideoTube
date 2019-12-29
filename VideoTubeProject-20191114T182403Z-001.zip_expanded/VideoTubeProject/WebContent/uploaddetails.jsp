<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VideoTube: Enter details</title>
<style>
div.container {
	width: 100%;
	border: 1px solid gray;
}

div.upload {
	margin-left: 170px;
	border-left: 1px solid gray;
	padding: 1em;
	text-align: center;
	font-size: 25px;
	background-color: #7E95C4;
}
input[type=submit] {
    width: 10em;  height: 2em;
}
</style>
</head>
<body>
	<div class="container">
		<%@include file="header.jsp"%>
		<%@include file="list.jsp"%>
 
		<div class="upload">
			<p style="font-size:27px; ">Step 2</p>
			<%= session.getAttribute("lastfilename").toString() %> Uploaded
			<form action="videodata.jsp" method="post">
				<table align="center">
					<tr>
						<td align="right">Video title:&nbsp;&nbsp;</td>
						<td align="left"><input type="text" name="file_name" size="35"></td>

					</tr>
					<tr>
						<td align="right">Category:&nbsp;&nbsp;</td>
						<td align="left"><select name="category"
							style="width: 200px;">
								<option value="Others">Others</option>
								<option value="Educational">Educational</option>
								<option value="Entertainment">Entertainment</option>
								<option value="Kids">Kids</option>
								<option value="Sports">Sports</option>
								<option value="movies">Movies</option>
						</select></td>
					</tr>
				</table>
				<input type="submit" value="Upload">
			</form>
			
		</div>
		<%@ include file="footer.jsp" %>
	</div>



</body>
</html>