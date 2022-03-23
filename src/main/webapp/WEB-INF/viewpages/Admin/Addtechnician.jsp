<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
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
<link href="CSS/Style.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
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
<br><br><br><br>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8" style="background-color:#f8f9fa;">
			<div class="m-3">
				<form name="form1" method="post" action="addtechnicianprocess">
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4" style="font-weight:bold; text-align:center">
						Technician Registration
					</div>
					<div class="col-md-4"></div>
				</div>
				<div class="row">
					<div class="col-md-4">
						    <label class="form-label">First Name</label>
							<input style="background-color:#DAF7A6" type="text" class="form-control" id="txtfirstname" name="txtlastname" required>
					</div>
					<div class="col-md-4">
						    <label class="form-label">Last Name</label>
							<input style="background-color:#DAF7A6" type="text" class="form-control" id="txtlastname" name="txtlastname" required>
					</div>
					<div class="col-md-4">
						    <label class="form-label">Email</label>
							<input style="background-color:#DAF7A6" type="text" class="form-control" id="txtemail" name="txtemail" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						    <label class="form-label">Mobile</label>
							<input style="background-color:#DAF7A6" type="text" class="form-control" id="txtphnno" name="txtphnno" required>
					</div>
					<div class="col-md-4">
						    <label class="form-label">Gender</label>
							<select style="background-color:#DAF7A6" class="form-select form-select-mt-3" name="gender">
							<option selected>Select...</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
							</select>
					</div>
					<div class="col-md-4">
						    <label class="form-label">Test timing</label>
							<select style="background-color:#DAF7A6" class="form-select form-select-mt-3" name="txttime">
							<option selected>Select...</option>
							<option value="Male">10:00-1:00</option>
							<option value="Female">2:00-5:00</option>
							<option value="Female">5:00-8:00</option>
							</select>
					</div>
					<div class="col-md-4">
						<label class="form-label">Password</label>
						<input style="background-color:#DAF7A6" type="password" class="form-control" id="txtpassword" name="password" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4" style="padding-top:10px; margin-left:70px">
						<input type="submit" class="btn btn-success" value="Submit"/>&nbsp;&nbsp;&nbsp;
						<input type="reset" class="btn btn-danger" value="Reset"/>
					</div>
					<div class="col-md-4"></div>
				</div>
				</form>
				<div style="color:red;text-style:italic;font-size:25px;text-align:center">${msg }</div>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>
</body>
</html>