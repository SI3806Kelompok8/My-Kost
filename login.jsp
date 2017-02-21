<%-- 
    Document   : login
    Created on : Nov 22, 2016, 12:25:50 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>

<head>

<!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>


 </head>
<body>
  <nav>
    <div class="nav nav-wrapper  grey lighten-5 z-depth-5 ">
        <div class="navbar-fixed">
        <a href="home.jsp" class="brand-logo center-align black-text"> &nbsp &nbspTravelvaganza</a>
      <ul id="nav-mobile" class=" right hide-on-med-and-down ">
          <li><a href="home.jsp" class="black-text">Home</a></li>
        <li><a href="gallery.jsp" class="black-text">Gallery</a></li>
        <li><a href="booking.jsp" class="black-text active">Booking</a></li>
        <li><a href="login.jsp" class="black-text">Login</a></li>
      </ul>
        
    </div>
  </nav>
        
<!-- content -->

<br><br><br><br><br>

<div class="row  s12 z-depth-4" style="width: 615px; height: 490px;">
    <form action="LoginServlet" method="post" class="col s12 " style="width: 1800px; height: auto;">
           <div class="row">
                <div class="col s4 light-blue-text center">
                    <h1>Travelvaganza</h1>
                </div>
           </div>
           <div class="row">
                <div class="input-field col s4">
                <input id="username" type="text" class="validate" name="username">
                <label for="username">Username</label>
                </div>
           </div>
           <div class="row">
                <div class="input-field col s4">
                <input id="password" type="password" class="validate" name="password">
                <label for="password">Password</label>
                </div>
            </div>
           
            <div class="row s4">
                <div class=" col s2">
                    <a href="registrasi.jsp" class="left-align "><h6> Create Account</h6></a>
                </div>
          
                <div class=" col s2">
                    <a href="#" class="right-align black-text"><h6> Forget Password?</h6></a>
                </div>
            </div>
           
           <button class="btn waves-effect waves-light white-text pink col s4 center" type="submit" name="action">Submit
                <i class="material-icons right">send</i>
      
        
        </form>    
       

    </div>
   
      
  
 
 <!-- FOOTER -->
    
    
    <!-- END FOOTER -->
    
       <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.js"></script>
      <script>
          
      </script>
</body>
</html>
