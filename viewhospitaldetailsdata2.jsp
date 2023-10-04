   
<%@ include file="customerheader.jsp" %>
<br><br><br><br><br>

<div class="container-fluid"> 
<br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW HOSPITAL DETAILS</div>
<div class="table-responsive">

<%
String hospital=session.getAttribute("hospital").toString();

try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from hospital where Name='"+hospital+"'");
	int count=0;
	out.println("<table class='table table-border table-hover' width='50%'>");
	out.println("<tr><th>Id</th><th>Name</th><th>Location</th><th>Address</th><th>Mobile</th><th>Services</th><th>Website</th><th>Timings</th><th>View details</th></tr>");
		
	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+ rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+ rs.getLong(5)+"</td>"+"<td>"+rs.getString(6)+"</td>"+"<td>"+rs.getString(7)+"</td>"+"<td>"+rs.getString(8)+"</td>");
		out.println("<td>"+"<a class='btn  btn-danger' href='viewdoctordata2.jsp?name="+rs.getString(2)+"'>Viewdetails</a>"+"</td>");
	
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
