
<%@ include file="adminheader.jsp" %>
<br><br><br><br><br>

<div class="container-fluid"> 
<br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW DETAILS</div>
<div class="table-responsive">
<%
String userid=session.getAttribute("userid").toString();
try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from admin where Userid='"+userid+"'");
	int count=0;
	out.println("<table class='table table-border table-hover' width='50%'>");
		
	while(rs.next()) 
	{
		count++;
		out.println("<tr><th>ID</th><td>"+rs.getInt(1)+"</td></tr>");
		out.println("<tr><th>Name</th><td>"+rs.getString(2)+"</td></tr>");
		out.println("<tr><th>Email</th><td>"+rs.getString(4)+"</td></tr>");
		out.println("<tr><th>Mobile</th><td>"+rs.getLong(5)+"</td></tr>");

		out.println("<tr><td colspan='2'>"+"<a class='btn  btn-danger' href='updateadminpage.jsp?id="+rs.getInt(1)+"'>Update</a>"+"</td>");
		out.println("</tr>");
	}
	out.println("</table>");
	
	
	if(count==0) {
		System.out.println("no records found");
	}
	
	st.close();
	st.close();
	con.close();
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>


</div>
</div>
</div>
<%@ include file="footer.jsp" %>
