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
	PreparedStatement ps=con.prepareStatement("select * from subadmin where Userid=? and Password=?");
	ps.setString(1,userid);
	ps.setString(2, password);
	
	ResultSet n= ps.executeQuery();
	
	if(n.next())
	{
		String rname = n.getString(7);
		session.setAttribute("rname",rname);

		%>
		<jsp:forward page="subadminhomepage.jsp"/>
		<%		
	}
	else
	{
		out.println("you entered wrong Userid or Password");
		%>
		<jsp:include page="subadminloginpage.jsp"/>
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