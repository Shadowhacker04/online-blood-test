<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Customer Registration Form</title>
<style>
h3{
  font-family: Calibri; 
  font-size: 18pt;         
  font-style: normal; 
  font-weight: bold; 
  color:rgb(22, 21, 21);
  text-align: center; 
}
h2{
text-align: center; 
}
body {
     background: url('https://static-communitytable.parade.com/wp-content/uploads/2014/03/rethink-target-heart-rate-number-ftr.jpg') fixed;
    background-size: cover;
}
table{
  font-family: Calibri; 
  color:Black; 
  font-size: 14pt; 
  font-style: normal;
  font-weight: bold; 
  background-color: rgba(128, 128, 128, 0.856); 
  border-collapse: collapse; 
}
table.inner{
  border: 0px
}
th, td {
  padding-top: 8px;
  padding-bottom: 14px;
  padding-left: 18px;
  padding-right: 24px;
}

.modal-confirm {		
	color: #434e65;
	width: 525px;
}
.modal-confirm .modal-content {
	padding: 20px;
	font-size: 16px;
	border-radius: 5px;
	border: none;
}
.modal-confirm .modal-header {
	background: #47c9a2;
	border-bottom: none;   
	position: relative;
	text-align: center;
	margin: -20px -20px 0;
	border-radius: 5px 5px 0 0;
	padding: 35px;
}
.modal-confirm h4 {
	text-align: center;
	font-size: 36px;
	margin: 10px 0;
}
.modal-confirm .form-control, .modal-confirm .btn {
	min-height: 40px;
	border-radius: 3px; 
}
.modal-confirm .close {
	position: absolute;
	top: 15px;
	right: 15px;
	color: #fff;
	text-shadow: none;
	opacity: 0.5;
}
.modal-confirm .close:hover {
	opacity: 0.8;
}
.modal-confirm .icon-box {
	color: #fff;		
	width: 95px;
	height: 95px;
	display: inline-block;
	border-radius: 50%;
	z-index: 9;
	border: 5px solid #fff;
	padding: 15px;
	text-align: center;
}
.modal-confirm .icon-box i {
	font-size: 64px;
	margin: -4px 0 0 -4px;
}
.modal-confirm.modal-dialog {
	margin-top: 80px;
}
.modal-confirm .btn, .modal-confirm .btn:active {
	color: #fff;
	border-radius: 4px;
	background: #eeb711 !important;
	text-decoration: none;
	transition: all 0.4s;
	line-height: normal;
	border-radius: 30px;
	margin-top: 10px;
	padding: 6px 20px;
	border: none;
}
.modal-confirm .btn:hover, .modal-confirm .btn:focus {
	background: #eda645 !important;
	outline: none;
}
.modal-confirm .btn span {
	margin: 1px 3px 0;
	float: left;
}
.modal-confirm .btn i {
	margin-left: 1px;
	font-size: 20px;
	float: right;
}
.trigger-btn {
	display: inline-block;
	margin: 100px auto;


</style>
<link rel="stylesheet">
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<body>
<div><div >
  <div >
  </div>
<div >
  <h2 style="font-weight: bolder" >CUSTOMER REGISTRATION</h2>
  
  
<form name="reg" method="post" action="regprocess" class="form-horizontal"  onsubmit="validate()" >
<table align="center" cellpadding = "10">
 
<!----- First Name ---------------------------------------------------------->
<tr>
<td>FIRST NAME</td>
<td><input type="text"   placeholder="Enter your First Name" id="name"  name="firstname" minlength="3" maxlength="15" oninput="gen()"  required/>
(max 15 characters a-z and A-Z)
</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>LAST NAME</td>
<td><input type="text" placeholder="Enter your Second Name" name="lastname" minlength="3"  maxlength="15"  required/>
(max 15 characters a-z and A-Z)
</td>
</tr>

<!----- Password ---------------------------------------------------------->

<tr>
<td><label for="password">PASSWORD</label></td>
<td><input type="password" placeholder="Create a password"  id="password" name="password" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{6,}$" title="Must contain at least one number and one uppercase lowercase letter and a special character, and at least 6 or more characters" required/>
</td>
</tr>
<tr><td>
CONFIRM PASSWORD
</td>
<td>
    <input type="password" placeholder="Confirm Password" id="confirm_password" required>
</td></tr>

<!-----Email---------------------------------------------------------->
<tr>
<td>EMAIL</td>
<td><input type="email" placeholder="Enter your email"  name="email"  required/>
</td>
</tr>

<!----- Date Of Birth -------------------------------------------------------->
<tr>
<td>DATE OF BIRTH</td>
 
<td>
        <select name="month" onchange="call()" required >
         <option value="" selected disabled hidden="hidden">Month</option>
         <option value="1">Jan</option>
         <option value="2">Feb</option>
         <option value="3">Mar</option>
         <option value="4">Apr</option>
         <option value="5">May</option>
         <option value="6">Jun</option>
         <option value="7">Jul</option>
         <option value="8">Aug</option>
         <option value="9">Sep</option>
         <option value="10">Oct</option>
         <option value="11">Nov</option>
         <option value="12">Dec</option>
        </select>
        <select name="year"  onchange="call()" required>
            <option value="" selected disabled hidden="hidden">Year</option>
           </select>
        <select name="day" required >
           <option value="" selected disabled hidden="hidden">Day</option>
          </select>
               </div>
       </div>
</tr>
<!----- Gender ------------------------------------------------->

<tr>
<td>GENDER</td>
<td>
    <select id="gender" name="gender" required="required">
        <option value="" selected disabled hidden="hidden">Select Gender</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        <option value="Other">Other</option>
</select>    
</td>
</tr>

<tr>
<td>
ADDRESS
</td>
<td>
<textarea rows="4" cols="50" name="address" placeholder="Street no,&#10;Landmark,&#10;City,&#10;State. " required></textarea>
</td>
</tr>
<tr>
    <td>
        MOBILE NUMBER
        
    </td>
    <td>
        <input type="tel" placeholder="Enter your mobile number"  id="mobile" name="mobile" pattern="[0-9]{10}" title="Must be 10 digits" required>
    </td>
</tr>
<tr>
  <td>SECURITY QUESTIONS </td>
  <td>
     Name of your first school?  
  &nbsp; <input type="text" placeholder="Enter your answer"  name="ansone"  required/>
</td>
  </tr>
  <tr>
    <td></td>
    <td>
     Your childhood nickname?   
   &nbsp; <input type="text" placeholder="Enter your answer"  name="anstwo"  required/>
  </td>
    </tr>
    <tr>
      <td></td>
      <td>
    In what city were you born?   
      <input type="text" placeholder="Enter your answer"  name="ansthree"  required/>
    </td>
      </tr>
      <tr></tr>
<tr>
  <td>CUSTOMER ID</td>
  <td><input type="text" id="cusid" name="cusid" placeholder="Auto-generated" readonly/>
  <button type="button" onclick="copyText()">Copy</button>
  </td>
  </tr>


<!----- Submit and Reset ------------------------------------------------->
<tr>
    <td colspan="2" align="center">
    <input data-toggle="modal" type="submit" value="Submit">
    <input type="reset" value="Reset">
    <button onclick="window.location.href='/finalproject'">Login</button>
    </td>
    </tr>
</table>
</form>
<div >
<h3>${msg}</h3>
</div>

</div>
</div>


</body>
<script>

var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}
password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;


