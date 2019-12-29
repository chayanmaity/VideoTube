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
	<%@page import="java.net.URLEncoder" %>
	<%!
	public  boolean validate(String name, String pass) {
		boolean status = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/video", "root", "password");

			PreparedStatement ps = con
					.prepareStatement("select * from user where userid=? and password=?");
			ps.setString(1, name);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			status = rs.next();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	%>
	<%
	String n=request.getParameter("username");  
    String p=request.getParameter("password");  
    if(validate(n, p)){  
        
        
        session.setAttribute("username", n);
        response.sendRedirect("uploadvideo.jsp");
    }  
    else{  
        String msg="Username or Password does not match";
        response.sendRedirect("login.jsp?message="+URLEncoder.encode(msg,"UTF-8"));  
        
    }  
         
	%>
</body>
</html>