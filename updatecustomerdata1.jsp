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
String fullname=request.getParameter("fullname");
long mobile=Long.parseLong(request.getParameter("mobile"));
String address=request.getParameter("address");
String email=request.getParameter("email");
//String email1=session.getAttribute("email").toString();
try
{
	
PreparedStatement ps=con.prepareStatement("update customer set Fullname=?, Mobile=?, Address=?, Email=? where Id=?");

	ps.setString(1, fullname);
	ps.setLong(2, mobile);
	ps.setString(3, address);
	ps.setString(4, email);
	ps.setInt(5, id);
		
int n= ps.executeUpdate();
if(n==1)
{
	out.println("records inserted");
%>
<jsp:forward page="viewcustomerdetailsdata2.jsp"/>
<%
}
else
	out.println("records not inserted");
%>
<jsp:include page="updatecustomerpage1.jsp"/>
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