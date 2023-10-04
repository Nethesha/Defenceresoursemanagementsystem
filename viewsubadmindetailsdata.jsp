
<%@ include file="adminheader.jsp" %>
<br><br><br><br><br>

<div class="container-fluid"> 
<br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW SUB-ADMIN DETAILS</div>
<div class="table-responsive">
<%
try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from subadmin");
	int count=0;
	out.println("<table class='table table-border table-hover' width='50%'>");
	out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"Userid"+"</th>"+"<th>"+"Password"+"</th>"+"<th>"+"Email"+"</th>"+"<th>"+"Mobile"+"</th>"+"</th>"+"<th>"+"Type"+"</th>"+"<th>"+"Name"+"</th>"+"<th>"+"Update"+"</th>"+"<th>"+"Delete"+"</th>"+"</tr>");

	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+ rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+ rs.getLong(5)+"</td>"+"<td>"+rs.getString(6)+"</td>"+"<td>"+ rs.getString(7)+"</td>");
		out.println("<td>"+"<a class='btn  btn-danger' href='updatesubadminpage.jsp?id="+rs.getInt(1)+"'>Update</a>"+"</td>");
		out.println("<td>"+"<a class='btn  btn-danger' '<a onclick='return validate();' href='deletesubadmindata.jsp?id="+rs.getInt(1)+"'>Delete</a>"+"</td>");
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

<script>
function validate(){
	if(confirm("do you want to delete")){
		return true;
	}
	else{
		return false;
	}
}
</script>
