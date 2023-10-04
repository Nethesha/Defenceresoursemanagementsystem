<%@ include file="customerheader.jsp" %>
<%@ include file="connect.jsp" %>


<%
int id=Integer.parseInt(request.getParameter("id"));
try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from customer where Id="+id);
	int count=0; 
	while(rs.next()) 
	{
		int id1=rs.getInt(1);
		String fullname=rs.getString(2);
		Long mobile=rs.getLong(3);
		String address=rs.getString(4);
		String email=rs.getString(5);
		String hospital=rs.getString(7);
		String canteen=rs.getString(8);

		
		
%>



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
						<form action="customerupdate1.jsp" id="contact_form" class="contact_form" method="post">
							
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Id" name="id1" value="<%=id1 %>"  readonly required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Full name" name="fullname" value="<%=fullname %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Mobile" name="mobile" value="<%=mobile %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter address" name="address"  value="<%=address %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Email" name="email"  value="<%=email %>" required="required" readonly></div>
							
							</div>
							<br>
							<div class="input_container">
							<select name="hospital" class="form-control">
							<%
								 st=con.createStatement();
								rs=st.executeQuery("select name from hospital");
									while(rs.next()) 
									{
										%>
										   <option  <%= (rs.getString(1).equals(hospital)?"selected='selected'":"") %>><%=rs.getString(1) %></option>
										
										<%
										
									}
										
									
								
								
								%>
								</select>
							
							</div>		
							<br>
							<div class="input_container">
							<select name="canteen" class="form-control">
							<%
								 st=con.createStatement();
								rs=st.executeQuery("select Name from canteine");
									while(rs.next()) 
									{
										%>
										   <option  <%= (rs.getString(1).equals(canteen)?"selected='selected'":"") %>><%=rs.getString(1) %></option>
										
										<%
										
									}
										
									
								
								
								%>
								</select>
							
							</div>		
							
							<br><br>
							
							<div class="input_container">
							
							<button class="button contact_button">UPDATE</button>
							</div>
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