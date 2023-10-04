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
String name=request.getParameter("canteine");
String location=request.getParameter("location");
String address=request.getParameter("address");
long contact=Long.parseLong(request.getParameter("contact"));
String services=request.getParameter("services");
String timings=request.getParameter("timings");

try
{
	
PreparedStatement ps=con.prepareStatement("insert into canteine(Name, Location, Address, Contact, Service,timings) values(?,?,?,?,?,?)");

	ps.setString(1, name);
	ps.setString(2, location);
	ps.setString(3, address);
	ps.setLong(4, contact);
	ps.setString(5, services);	
	ps.setString(6, timings);	

	
int n= ps.executeUpdate();
if(n==1)
{
	out.println("records inserted");
%>
<jsp:forward page="adminhomepage.jsp"/>
<%
}
else
	out.println("records not inserted");
%>
<jsp:include page="addcanteinepage.jsp"/>
<%
con.close();
}
catch(Exception e)
{
	e.printStackTrace();
	
}
%>
</body>
</html>