<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload Video</title>
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


</style>
</head>
<body>
	<div class="container">
		<%@include file="header.jsp"%>
		<%@include file="list.jsp"%>
		
		<div class="upload">
		<p style="font-size:27px; ">Step 1</p>
		<p style="font-size: 19px">
				<font color="red">${param.msg}</font>
			</p>
			<form action="fileupload.jsp" method="post" enctype="multipart/form-data">
				<table align="center">
				
					<tr>
						<td align="right">Upload Video:&nbsp;&nbsp;</td>
						<td align="left"><input type="file" name="file" size="50" /> </td>
					</tr>
				
				</table>
				<input type="submit" value="Upload File"  />
				
				
			</form>
			
			
		</div>

		<%@include file="footer.jsp"%>
	</div>

</body>
</html>