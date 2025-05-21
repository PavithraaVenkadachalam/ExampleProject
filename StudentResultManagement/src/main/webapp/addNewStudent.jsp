<%@ page import="ProjectDB.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<% 
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String rollNo=request.getParameter("rollNo");
String name=request.getParameter("name");
String fatherName=request.getParameter("fatherName");
String gender=request.getParameter("gender");

try{
	
	Connection conn=ConnectionProvider.getConn();
	Statement st=conn.createStatement();
	st.executeUpdate("insert into add_student values('"+course+"','"+branch+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e)
{
	e.printStackTrace();
}



%>