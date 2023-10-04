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
String fullname=request.getParameter("fullname");
long mobile=Long.parseLong(request.getParameter("mobile"));
String address=request.getParameter("address");
String email=request.getParameter("email");
String password=request.getParameter("password");
String hospital=request.getParameter("hospital");
String canteen=request.getParameter("canteen");

try
{
	
PreparedStatement ps=con.prepareStatement("insert into customer(Fullname, Mobile, Address, Email, Password,hospital,canteen) values(?,?,?,?,?,?,?)");

	ps.setString(1, fullname);
	ps.setLong(2, mobile);
	ps.setString(3, address);
	ps.setString(4, email);
	ps.setString(5, password);
	ps.setString(6, hospital);
	ps.setString(7, canteen);

	
int n= ps.executeUpdate();
if(n==1)
{
	out.println("records inserted");
%>
<jsp:forward page="customerloginpage.jsp"/>
<%
}
else
	out.println("records not inserted");
%>
<jsp:include page="customerregistrationpage.jsp"/>
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