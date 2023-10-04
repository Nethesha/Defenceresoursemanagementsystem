
<%@ include file="connect.jsp" %>
<%@ include file="adminheader.jsp" %>
<br><br><br><br><br>





	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Contact Info -->
				<div class="col-lg-6">
					<div class="section_title"><h2>ADD DOCTOR</h2></div>
					<div class="contact_text">
						<p>This application gives information about first-aid inforamtion to the people means depending upon symptoms we gave,diseases information and as well as which medicine is preferrable to particular diseases.Anyone can easily use this appliaction wuth free of case.This application provides accurate result and also takes less time in case of imergencies.</p>
					</div>
					
				</div>

				<!-- Contact Form -->
				<div class="col-lg-6 form_col">
					<div class="contact_form_container">
						<form action="adddoctordata.jsp" id="contact_form" class="contact_form" method="post">
							<div class="row">
							
								
							</div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Doctor Name" name="name" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Qualification" name="qualification" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Specialisation" name="specialisation" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Doctor Available Timings" name="timings" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Doctor Consultance Fee" name="fee" required="required"></div>
							
							<div class="input_container">
							<select name="hospitalname" class="form-control">
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
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Email" name="email" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Doctor Mobile" name="mobile" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Doctor Description" name="desc" required="required"></div>
							<button class="button contact_button">ADD</button>
							
						</form>
					</div>
				</div>
			</div>
			<br>
<%@ include file="footer.jsp" %>	
			