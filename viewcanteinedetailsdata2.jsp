
<%@ include file="customerheader.jsp" %>
<br><br><br><br><br>

<div class="container-fluid"> 
<br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW CANTEINE DETAILS</div>
<div class="table-responsive">
<%
String canteen=session.getAttribute("canteen").toString();

try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from canteine where Name='"+canteen+"'");
	int count=0;
	out.println("<table class='table table-border table-hover' width='50%'>");
	out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"Name"+"</th>"+"<th>"+"Location"+"</th>"+"<th>"+"Address"+"</th>"+"<th>"+"Mobile"+"<th>"+"Services"+"</th>"+"<th>"+"view details"+"</th>"+"</tr>");
	
	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+ rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+ rs.getLong(5)+"</td>"+"<td>"+rs.getString(6)+"</td>");
		out.println("<td>"+"<a class='btn  btn-danger' href='viewfooditemsdata1.jsp?name="+rs.getString(2)+"'>View details</a>"+"</td>");
	
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
