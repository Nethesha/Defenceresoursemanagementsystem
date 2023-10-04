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
String email=request.getParameter("email");
String password=request.getParameter("password");






try
{
	PreparedStatement ps=con.prepareStatement("select * from customer where Email=? and Password=?");
	ps.setString(1,email);
	ps.setString(2, password);
	
	ResultSet n= ps.executeQuery();
	
	if(n.next())
	{
		String hospital = n.getString(7);
		String canteen = n.getString(8);
		session.setAttribute("email",email);
		session.setAttribute("hospital",hospital);
		session.setAttribute("canteen",canteen);
		
		
		%>
		<jsp:forward page="customerhomepage.jsp"/>
		<%		
	}
	else
	{
		out.println("you entered wrong Userid or Password");
		%>
		<jsp:include page="customerloginpage.jsp"/>
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