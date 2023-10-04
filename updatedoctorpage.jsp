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
	ResultSet rs=st.executeQuery("select * from doctor where Id="+id);
	int count=0; 
	while(rs.next()) 
	{
		int id1=rs.getInt(1);
		String name=rs.getString(2);
		String qualification=rs.getString(3);
		String specialisation=rs.getString(4);
		String timings=rs.getString(5);
		double fee=rs.getDouble(6);
		String hospitalname=rs.getString(7);
		String email=rs.getString(8);
		long mobile=rs.getLong(9);
		String description=rs.getString(10);
		
%>

<%@ include file="adminheader.jsp" %>
<br><br><br><br><br>
	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Contact Info -->
				<div class="col-lg-6">
					<div class="section_title"><h2>DOCTOR UPDATE</h2></div>
					<div class="contact_text">
						<p>This application gives information about first-aid inforamtion to the people means depending upon symptoms we gave,diseases information and as well as which medicine is preferrable to particular diseases.Anyone can easily use this appliaction wuth free of case.This application provides accurate result and also takes less time in case of imergencies.</p>
					</div>
					
				</div>

				<!-- Contact Form -->
				<div class="col-lg-6 form_col">
					<div class="contact_form_container">
						<form action="updatedoctordata.jsp" id="contact_form" class="contact_form" method="post">
							<div class="row">
							
								
							</div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Id" name="id" value="<%=id1 %>"  readonly required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Doctor Name" name="name" value="<%=name %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Qualification" name="qualification" value="<%= qualification %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Specialisation" name="specialisation" value="<%=specialisation %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Timings" name="timings" value="<%=timings %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Feez" name="fee" value="<%=fee %>" required="required"></div>
							
							<div class="input_container">
							<select name="hospitalname" class="form-control">
							<%
								try
								{
									 st=con.createStatement();
									 rs=st.executeQuery("select Name from hospital");
									while(rs.next()) 
									{
										%>
										   <option  <%= (rs.getString(1).equals(hospitalname)?"selected='selected'":"") %>><%=rs.getString(1) %></option>
										
										<%
										
									}
										
									
								}
								catch(Exception e)
								{
									e.printStackTrace();
								}	
								
								%>
								</select>
							
							</div>		
							<div class="input_container"><input type="email" class="contact_input" placeholder="Enter Email" name="email"  value="<%=email %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Mobile Number" name="mobile"  value="<%=mobile %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Description" name="desc"  value="<%=description %>" required="required"></div>
							
							
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