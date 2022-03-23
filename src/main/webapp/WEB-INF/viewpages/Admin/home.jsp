<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<style>
	.card {
  		box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  		transition: 0.3s;
  		width: 25%;
  		margin-left: 37%;
	}

	.card:hover {
  		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
	}

	.container {
  		padding: 2px 16px;
	}
	.dropbtn {
		background-color: #FF5833;
		border-radius: 10px;
		padding:5px;
  		color: white;
  		font-size: 16px;
  		cursor: pointer;
	}

	.dropdown {
  		position: relative;
  		display: inline-block;
	}

	.dropdown-content {
  		display: none;
  		position: absolute;
  		background-color: #f9f9f9;
  		min-width: 160px;
	   	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  		z-index: 1;
	}

	.dropdown-content a {
  		color: white;
  		padding: 12px 16px;
  		text-decoration: none;
  		display: block;
	}

	.dropdown-content a:hover {
		background-color: background-color: #990000;
	}

	.dropdown:hover .dropdown-content {
  		display: block;
	}

	.dropdown:hover .dropbtn {
  		background-color: #990000;
	}
</style>
</head>
<body>
<div class="nav">
	<div class="left">
		<span>Online Blood Test Booking System</span>
	</div>
	<div class="right">
		<button class="dropbtn"><a href="adminhome" class="link-light" style="text-decoration:none">Admin Home</a> </button>
		<div class="dropdown">
  			<button class="dropbtn">Add</button>
  				<div class="dropdown-content">
    				<a href="addtest" class="link-light" style="text-decoration:none">Add Test</a>
    				<a href="addtecnician" class="link-light" style="text-decoration:none">Add Technician</a>
  				</div>
		</div>
		<div class="dropdown">
  			<button class="dropbtn">View</button>
  				<div class="dropdown-content">
    				<a href="addtechnician" class="link-light" style="text-decoration:none">View Test</a>
    				<a href="viewtechnician" class="link-light" style="text-decoration:none">View Technician</a>
  				</div>
		</div>
		<button class="dropbtn"><a href="generatereport" class="link-light" style="text-decoration:none">Generate Report</a></button> 
		<button class="dropbtn"><a href="login" class="link-light" style="text-decoration:none">Logout</a></button> 
	</div>
</div>
<br><br>
<h1 style="text-align:center; color:red">Welcome Admin</h1>
<br><br>
<div class="card">
  <img src="Images/img_avatar2.png" alt="Avatar" style="width:100%">
  <div class="container">
    <h4 style="text-align:center"><b>ADMIN</b></h4> 
  </div>
</div>
</body>
</html>