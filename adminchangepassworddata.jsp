<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="connect.jsp" %>
<%
String new1=request.getParameter("new");
String old=request.getParameter("old");

try
{

	PreparedStatement ps=con.prepareStatement("update admin set Password=? where Password=?");
	ps.setString(1, new1);
	ps.setString(2, old);
	int n= ps.executeUpdate();
	
	if(n==1)
	{
		
	%>
	<jsp:forward page="adminloginpage.jsp"/>
	<%
	}
	else
	{
		out.println("enter correct user id or passwrod");
		%>
		<jsp:include page="adminchangepasswordpage.jsp"/>
		<%
	}
		
	con.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>