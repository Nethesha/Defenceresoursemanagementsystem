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
try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from customer where Id="+id);
	int count=0; 
	while(rs.next()) 
	{
		int id1=rs.getInt(1);
		String fullname=rs.getString(2);
		long mobile=rs.getLong(3);
		String address=rs.getString(4);
		String email1=rs.getString(5);
		
%>

<%@ include file="customerheader.jsp" %>
<br><br><br><br><br>
	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Contact Info -->
				<div class="col-lg-6">
					<div class="section_title"><h2>CUSTOMER UPDATE</h2></div>
					<div class="contact_text">
						<p>This application gives information about first-aid inforamtion to the people means depending upon symptoms we gave,diseases information and as well as which medicine is preferrable to particular diseases.Anyone can easily use this appliaction wuth free of case.This application provides accurate result and also takes less time in case of imergencies.</p>
					</div>
					
				</div>

				<!-- Contact Form -->
				<div class="col-lg-6 form_col">
					<div class="contact_form_container">
						<form action="updatecustomerdata.jsp" id="contact_form" class="contact_form" method="post">
							<div class="row">
							
								
							</div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Id" name="id1" value="<%=id1 %>"  readonly required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Full Name" name="fullname" value="<%=fullname %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Qualification" name="mobile" value="<%= mobile %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Specialisation" name="address" value="<%=address %>" required="required"></div>
							<div class="input_container"><input type="email" class="contact_input" placeholder="Enter Timings" name="email" value="<%=email1 %>" required="required"></div>
							
							
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