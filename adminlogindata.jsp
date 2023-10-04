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
String userid=request.getParameter("userid");
String password=request.getParameter("password");

session.setAttribute("userid",userid);
try
{
	PreparedStatement ps=con.prepareStatement("select * from admin where Userid=? and Password=?");
	ps.setString(1,userid);
	ps.setString(2, password);
	
	ResultSet n= ps.executeQuery();
	
	if(n.next())
	{
		%>
		<jsp:forward page="adminhomepage.jsp"/>
		<%		
	}
	else
	{
		out.println("you entered wrong Userid or Password");
		%>
		<jsp:include page="adminloginpage.jsp"/>
		<%
	}
		
}

catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>