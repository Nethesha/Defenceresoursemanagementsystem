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
int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String qualification=request.getParameter("qualification");
String specialisation=request.getParameter("specialisation");
String timings=request.getParameter("timings");
double fee=Double.parseDouble(request.getParameter("fee"));
String hospitalname=request.getParameter("hospitalname");
String email=request.getParameter("email");
long mobile=Long.parseLong(request.getParameter("mobile"));
String description=request.getParameter("desc");


try
{
	
PreparedStatement ps=con.prepareStatement("update doctor set Name=?, Qualification=?, Specialisation=?, Timings=?, Fee=?, Hospitalname=?, Email=?, Mobile=?, Description=? where Id=?");

ps.setString(1, name);
ps.setString(2, qualification);
ps.setString(3, specialisation);
ps.setString(4, timings);
ps.setDouble(5, fee);
ps.setString(6, hospitalname);
ps.setString(7, email);
ps.setLong(8, mobile);
ps.setString(9, description);
ps.setInt(10, id);
		
int n= ps.executeUpdate();
if(n==1)
{
	out.println("records inserted");
%>
<jsp:forward page="viewdoctordata1.jsp"/>
<%
}
else
	out.println("records not inserted");
%>
<jsp:include page="updatedoctorpage1.jsp"/>
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