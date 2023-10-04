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
String userid=request.getParameter("userid");
String password=request.getParameter("password");
String email=request.getParameter("email");
long contact=Long.parseLong(request.getParameter("mobile"));

try
{
	
PreparedStatement ps=con.prepareStatement("update subadmin set Userid=?, Password=?, Email=?, Mobile=? where Id=?");

	ps.setString(1, userid);
	ps.setString(2, password);
	ps.setString(3, email);
	ps.setLong(4, contact);
	ps.setInt(5, id);
	
		
int n= ps.executeUpdate();
if(n==1)
{
	out.println("records inserted");
%>
<jsp:forward page="viewsubadmindetailsdata1.jsp"/>
<%
}
else
	out.println("records not inserted");
%>
<jsp:include page="updatesubadminpage1.jsp"/>
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