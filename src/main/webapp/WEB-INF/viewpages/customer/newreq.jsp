<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>
<script src=
"https://code.jquery.com/jquery-1.12.4.min.js"></script>
  <%--   <link rel="stylesheet" href="/cus/style.css"> --%>
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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


.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

.row {margin: 0 -5px;}

.row:after {
  content: "";
  display: table;
  clear: both;
}
.gfg {
                border-collapse:separate;
                border-spacing:0 15px;
            }

@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

.card-hghlghto {
  pointer-events: auto;
  transform: scale(1);
  transition: all 0.4s;
}

.card-hghlghto:hover {
  opacity: 1;
  transform: scale(1.02);
}

.content:hover .card-hghlght:not(:hover) {
  opacity: 0.5;
  transform: scale(0.9);
}

.cardnew {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 20px;
  text-align: center;
  background-color: #f1f1f1;
  width: 105%
  }
  
  .card-body{
  background-color: #F5F5F5
  }

img {
  opacity: 0.5;
}

.price {
  color: grey;
  font-size: 22px;
}

.cardnew button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.bordero {
	
	place-items: center;
	border: 8px solid;
	border-image: linear-gradient(to left, turquoise, greenyellow) 1 1;
}

<%--.border {
	font-size: 1.6rem;
	display: grid;
	place-items: center;
	min-height: 200px;
	border: 8px solid;
	padding: 1rem;
	border-image: linear-gradient(to left, turquoise, greenyellow) 1 0;
}--%>

.cardnew button:hover {
  opacity: 0.7;
}




@import url("https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap");

.main-content {
	padding-top: 100px;
	padding-bottom: 100px;
}

.box {
	padding: 25px;
	margin-bottom: 25px;
	border-radius: 5px;
	background-color: #f1f1f1;
	box-shadow: 0 5px 30px -5px rgba(0, 0, 0, 0.1);
}

.helper {
	display: flex;
	align-items: center;
}
@media (max-width: 767px) {
	.helper {
		flex-wrap: wrap;
	}
}
.helper__img img {
	height: 120px;
	width: 120px;
	object-fit: contain;
}
@media (min-width: 768px) {
	.helper__img {
		margin-right: 25px;
	}
}
@media (max-width: 767px) {
	.helper__img {
		margin-bottom: 25px;
	}
}
.helper__content p {
	color: #777;
}
@media (min-width: 768px) {
	.helper__content {
		margin-right: 25px;
	}
}
@media (max-width: 767px) {
	.helper__content {
		margin-bottom: 25px;
	}
}


.btncls {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}


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
			<a href="home">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Home</span>
          </a>
        </li>
        <li>
          <a href="reqtest" class="active" >
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
      
      </div>
    
	<div class="container" style="width: 100%;">	
   <div class="card text-center ">
  <div class="card-header p-3 mb-2 bg-secondary text-white">
  </div>
  <div class="card-body">
    
    <h2>Availability</h2><br>
    <h3 class="price">Do apply only when you are sure what are you going for!..</h3><br>
    
 <div> 
            <label>
                <input type="radio" name="colorRadio" 
                       value="Tests" checked> Tests</label> &nbsp; &nbsp;
            <label>
                <input type="radio" name="colorRadio" 
                       value="Packages"> Packages</label>
</div>

<table class="Tests select gfg" ><tr><td>
<div class="row">
<c:forEach var="st" items="${test}"> 
<div class="column">
<div class="cardnew card-hghlghto bordero">
<img src="images/plux.png" alt="Avatar" style="width:5%">   
   <h1>${st.tname}</h1>
   <p class="price">₹${st.cost}</p> 
  	<p> ${st.tType}</p>
    <p>${st.tTime}</p>
    <form  method="post" action="newreq/${st.tname}">
    <button  type="submit" >Apply</button></form>
</div>
</div>
  </c:forEach>
  </div>
  </td>
</table>

<table class="Packages select" style="display:none" >
<tr><td>
<%--------------------------------------------------------------------------------------- --%>
<c:forEach var="pack" items="${pack}"> 
		<div class="container">
			<div class="box bordero card-hghlghto">
				<div class="helper">
					<div class="helper__img">
						<img src="images/plux.png" alt="Img Icon">
					</div>
					<div class="helper__content">
						<h5>${pack.packname}</h5><br>
						No of Tests: <b>${pack.no}</b> <br>
						Tests: <b>${pack.tstname}</b><br>
						Cost: <b>₹${pack.cost}</b><br>
						${pack.description}
					</div>
					<div class="helper__btn">
						<form  method="post" action="reqpack/${pack.packname}">
    					<button class="btncls"  type="submit" >Apply</button></form>
					</div>
				</div>
			</div>
		</div>
</c:forEach>

<%-------------------------------------------------------------------------------------------------- --%>


</td>
</table>
  </div>
  <div class="card-footer text-muted">
    </div>
  </div>
</div>
    
</section>

 <script type="text/javascript">
            $(document).ready(function() {
                $('input[type="radio"]').click(function() {
                    var inputValue = $(this).attr("value");
                    var targetBox = $("." + inputValue);
                    $(".select").not(targetBox).hide();
                    $(targetBox).show();
                });
            });
            
            function validateForm() {
          	  var x = document.forms["myForm"]["type"].value;
          	  if (x == "") {
          	    alert("Searchbar is Empty!");
          	    return false;
          	  }
          	}   
            
            
            
        </script>




</body>
</html>