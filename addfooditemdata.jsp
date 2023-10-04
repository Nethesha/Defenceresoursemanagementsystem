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
String name=request.getParameter("name");
String itemname=request.getParameter("itemname");
String desc=request.getParameter("desc");
double cost=Double.parseDouble(request.getParameter("cost"));

try
{
	
PreparedStatement ps=con.prepareStatement("insert into fooditems(Name, Itemname, Description, Cost) values(?,?,?,?)");

	ps.setString(1, name);
	ps.setString(2, itemname);
	ps.setString(3, desc);
	ps.setDouble(4, cost);
	
	
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
<jsp:include page="addfooditempage.jsp"/>
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