
<%@ include file="subadminheader.jsp" %>
<br><br><br><br><br>

<div class="container-fluid"> 
<br><br>

<%@ include file="connect.jsp" %>
<div class="container">
<div class="h3 text-center">VIEW CANTEINE DETAILS</div>
<div class="table-responsive">
<%
String rname=session.getAttribute("rname").toString();

try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from canteine where Name='"+rname+"'");
	int count=0;
	out.println("<table class='table table-border table-hover' width='50%'>");
	out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"Name"+"</th>"+"<th>"+"Location"+"</th>"+"<th>"+"Address"+"</th>"+"<th>"+"Mobile"+"<th>"+"Services"+"</th>"+"</th>"+"<th>"+"Update"+"</th>"+"<th>"+"Delete"+"</th>"+"<th>"+"Add Food"+"</th>"+"<th>"+"View Food"+"</th>"+"</tr>");
	
	while(rs.next()) 
	{
		count++;
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+ rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+ rs.getLong(5)+"</td>"+"<td>"+rs.getString(6)+"</td>");
		out.println("<td>"+"<a class='btn  btn-danger' href='updatecanteinepage1.jsp?id="+rs.getInt(1)+"'>Update</a>"+"</td>");
		out.println("<td>"+"<a class='btn  btn-danger' '<a onclick='return validate();' href='deletecanteinedata1.jsp?id="+rs.getInt(1)+"'>Delete</a>"+"</td>");
		out.println("<td>"+"<a class='btn  btn-danger' href='addfooditempage1.jsp?Name="+rs.getString(2)+"'>Add Food</a>"+"</td>");
		out.println("<td>"+"<a class='btn  btn-danger' href='viewfooditemsdata2.jsp?Name="+rs.getString(2)+"'>Viw Food</a>"+"</td>");

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
