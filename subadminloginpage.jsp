

<%@ include file="header.jsp" %>
<br><br><br><br><br>
	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Contact Info -->
				<div class="col-lg-6">
					<div class="section_title"><h2>SUB-ADMIN LOGIN</h2></div>
					<div class="contact_text">
						<p>This application gives information about first-aid inforamtion to the people means depending upon symptoms we gave,diseases information and as well as which medicine is preferrable to particular diseases.Anyone can easily use this appliaction wuth free of case.This application provides accurate result and also takes less time in case of imergencies.</p>
					</div>
					
				</div>

				<!-- Contact Form -->
				<br><br><br><br><br>
				<div class="col-lg-6 form_col">
					<div class="contact_form_container">
						<form action="subadminlogindata.jsp" id="contact_form" class="contact_form" method="post">
							<div class="row">
							
								
							</div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="User Id" name="userid" required="required"></div>
							<div class="input_container"><input type="password" class="contact_input" placeholder="Password" name="password" required="required"></div>
							
							<button class="button contact_button">LOGIN</button>
							
						</form>
					</div>
				</div>
			</div>
			<br>
<%@ include file="footer.jsp" %>	
			