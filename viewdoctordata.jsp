
<%@ include file="adminheader.jsp" %>
<br><br><br><br><br>

<div class="container-fluid"> 
<br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW DOCTORS DETAILS</div>
<div class="table-responsive">
<%

try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from doctor");
	int count=0;
	out.println("<table class='table table-border table-hover' width='50%'>");
	out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"Name"+"</th>"+"<th>"+"Qualification"+"</th>"+"<th>"+"Specialisation"+"</th>"+"<th>"+"Timings"+"<th>"+"Fee"+"</th>"+"<th>"+"Hospital Name"+"</th>"+"<th>"+"Email"+"</th>"+"<th>"+"Mobile"+"</th>"+"<th>"+"Description"+"</th>"+"<th>"+"Update"+"</th>"+"<th>"+"Delete"+"</th>"+"</tr>");
	
	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td>"+"<td>"+rs.getDouble(6)+"</td>"+"<td>"+rs.getString(7)+"</td>"+"<td>"+rs.getString(8)+"</td>"+"<td>"+ rs.getLong(9)+"</td>"+"<td>"+rs.getString(10)+"</td>");
		out.println("<td>"+"<a class='btn  btn-danger' href='updatedoctorpage.jsp?Id="+rs.getInt(1)+"'>Update</a>"+"</td>");
		out.println("<td>"+"<a class='btn  btn-danger' '<a onclick='return validate();' href='deletedoctordata.jsp?Id="+rs.getInt(1)+"'>Delete</a>"+"</td>");
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