function call(){
 var kcyear = document.getElementsByName("year")[0],
  kcmonth = document.getElementsByName("month")[0],
  kcday = document.getElementsByName("day")[0];
       
 var d = new Date();
 var n = d.getFullYear();
 for (var i = n; i >= 1920; i--) {
  var opt = new Option();
  opt.value = opt.text = i;
  kcyear.add(opt);
    }
 kcyear.addEventListener("change", validate_date);
 kcmonth.addEventListener("change", validate_date);

 function validate_date() {
 var y = +kcyear.value, m = kcmonth.value, d = kcday.value;
 if (m === "2")
     var mlength = 28 + (!(y & 3) && ((y % 100) !== 0 || !(y & 15)));
 else var mlength = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][m - 1];
 kcday.length = 0;
 for (var i = 1; i <= mlength; i++) {
     var opt = new Option();
     opt.value = opt.text = i;
     if (i == d) opt.selected = true;
     kcday.add(opt);
 }
     }
    validate_date();
  }
  
  
  
  var pass=document.getElementById("cusid");
 function gen() {
  var name =document.getElementById("name").value;
    var chars = "0123456789";
    var passwordLength = 2;
    var pass = "";
 for (var i = 0; i <= passwordLength; i++) {
   var randomNumber = Math.floor(Math.random() * chars.length);
   pass += chars.substring(randomNumber, randomNumber +1);
  }
 		var slice = name.slice(0, 3);
        var id = "CUS"+slice.toUpperCase()+pass;
        document.getElementById("cusid").value = id;
 }
 
 function copyText() {
     
	 var doc = document.getElementById("cusid").value
	 navigator.clipboard.writeText
         (doc);
 }
 
 function validate() {
	 document.getElementById("myBtn").click();
	 return true;
 }

</script>
</html>