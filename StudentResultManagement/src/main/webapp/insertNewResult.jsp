<%@ page import="ProjectDB.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<% 
String rollNo=request.getParameter("rollNo");
String enggPhy=request.getParameter("enggPhy");
String enggChem=request.getParameter("enggChem");
String enggMath=request.getParameter("enggMath");
String enggElectri=request.getParameter("enggElectri");
String enggElectro=request.getParameter("enggElectro");
String enggChemLab=request.getParameter("enggChemLab");
String enggPhyLab=request.getParameter("enggPhyLab");
try{
	Connection conn=ConnectionProvider.getConn();
	Statement st=conn.createStatement();
	st.executeUpdate("insert into insert_result values('"+rollNo+"','"+enggPhy+"','"+enggChem+"','"+enggMath+"','"+enggElectri+"','"+enggElectro+"','"+enggChemLab+"','"+enggPhyLab+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>