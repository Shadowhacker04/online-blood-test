<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recover</title>
<!-- For-Mobile-Apps -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Multi Login & Signup Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- //For-Mobile-Apps -->

<!-- Style.CSS --> <link rel="stylesheet" href="css/mine.css" type="text/css" media="all" />

<!-- Web-Fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
<!-- //Web-Fonts -->

<!-- Horizontal-Tabs-JavaScript -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function () {
		$('#horizontalTab').easyResponsiveTabs({
			type: 'default', //Types: default, vertical, accordion           
			width: 'auto', //auto or any width like 600px
			fit: true, // 100% fit in a container
		});
	});
</script>
<!-- Horizontal-Tabs-JavaScript -->

</head>
<!-- Head -->



<!-- Body -->
<body>

	<div class="container">

		<div class="tabs">

			<div class="sap_tabs">

				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
									<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>PASSWORD</span></li>
						
					</ul>

					<div class="resp-tabs-container">
						


						<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-2">
							<div class="register">
								<form action="recover" method="post">
									
									<input type="password" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{6,}$" title="Must contain at least one number and one uppercase lowercase letter and a special character, and at least 6 or more characters" name="pass" placeholder="NEW PASSWORD" id="password" required="required">
									<input type="password" Name="conpass" placeholder="CONFIRM PASSWORD" id="conpassword" required="required">

									<div class="send-button">
										<input type="submit" value="Change password">
										<input type="button" style="color:white; background-color:#FF5F1F; padding:10px 27px;" value="Return" onclick="window.location.href='/finalproject'">
								
										<br><br>
								<label style="color:white"><b>${error}</b></label>
									</div>
								</form>
							</div>
						</div></div></div></div></div></div>
									<%--- 	<c:if test="${error == 'Info Updated!..'}"> 
										<c:redirect url = "/"/>
										</c:if>--%>
</body>
<script>

var password = document.getElementById("password")
  , confirm_password = document.getElementById("conpassword");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}
password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;


</script>



</html>