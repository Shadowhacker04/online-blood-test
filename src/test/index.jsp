<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="css/Style.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">
body {
  		font-family: Georgia, serif;
		background-image: url("images/websitebackground.jpg");
		background-size: 1640px 980px;
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
	.bg {
  /* The image used */
  background-image: url("images/img.jpg");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

}	
	
</style>
<link href="css/Style.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="bg" >
<div class="nav">
	<div class="left">
		<span>DOCTORS' CHOICE PATHLAB</span>
	</div>
</div>
<br><br>
<div class="mt-5">
	    <div class="container-fluid" style="margin-bottom: 1%;">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">

                <div class="card bg-light" style="background-color:#FFF233 ">
                    <div class="card-header" style="font-weight:bold;font-size:20px; text-align:center">
                        Login
                    </div>
                    <img class="card-img-top" src="images/loginpage.png" alt="Card image cap" style="width:60%; height:60%; margin-left:95px">
                    <div class="card-body">
					<form name="loginform" method="post" action="login">
                        <label for="forUser" class="form-label">User ID / Mail ID</label>
                        <input type="text" style="background-color:#DAF7A6" name="username" class="form-control" placeholder="Enter Username or Email Id" required="required">
                        <label for="forPassword" class="form-label">Password</label>
                        <input type="password" style="background-color:#DAF7A6" name="password" class="form-control" placeholder="Enter Password" required="required">
                         <label for="forUserType" class="form-label">User Type</label>
						<select style="background-color:#DAF7A6" class="form-select mt-3" name="usertype" required="required">
							<option selected>Select user type...</option>
							<option value="admin">Admin</option>
							<option value="technician">Technician</option>
							<option value="customer">Customer</option>
						</select>
						<br>
						 <a style="background-color: none;" href="forget">Forgot Password?</a>						 
						 <br>
                    <br />
                        <div class="row">
                            <div class="col-md-12" style="text-align: center;">
                                <input type="submit" value="Login" class="btn btn-success" />&nbsp;&nbsp;
                                <input type="reset" value="Reset" class="btn btn-danger" />&nbsp;&nbsp;
                                <input type="button" value="Register" onclick="location.href='cusreg';" class="btn btn-success" />
                              
                            </div>
                        </div>
                        <div class="row">
                        	<div class="col-md-12">
                        		<span style="color:red">${msg}</span>
                        	</div>
                        </div>
                      <br>
        				<div>Dont have an account?</div> &nbsp; <a style="background-color: none;" href="cusreg">Register here</a>
					</form>
					<br>
                    </div>
                </div>
            </div>
			<div class="col-md-4"></div>
        </div>
    </div>
</div>
</body>
</html>