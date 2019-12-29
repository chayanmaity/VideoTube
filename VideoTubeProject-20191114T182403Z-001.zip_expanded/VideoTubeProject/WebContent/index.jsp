<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VideoTube</title>
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
	background-color: #E8BDF0;
}
</style>
</head>
<body>
	<div class="container">

		<%@include file="header.jsp"%>

		<%@include file="list.jsp"%>

		<div class="mainbody">
			<%@ page import="java.sql.*"%>
			<%
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager
							.getConnection("jdbc:mysql://localhost:3306/video",
									"root", "password");
					Statement st = con.createStatement();
					String sql = "select * from vdotable";
					ResultSet rs = st.executeQuery(sql);
					while (rs.next()) {
						String vdo = "playvideo.jsp?video=" + rs.getString(4)
								+ "&name=" + rs.getString(1) + "&uploader="
								+ rs.getString(2) + "&cate=" + rs.getString(3);
						String uploader = rs.getString(2);
						String cate = rs.getString(3);
			%>
			<a href="<%=vdo%>"> <%=rs.getString(1)%>
			</a>
			<h6>
				Category:
				<%=cate%>
				|| Uploaded by:
				<%=uploader%></h6>
			<hr>
			<%
				}
					con.close();
				} catch (Exception e) {
					System.out.println(e);
				}
			%>
		</div>

		<%@include file="footer.jsp"%>

	</div>

</body>
</html>