<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>
  <%--   <link rel="stylesheet" href="/cus/style.css"> --%>
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@charset "UTF-8";
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
.sidebar{
  position: fixed;
  height: 100%;
  width: 240px;
  background: #0A2558;
  transition: all 0.5s ease;
}
.hidden {
  display: none;
}
.vanish {
  display: none;
}
.not {
  display: none;
}
.appear {
  display: none;
}
#appear1, #appear2, #appear3, #appear4 {
    display: none;
}
td{padding: 6px;}

.sidebar.active{
  width: 60px;
}
.sidebar .logo-details{
  height: 80px;
  display: flex;
  align-items: center;
}
.sidebar .logo-details i{
  font-size: 28px;
  font-weight: 500;
  color: #fff;
  min-width: 60px;
  text-align: center
}
.sidebar .logo-details .logo_name{
  color: #fff;
  font-size: 24px;
  font-weight: 500;
}
.sidebar .nav-links{
  margin-top: 10px;
}
.sidebar .nav-links li{
  position: relative;
  list-style: none;
  height: 50px;
}
.sidebar .nav-links li a{
  height: 100%;
  width: 100%;
  display: flex;
  align-items: center;
  text-decoration: none;
  transition: all 0.4s ease;
}
.sidebar .nav-links li a.active{
  background: #081D45;
}
.sidebar .nav-links li a:hover{
  background: #081D45;
}
.sidebar .nav-links li i{
  min-width: 60px;
  text-align: center;
  font-size: 18px;
  color: #fff;
}
.sidebar .nav-links li a .links_name{
  color: #fff;
  font-size: 15px;
  font-weight: 400;
  white-space: nowrap;
}
.sidebar .nav-links .log_out{
  position: absolute;
  bottom: 0;
  width: 100%;
}
.home-section{
  position: relative;
  background: #f5f5f5;
  min-height: 100vh;
  width: calc(100% - 240px);
  left: 240px;
  transition: all 0.5s ease;
}
.sidebar.active ~ .home-section{
  width: calc(100% - 60px);
  left: 60px;
}
.home-section nav{
  display: flex;
  justify-content: space-between;
  height: 80px;
  background: #fff;
  display: flex;
  align-items: center;
  position: fixed;
  width: calc(100% - 240px);
  left: 240px;
  z-index: 100;
  padding: 0 20px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  transition: all 0.5s ease;
}
.sidebar.active ~ .home-section nav{
  left: 60px;
  width: calc(100% - 60px);
}
.home-section nav .sidebar-button{
  display: flex;
  align-items: center;
  font-size: 24px;
  font-weight: 500;
}
nav .sidebar-button i{
  font-size: 35px;
  margin-right: 10px;
}
.home-section nav .search-box{
  position: relative;
  height: 50px;
  max-width: 550px;
  width: 100%;
  margin: 0 20px;
}
nav .search-box input{
  height: 100%;
  width: 100%;
  outline: none;
  background: #F5F6FA;
  border: 2px solid #EFEEF1;
  border-radius: 6px;
  font-size: 18px;
  padding: 0 15px;
}
nav .search-box .bx-search{
  position: absolute;
  height: 40px;
  width: 40px;
  background: #2697FF;
  right: 5px;
  top: 50%;
  transform: translateY(-50%);
  border-radius: 4px;
  line-height: 40px;
  text-align: center;
  color: #fff;
  font-size: 22px;
  transition: all 0.4 ease;
}
.home-section nav .profile-details{
  display: flex;
  align-items: center;
  background: #F5F6FA;
  border: 2px solid #EFEEF1;
  border-radius: 6px;
  height: 50px;
  min-width: 190px;
  padding: 0 15px 0 2px;
}
nav .profile-details img{
  height: 40px;
  width: 40px;
  border-radius: 6px;
  object-fit: cover;
}
nav .profile-details .admin_name{
  font-size: 15px;
  font-weight: 500;
  color: #333;
  margin: 0 10px;
  white-space: nowrap;
}
nav .profile-details i{
  font-size: 25px;
  color: #333;
}
.home-section .home-content{
  position: relative;
  padding-top: 104px;
}
.home-content .overview-boxes{
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
  padding: 0 20px;
  margin-bottom: 26px;
}
.overview-boxes .box{
  display: flex;
  align-items: center;
  justify-content: center;
  width: calc(100% / 4 - 15px);
  background: #fff;
  padding: 15px 14px;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.1);
}
.overview-boxes .box-topic{
  font-size: 20px;
  font-weight: 500;
}
.home-content .box .number{
  display: inline-block;
  font-size: 35px;
  margin-top: -6px;
  font-weight: 500;
}
.home-content .box .indicator{
  display: flex;
  align-items: center;
}
.home-content .box .indicator i{
  height: 20px;
  width: 20px;
  background: #8FDACB;
  line-height: 20px;
  text-align: center;
  border-radius: 50%;
  color: #fff;
  font-size: 20px;
  margin-right: 5px;
}
.box .indicator i.down{
  background: #e87d88;
}
.home-content .box .indicator .text{
  font-size: 12px;
}
.home-content .box .cart{
  display: inline-block;
  font-size: 32px;
  height: 50px;
  width: 50px;
  background: #cce5ff;
  line-height: 50px;
  text-align: center;
  color: #66b0ff;
  border-radius: 12px;
  margin: -15px 0 0 6px;
}
.home-content .box .cart.two{
   color: #2BD47D;
   background: #C0F2D8;
 }
