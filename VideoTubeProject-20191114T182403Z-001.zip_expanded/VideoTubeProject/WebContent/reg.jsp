<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@page import="java.net.URLEncoder"%>
	<%
		String user = request.getParameter("username");

		String pwd = request.getParameter("password");

		String repwd = request.getParameter("repassword");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/video",
							"root", "password");
			Statement st = con.createStatement();
			ResultSet rs;
			int i = st.executeUpdate("insert into user values ('" + user
					+ "','" + pwd + "')");

			System.out.println("Registered");
			String msg = "User successfully registered; login now";
			response.sendRedirect("login.jsp?message="
					+ URLEncoder.encode(msg, "UTF-8"));
		} catch (Exception e) {
			System.out.println(e);
		}
	%>

</body>
</html>