
<%@ include file="connect.jsp" %>

<%@ include file="header.jsp" %>
<br><br><br><br><br>
	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Contact Info -->
				<div class="col-lg-6">
					<div class="section_title"><h2>CUSTOMER LOGIN</h2></div>
					<div class="contact_text">
						<p>This application gives information about first-aid inforamtion to the people means depending upon symptoms we gave,diseases information and as well as which medicine is preferrable to particular diseases.Anyone can easily use this appliaction wuth free of case.This application provides accurate result and also takes less time in case of imergencies.</p>
					</div>
					
				</div>

				<!-- Contact Form -->
				<div class="col-lg-6 form_col">
					<div class="contact_form_container">
						<form action="customerregistrationdata.jsp" id="contact_form" class="contact_form" method="post">
							<div class="row">
							
								
							</div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Full Name" name="fullname" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Mobile Number" name="mobile" pattern="[0-9]{4}[0-9]{3}[0-9]{3}"  required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Address" name="address" required="required"></div>
							<div class="input_container"><input type="email" class="contact_input" placeholder="Enter Email" name="email" required="required"></div>
							<div class="input_container"><input type="password" class="contact_input" placeholder="Enter Password" name="password" required="required"></div>
							</div>
							<br>
							<div class="input_container">
							<select name="hospital" class="form-control">
							<%
								try
								{
									Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select Name from hospital");
									while(rs.next()) 
									{
										out.println("<option>"+rs.getString(1)+"</option>");
										
									}
										
									
								}
								catch(Exception e)
								{
									e.printStackTrace();
								}	
								
								%>
								</select>
							
							</div>
							<br>
							<div class="input_container">
							<select name="canteen" class="form-control">
							<%
								try
								{
									Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select Name from canteine");
									while(rs.next()) 
									{
										out.println("<option>"+rs.getString(1)+"</option>");
										
									}
										
									
								}
								catch(Exception e)
								{
									e.printStackTrace();
								}	
								
								%>
								</select>
							
							</div>
						<br>
							
							<button class="button contact_button">REGISTER</button>
							
						</form>
					</div>
				</div>
			</div>
			<br>
<%@ include file="footer.jsp" %>	
			
