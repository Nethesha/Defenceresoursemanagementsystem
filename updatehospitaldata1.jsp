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
int id=Integer.parseInt(request.getParameter("id1"));
String name=request.getParameter("name");
String location=request.getParameter("location");
String address=request.getParameter("address");
long contact=Long.parseLong(request.getParameter("contact"));
String service=request.getParameter("service");
String website=request.getParameter("website");
String timings=request.getParameter("timings");

try
{
	
PreparedStatement ps=con.prepareStatement("update hospital set Name=?, Location=?, Address=?, Contact=?, Service=?,website=?,timings=? where Id=?");

	ps.setString(1, name);
	ps.setString(2, location);
	ps.setString(3, address);
	ps.setLong(4, contact);
	ps.setString(5, service);
	ps.setString(6, website);
	ps.setString(7, timings);

	ps.setInt(8, id);
		
int n= ps.executeUpdate();
if(n==1)
{
	out.println("records inserted");
%>
<jsp:forward page="viewhospitaldetailsdata1.jsp"/>
<%
}
else
	out.println("records not inserted");
%>
<jsp:include page="updatehospitalpage1.jsp"/>
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