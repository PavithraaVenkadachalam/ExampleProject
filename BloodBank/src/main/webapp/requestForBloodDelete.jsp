<%@page import="ProjectDB.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
	Connection conn=ConnectionProvider.getConn();
	Statement st=conn.createStatement();
	st.executeUpdate("delete from bloodrequest where mobilenumber='"+mobilenumber+"'");
	response.sendRedirect("requestForBlood.jsp");
	
}
catch(Exception e)
{
	response.sendRedirect("requestForBlood.jsp");
}
%>