<%@ include file="customerheader.jsp" %>
<%@ include file="connect.jsp" %>

<%
int id=Integer.parseInt(request.getParameter("id1"));
String fullname=request.getParameter("fullname");
long mobile=Long.parseLong(request.getParameter("mobile"));
String address=request.getParameter("address");
String email=request.getParameter("email");
String hospital=request.getParameter("hospital");
String canteen=request.getParameter("canteen");


try
{
	
PreparedStatement ps=con.prepareStatement("update customer set Fullname=?,Mobile=?, Address=?,hospital=?,canteen=? where email=?");

	ps.setString(1,fullname);
	ps.setLong(2,mobile);
	ps.setString(3,address);
	ps.setString(4,hospital);
	ps.setString(5,canteen);

	ps.setString(6,email);

	
		
int n= ps.executeUpdate();
if(n==1)
{
	out.println("records inserted");
%>
<jsp:forward page="viewcustomerdetailsdata.jsp"/>
<%
}
else
	out.println("records not inserted");
%>
<jsp:include page="viewcustomerdetailsdata.jsp"/>
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