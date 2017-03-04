<%-- 
    Document   : catalog
    Created on : Nov 22, 2016, 8:31:50 AM
    Author     : 8.1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Digital Library</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Quicksand|Montserrat" rel="stylesheet">
</head>
<body>
	<div id="header" class="home">
		<div class="header">
			<a href="index.jsp" class="logo"><img src="image/Logo.png" alt=""></a>
			<nav class="menubar">
			  <input type="radio" name="menuItem" id="menu-item-1" class="toggle" checked />
			  	<a class ="dashboard" href="index.jsp"><span>Dashboard</span></a>
			  
			  <input type="radio" name="menuItem" id="menu-item-2" class="toggle" />
			  	<a class = "catalog" href="catalog.jsp"><span>Catalog</span></a>
			  
			  <div class="clear"></div>
			  
			  <!-- Bar -->
			  <div class="bar-bg">
			    <div class="bar"></div>
			  </div>
			  
			</nav>
			<div class="autoslide">
				
					<img class="mySlides" src="image/Buku/Matkul/modul1.JPG" width="170px" height="280px">
					<img class="mySlides" src="image/Buku/Matkul/modul2.JPG" width="170px" height="280px">
				
					
				</div>
		</div>
		<div class="body">
			<br><br>
				<h1>A ROOM WITHOUT BOOKS IS LIKE</h1>
				<h1>A BODY WITHOUT A SOUL</h1>
			<br><br>
				<p><i>" There is no friend as loyal as a book "</i></p>
		</div>
	</div>

	<div id="footer" class="bawah">
			<nav class="footer">
			  <input type="radio" name="menuItem" id="menu-item-1" class="toggle" checked />
			  	<a href="Login.jsp"><span>LOGIN</span></a>
			  
			  <input type="radio" name="menuItem" id="menu-item-2" class="toggle" />
			  	<a href="Sign Up.jsp"><span>REGISTRASI</span></a>
			  
			  <div class="clear"></div>
			  
			  <!-- Bar -->
			  <div class="bar-bg">
			    <div class="bar"></div>
			  </div>
			  
			</nav>
		</div>

<!--slide auto-->	
	<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 10000); // Change image every 2 seconds
}
</script>
</body>
</html>