.home-content .box .cart.three{
   color: #ffc233;
   background: #ffe8b3;
 }
.home-content .box .cart.four{
   color: #e05260;
   background: #f7d4d7;
 }
.home-content .total-order{
  font-size: 20px;
  font-weight: 500;
}
.home-content .sales-boxes{
  display: flex;
  justify-content: space-between;
  /* padding: 0 20px; */
}

/* left box */
.home-content .sales-boxes .recent-sales{
  width: 65%;
  background: #fff;
  padding: 20px 30px;
  margin: 0 20px;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}
.home-content .sales-boxes .sales-details{
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.sales-boxes .box .title{
  font-size: 24px;
  font-weight: 500;
  /* margin-bottom: 10px; */
}
.sales-boxes .sales-details li.topic{
  font-size: 20px;
  font-weight: 500;
}
.sales-boxes .sales-details li{
  list-style: none;
  margin: 8px 0;
}
.sales-boxes .sales-details li a{
  font-size: 18px;
  color: #333;
  font-size: 400;
  text-decoration: none;
}
.sales-boxes .box .button{
  width: 100%;
  display: flex;
  justify-content: flex-end;
}
.sales-boxes .box .button a{
  color: #fff;
  background: #0A2558;
  padding: 4px 12px;
  font-size: 15px;
  font-weight: 400;
  border-radius: 4px;
  text-decoration: none;
  transition: all 0.3s ease;
}
.sales-boxes .box .button a:hover{
  background:  #0d3073;
}

/* Right box */
.home-content .sales-boxes .top-sales{
  width: 35%;
  background: #fff;
  padding: 20px 30px;
  margin: 0 20px 0 0;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}
.sales-boxes .top-sales li{
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 10px 0;
}
.sales-boxes .top-sales li a img{
  height: 40px;
  width: 40px;
  object-fit: cover;
  border-radius: 12px;
  margin-right: 10px;
  background: #333;
}
.sales-boxes .top-sales li a{
  display: flex;
  align-items: center;
  text-decoration: none;
}
.sales-boxes .top-sales li .product,
.price{
  font-size: 17px;
  font-weight: 400;
  color: #333;
}
/* Responsive Media Query */
@media (max-width: 1240px) {
  .sidebar{
    width: 60px;
  }
  .sidebar.active{
    width: 220px;
  }
  .home-section{
    width: calc(100% - 60px);
    left: 60px;
  }
  .sidebar.active ~ .home-section{
    /* width: calc(100% - 220px); */
    overflow: hidden;
    left: 220px;
  }
  .home-section nav{
    width: calc(100% - 60px);
    left: 60px;
  }
  .sidebar.active ~ .home-section nav{
    width: calc(100% - 220px);
    left: 220px;
  }
}
@media (max-width: 1150px) {
  .home-content .sales-boxes{
    flex-direction: column;
  }
  .home-content .sales-boxes .box{
    width: 100%;
    overflow-x: scroll;
    margin-bottom: 30px;
  }
  .home-content .sales-boxes .top-sales{
    margin: 0;
  }
}
@media (max-width: 1000px) {
  .overview-boxes .box{
    width: calc(100% / 2 - 15px);
    margin-bottom: 15px;
  }
}
@media (max-width: 700px) {
  nav .sidebar-button .dashboard,
  nav .profile-details .admin_name,
  nav .profile-details i{
    display: none;
  }
  .home-section nav .profile-details{
    height: 50px;
    min-width: 40px;
  }
  .home-content .sales-boxes .sales-details{
    width: 560px;
  }
}
@media (max-width: 550px) {
  .overview-boxes .box{
    width: 100%;
    margin-bottom: 15px;
  }
  .sidebar.active ~ .home-section nav .profile-details{
    display: none;
  }
}
.centre {
position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>  
   
   </head>
<body>
  
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">Customer</span>
    </div>
      <ul class="nav-links">
        <li>
			<a href="home" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Home</span>
          </a>
        </li>
        <li>
          <a href="reqtest" >
            <i class='bx bx-box' ></i>
            <span class="links_name">View Checkups</span>
          </a>
        </li>
        <li>
          <a href="requests">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">View Request</span>
          </a>
        </li>
        <li>
        <li class="log_out">
          <a href="logout">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section style="background-color:#F0F0F0" class="home-section">
    <nav style="background-color:#E1EBEE">
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>
      <form name="myForm" method="post" action="search" onsubmit="return validateForm()">
      <div class="search-box">
        <input name="type" list="brow" type="text" placeholder="Search..."> 
        <button type="submit"><i class='bx bx-search' ></i></button>
        <datalist id="brow">
  <option value="BLOOD">
  <option value="URINE">
</datalist>
      </div>
      </form>
      <div class="profile-details">
        <img src="images/profile.jpg" alt="">
        <span class="admin_name"><label>${msg}</label></span>
      </div>
    </nav>
    
    <div class="home-content">
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
          <a href="profile" >
            <button class="btn-default btn-lg">View Profile</button>
            </a>
          </div>
          
        </div>
        <div class="box">
          <div class="right-side">
            <a href="modify" >
            <button class="btn-default btn-lg">Update Details</button>
            </a>
          </div>
          
        </div>
        <div class="box">
          <div class="right-side">
            <a href="paswrd" >
            <button class="btn-default btn-lg">Update Password</button>
            </a>
            </div>
          </div>
          
        <div class="box">
          <div class="right-side">
           <a href="feedback" >
            <button class="btn-default btn-lg"">Feedback</button>
            </a>
            </div>
        </div>
      </div>
      </div>
    
	    <div  class="container">
	    

<form name="reg" method="post" action="update"  class="form-horizontal"  onsubmit="validate()" >
<table  style="margin-left: 25%; margin-right: auto;" cellpadding = "10">
 
 
 <tr>
  <td ><label class="form-label">CUSTOMER ID  :</label></td>
  <td><input type="text" value="${inf.customerid}" class="form-control col-md-5" id="cusid" name="cusid"  readonly/>
  </td>
  </tr>
<!----- First Name ---------------------------------------------------------->
<tr>
<td>FIRST NAME :</td>
<td><input type="text" value="${inf.firstname}" class="form-control col-md-5"   id="name"  name="firstname" minlength="3" maxlength="15" required/>

</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>LAST NAME :</td>
<td><input type="text" value="${inf.lastname}" class="form-control col-md-5" name="lastname" minlength="3"  maxlength="15"  required/>

</td>
</tr>

<!-----Email---------------------------------------------------------->
<tr>
<td>EMAIL :</td>
<td><input class="form-control col-md-5" type="email" value="${inf.emailid}"  name="email"  required/>
</td>
</tr>

<!----- Date Of Birth -------------------------------------------------------->

<tr>
<td>DATE OF BIRTH :</td>
<td><input class="form-control col-md-5" type="date" value="${inf.dob}"  name="dob"  required/>
</td>
</tr>

<!----- Gender ------------------------------------------------->

<tr>
<td>GENDER :</td>
<td>
    <select class="form-control col-md-5" id="gender" name="gender" required="required">
        <option value="${inf.gender}" selected disabled hidden="hidden">Select Gender</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        <option value="Other">Other</option>
</select>    
</td>
</tr>

<tr>
<td>
ADDRESS :
</td>
<td>
<textarea class="form-group col-md-6" rows="3" cols="40" name="address" required>${inf.address}</textarea>
</td>
</tr>
<tr>
    <td>
        MOBILE NUMBER :
        
    </td>
    <td>
        <input class="form-group col-md-5" type="tel" value="${inf.mobileno}" id="mobile" name="mobile" pattern="[0-9]{10}" title="Must be 10 digits" required>
    </td>
</tr>
<tr>
  <td>SECURITY QUESTIONS:- </td>
  <td>
     Name of your first school?  
  &nbsp; <input class="form-group col-md-3" type="text" value="${inf.q1}"  name="ansone"  required/>
</td>
  </tr>
  <tr>
    <td></td>
    <td>
     Your childhood nickname?   
   &nbsp; <input class="form-group col-md-3" type="text" value="${inf.q2}"  name="anstwo"  required/>
  </td>
    </tr>
    <tr>
      <td></td>
      <td>
    In what city were you born?   
      <input class="form-group col-md-3" type="text" value="${inf.q3}"  name="ansthree" required />
    </td>
      </tr>
      <tr></tr>



<!----- Submit and Reset ------------------------------------------------->
<tr>
    <td colspan="2" align="center">
    <input class="btn btn-primary" type="submit" value="Submit">
    <input class="btn btn-danger" type="reset" value="Restore Default">
  <div> ${masg}</div>
    </td>
    </tr>
</table>
</form>
    
    </div>
     
 
</section>
</body>
</html>