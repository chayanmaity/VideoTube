<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
	<%@ page import="javax.sql.*" %>
	<%@ page import="java.net.URLEncoder" %>
	<%
		String name=request.getParameter("file_name");
		String category=request.getParameter("category");
		String userid=session.getAttribute("username").toString();
		String path=session.getAttribute("lastfilename").toString();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/video","root","password");
			Statement st=con.createStatement();
			String sql="insert into vdotable values('"+name+"','"+userid+"','"+category+"','"+path+"')";
			System.out.println(sql);
			st.executeUpdate(sql);
			System.out.println("Updated");
			
			String msg="Data succesfully uploaded";
			response.sendRedirect("uploadvideo.jsp?msg="+URLEncoder.encode(msg,"UTF-8"));
		}catch (Exception e) {System.out.println(e);}
	%>

</body>
</html>