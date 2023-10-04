

<%@ include file="subadminheader.jsp" %>
<br><br><br><br><br>
	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Contact Info -->
				<div class="col-lg-6">
					<div class="section_title"><h2>ADD HOSPITAL</h2></div>
					<div class="contact_text">
						<p>This application gives information about first-aid inforamtion to the people means depending upon symptoms we gave,diseases information and as well as which medicine is preferrable to particular diseases.Anyone can easily use this appliaction wuth free of case.This application provides accurate result and also takes less time in case of imergencies.</p>
					</div>
					
				</div>

				<!-- Contact Form -->
				<div class="col-lg-6 form_col">
					<div class="contact_form_container">
						<form action="addhospitaldata1.jsp" id="contact_form" class="contact_form" method="post">
							<div class="row">
							
								
							</div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Hospital Name" name="hospital" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Location" name="location" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Address" name="address" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Contact Number" name="contact" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Services" name="services" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Website" name="website" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Timings" name="timings" required="required"></div>
							
							<button class="button contact_button">ADD</button>
							
						</form>
					</div>
				</div>
			</div>
			<br>
<%@ include file="footer.jsp" %>	
			