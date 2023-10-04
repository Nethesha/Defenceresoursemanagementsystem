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
int id=Integer.parseInt(request.getParameter("Id"));
try {
	
	PreparedStatement ps=con.prepareStatement("delete from doctor where Id=?");
	ps.setInt(1, id);  
	
	
	int n= ps.executeUpdate();   
	if(n==1)
	{
		out.println("records deleted");
	%>
	<jsp:forward page="viewdoctordata.jsp"/>
	<%
	}
	else
		out.println("record not found");
	
}
catch(Exception e) {
	e.printStackTrace();
}  
%>
</body>
</html>