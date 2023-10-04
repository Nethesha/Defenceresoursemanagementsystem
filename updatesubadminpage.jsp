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
	ResultSet rs=st.executeQuery("select * from subadmin where Id="+id);
	int count=0; 
	while(rs.next()) 
	{
		int id1=rs.getInt(1);
		String userid=rs.getString(2);
		String password=rs.getString(3);
		String email=rs.getString(4);
		long mobile=rs.getLong(5);
		String type=rs.getString(6);
		String tname=rs.getString(7);

		
%>



<%@ include file="adminheader.jsp" %>
<br><br><br><br><br>
	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Contact Info -->
				<div class="col-lg-6">
					<div class="section_title"><h2>SUB-ADMIN UPDATE</h2></div>
					<div class="contact_text">
						<p>This application gives information about first-aid inforamtion to the people means depending upon symptoms we gave,diseases information and as well as which medicine is preferrable to particular diseases.Anyone can easily use this appliaction wuth free of case.This application provides accurate result and also takes less time in case of imergencies.</p>
					</div>
					
				</div>

				<!-- Contact Form -->
				<div class="col-lg-6 form_col">
					<div class="contact_form_container">
						<form action="updatesubadmindata.jsp" id="contact_form" class="contact_form" method="post">
							<div class="row">
							
								
							</div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Id" name="id1" value="<%=id1 %>"  readonly required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter User Id" name="userid" value="<%=userid %>" required="required"></div>
							<div class="input_container"><input type="email" class="contact_input" placeholder="Email" name="email" value="<%=email %>" required="required"></div>
							<div class="input_container"><input type="text" class="contact_input" placeholder="Enter Mobile" name="mobile"  value="<%=mobile %>" required="required"></div>
							
							<div class="input_container"><input type="radio"   name="type"  value="hospital" required="required" onclick="spinnershow1();">Hospital
														<input type="radio"  name="type"  value="canteene" required="required" onclick="spinnershow2();">Canteen
							</div>
							
							 
							<div class="input_container"  >
							<select name="name" class="form-control" id="sp2" style="display:none">
							<%
							
								try
								{
									String kk="canteene";
									if(kk.contains(type)){
									 st=con.createStatement();
									 rs=st.executeQuery("select Name from canteine");
									while(rs.next()) 
									{
										out.println("<option>"+rs.getString(1)+"</option>");
										
									}
										
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
							<select name="name" class="form-control" id="sp1" style="display:none">
							<%
								try
								{
									String kk="hospital";
									if(kk.contains(type)){
									 st=con.createStatement();
									 rs=st.executeQuery("select Name from hospital");
									while(rs.next()) 
									{
										out.println("<option>"+rs.getString(1)+"</option>");
										
									}
										
									
								}}
								catch(Exception e)
								{
									e.printStackTrace();
								}	
								
								%>
								</select>
							
							</div>
							
							
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
