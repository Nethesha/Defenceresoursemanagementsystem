
<%@ include file="customerheader.jsp" %>
<br><br><br><br><br>

<div class="container-fluid"> 
<br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW FOOD DETAILS</div>
<div class="table-responsive">
<h2>Sub Admin details</h2>
<%
String name=request.getParameter("name");
 
try
{
	Statement st1=con.createStatement();
	ResultSet rs1=st1.executeQuery("select * from subadmin where rname='"+name+"'");
	int count1=0;
	out.println("<table class='table table-border table-hover' width='50%'>");
	out.println("<tr>"+"<th>"+"name"+"</th>"+"<th>"+"email"+"</th>"+"<th>"+"mobile"+"</th>"+"</tr>");
	
	while(rs1.next()) 
	{
		count1++;
		out.println("<tr>");
		out.println("<td>"+rs1.getString(2)+"</td>"+"<td>"+rs1.getString(4)+"</td>"+"<td>"+rs1.getString(5)+"</td>");
	
		out.println("</tr>");
	}
	out.println("</table>");
	
	
	if(count1==0) {
		System.out.println("no records found");
	}
	
	
	%>
	
	<h2>Food details</h2>
	<% 
	
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from fooditems where Name='"+name+"'");
	int count=0;
	out.println("<table class='table table-border table-hover' width='50%'>");
	out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"Item Name"+"</th>"+"<th>"+"Description"+"</th>"+"<th>"+"Cost"+"</th>"+"</tr>");
	
	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+ rs.getLong(5)+"</td>");
	
		out.println("</tr>");
	}
	out.println("</table>");
	
	
	if(count==0) {
		System.out.println("no records found");
	}
	
	st.close();
	st1.close();
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

