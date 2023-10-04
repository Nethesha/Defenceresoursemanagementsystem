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
int id=Integer.parseInt(request.getParameter("id"));
try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from hospital where Id="+id);
	int count=0; 
	while(rs.next()) 
	{
		int id1=rs.getInt(1);
		String name=rs.getString(2);
		String location=rs.getString(3);
		String address=rs.getString(4);
		long contact=rs.getLong(5);
		String service=rs.getString(6);
		String website=rs.getString(7);
		String timings=rs.getString(8);

		
%>


<%@ include file="adminheader.jsp" %>
<br><br><br><br><br>
	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Contact Info -->
				<div class="col-lg-6">
					<div class="section_title"><h2>HOSPITAL UPDATE</h2></div>
					<div class="contact_text">
						<p>This application gives information about first-aid inforamtion to the people means depending upon symptoms we gave,diseases information and as well as which medicine is preferrable to particular diseases.Anyone can easily use this appliaction wuth free of case.This application provides accurate result and also takes less time in case of imergencies.</p>
					</div>
					
				</div>

				<!-- Contact Form -->
				<div class="col-lg-6 form_col">
					<div class="contact_form_container">
						<form action="updatehospitaldata.jsp" id="contact_form" class="contact_form" method="post">
							<div class="row">
							
								
							</div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Id" name="id1" value="<%=id1 %>"  readonly required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Hospital Name" name="name" value="<%=name %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Location" name="location" value="<%= location %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Address" name="address" value="<%=address %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Mobile" name="contact"  value="<%=contact %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Services" name="service"  value="<%=service %>"  required="required"></div>					
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter website" name="website"  value="<%=website %>"  required="required"></div>					
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter timings" name="timings"  value="<%=timings %>"  required="required"></div>					
							
			
							<button class="button contact_button">UPDATE</button>
							
						</form>
					</div>
				</div>
			</div>
			<br>
<%@ include file="footer.jsp" %>	
			


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