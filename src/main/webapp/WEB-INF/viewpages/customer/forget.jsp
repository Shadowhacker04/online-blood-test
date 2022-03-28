<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><h2><span>USER ID</span></h2></li>
						<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>PASSWORD</span></li>
						
					</ul>

					<div class="resp-tabs-container">
						
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<!-- Form -->
							<form action="getuid" method="post">
								<input type="text" Name="mobile" placeholder="Phone Number" required="required">
								<input type="text" Name="qone" placeholder="Name of your first school?" required="required">
								<input type="text" Name="qtwo" placeholder="Your childhood nickname?" required="required">
								<input type="text" Name="qthree" placeholder="In what city were you born?" required="required">
								<input type="submit" value="GET ID">
								<input type="button" style="color:white; background-color:#FF5F1F; padding:10px 27px;" value="Return" onclick="window.location.href='/finalproject'">
								
								<br><br>
								<label style="color:white"><b>${msg}</b></label>
							</form>
							<!-- //Form -->
						</div>

						<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-2">
							<div class="register">
								<form action="getpswd" method="post">
									<input type="text" Name="uid" placeholder="User ID" required="required">
									<input type="text" Name="phone" placeholder="Phone Number" required="required">
									<input type="text" Name="email" placeholder="Email ID" required="required">
									<input type="text" Name="qone" placeholder="Name of your first school?" required="required">
									<input type="text" Name="qtwo" class="lessgap" placeholder="Your childhood nickname?" required="required">
									<input type="text" Name="qthree" placeholder="In what city were you born?" required="required">
									<div class="send-button">
									
										<input type="submit" value="Change password">
										<b><input type="button" style="color:white; background-color:#FF5F1F; padding:10px 27px;" value="Return" onclick="window.location.href='/finalproject'"></b>
									</div>
								</form>
								
							</div>
						</div>
						
						</div></div>
</div></div></div>

</body>

</html>