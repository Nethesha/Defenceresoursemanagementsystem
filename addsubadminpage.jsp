
<%@ include file="connect.jsp" %>

<%@ include file="adminheader.jsp" %>
<br><br><br><br><br>
	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Contact Info -->
				<div class="col-lg-6">
					<div class="section_title"><h2>ADD SUB-ADMIN</h2></div>
					<div class="contact_text">
						<p>This application gives information about first-aid inforamtion to the people means depending upon symptoms we gave,diseases information and as well as which medicine is preferrable to particular diseases.Anyone can easily use this appliaction wuth free of case.This application provides accurate result and also takes less time in case of imergencies.</p>
					</div>
					
				</div>

				<!-- Contact Form -->
				<div class="col-lg-6 form_col">
					<div class="contact_form_container">
						<form action="addsubadmindata.jsp" id="contact_form" class="contact_form" method="post">
							<div class="row">
							
								
							</div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter User Id" name="userid" required="required"></div>
							<div class="input_container"><input type="password" class="contact_input" placeholder="Enter Password" name="password" required="required"></div>
							<div class="input_container"><input type="email" class="contact_input" placeholder="Enter Email Id" name="email" required="required"></div>
							<div class="input_container"><input type="number" class="contact_input" placeholder="Enter mobile" name="mobile" required="required"></div>
							
							<div class="input_container"><input type="radio"   name="type"  value="hospital" required="required" onclick="spinnershow1();">Hospital
														<input type="radio"  name="type"  value="canteene" required="required" onclick="spinnershow2();">Canteen
							</div>
							
							<div class="input_container">
							<select name="name" class="form-control" id="sp1"   style="display:none">
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
							
							<div class="input_container">
							<select name="name2" class="form-control" id="sp2" style="display:none">
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
							
							
							
							<button class="button contact_button">ADD</button>
							
						</form>
					</div>
				</div>
			</div>
			<br>
<%@ include file="footer.jsp" %>	

<script>
function spinnershow1(){
	var sp1 = document.getElementById("sp1");
	var sp2 = document.getElementById("sp2");
	sp1.setAttribute("style","display:block");
	sp2.setAttribute("style","display:none");

	
}

function spinnershow2(){
	var sp1 = document.getElementById("sp1");
	var sp2 = document.getElementById("sp2");
	sp2.setAttribute("style","display:block");
	sp1.setAttribute("style","display:none");
}

</script>
		