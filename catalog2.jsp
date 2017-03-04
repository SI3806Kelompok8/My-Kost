<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="java.util.*"%>
  <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 <%@ page language="java"%>
 <%@ page session="true"%>
 <%@ page import="java.sql.*"%>


  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <title>---Digital Library---</title>
 
  <style type="text/css" media="screen">
  body {
    font-family: century gothic, sans-serif;
    font-size: 12px;
    margin: 0;
    padding: 0;
    text-decoration: none;
    }
  /*----------------HEADER---------------*/
  #header {
    background:url(image/books.jpg);
    padding: 0px;
    width: 100%;
    height: 190px;
    opacity: 0.92;
    background-position: center;
    }

  #header img{
    padding-left: 110px;
    padding-top: 0px;
  }

  #header .menu-home a{
    padding-left: 10px;
    position: relative;
    top: -87px;
    font-family: century gothic;
    font-size: 23px;
    color: white;
    text-decoration: none;
    margin: 45px;
    
  }

  #header .menu-home a:hover{
    color:#FEC606;
  }
  
  /*-------------SIDEBAR------------------*/
  #sidebar {
    float: right;
    width: 22%;
    height: 1000px;
    background: #816432;
    padding-left: 15px;
    padding-bottom: 10px;
    padding-right: 10px;
    }
  #sidebar h1{
    font-family: arial;
    color: white;
    padding-left: 20px;
  }
  #sidebar ul li{
    display: block;
  }
  ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 100%;
    background-color: #f1f1f1;
    font-size: 15px;
  }

  li a {
      display: block;
      color: #000;
      padding: 8px 16px;
      text-decoration: none;
  }

  li a.active {
      background-color: #4CAF50;
      color: white;
  }

  li a:hover:not(.active) {
      background-color: #555;
      color: white;
  }

  .dropdown-content li a{
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
    background-color: #FF8600;
    padding-left: 40px;
    font-family: verdana;
  }
  .dropdown-content li a.active {
      background-color: #4CAF50;
      color: white;
  }

  .dropdown-content li a:hover:not(.active) {
      background-color: #FEC606;
      color: white;
  }

  /*-----------------navbar----------------*/
  .span{ /*Garis 3*/
  position: absolute;
  top:60px;
  right: 120px;
  color: white;
}


.sidenav {/*Posisi & Bentuk nav Muncul*/
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    right: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a{
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.4s;
  font-family: century gothic, sans-serif;
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}



  /*-----------------Content---------------*/
  #content {
    margin-right: 34%;
    background: url(image/123.png);
    padding-left: 50px;
    padding-bottom: 0;
    margin: 0;
    background-position: center;
    width: 1055px;
    height: 1010px;
    }
  
  /*------------------------- Body ---------------------------*/
.body {
  background:url(../images/bg-content.png) no-repeat left bottom #fbfbf4;
  margin:0 0 12px;
  min-height:1188px;
  padding:12px 10px 10px;
}
.body .sidebar div:first-child {
  min-height:0!important;
}
.body.home {
  background:none #fbfbf4;
  overflow:hidden;
}
.body.home div:first-child {
  float:left;
  width:700px;
}
.body.home div:first-child .featured {
  background:url(../images/featured.jpg) no-repeat;
  border:0;
  float:none;
  height:450px;
  margin:0 0 15px;
  padding:0;
  position:relative;
  width:700px;
}
.body.home div:first-child .featured div:first-child {
  background:url(../images/bg-transparent.png);
  border:0;
  bottom:11px;
  height:120px;
  left:20px;
  margin:0;
  overflow:hidden;
  padding:0;
  position:absolute;
  right:1px;
  width:679px;
}
.body.home div:first-child .featured div:first-child h2 {
  color:#ff7500;
  float:left;
  font-family:bevanregular;
  font-size:50px;
  font-weight:400;
  line-height:38px;
  margin:0 20px 0 10px;
  padding:18px 0 0;
}
.body.home div:first-child .featured div:first-child p {
  color:#fbfbf4;
  float:right;
  font-family:Arial, Helvetica, sans-serif;
  font-size:16px;
  line-height:18px;
  margin:27px 32px 0 0;
  width:290px;
}
.body.home div:first-child div div:first-child {
  float:none;
  margin-bottom:14px;
}
.body.home div:first-child div div:first-child h3 {
  background:url(../images/icons.png) no-repeat;
  color:#030303;
  display:block;
  float:left;
  font-family:bevanregular;
  font-size:30px;
  font-weight:400;
  height:26px;
  line-height:24px;
  margin:0;
  padding:0 0 0 40px;
  text-transform:uppercase;
  width:auto;
}
.body.home div:first-child div div:first-child span {
  display:block;
  float:right;
  margin:11px 0 0;
}
.body.home div:first-child div div:first-child span a {
  color:#ff7500;
  font-family:Arial Black, Helvetica, sans-serif;
  font-size:12px;
  text-transform:uppercase;
}
.body.home div:first-child div div:first-child ul {
  clear:both;
  list-style:none;
  margin:0;
  overflow:hidden;
  padding:7px 0 0;
}
.body.home div:first-child div div:first-child ul li {
  background:none #1f1f1f;
  border:0;
  float:left;
  margin:0 0 0 20px;
  min-height:293px;
  padding:10px 10px 0;
  width:200px;
}
.body.home div:first-child div {
  margin:0 0 11px;
}
.body.home div:first-child div div {
  border-top:4px solid #1f1f1f;
  padding:10px 0 0;
  width: 900px;
}




/*Tulisan Judul Buku*/
.body.home div:first-child div div ul li h4 {
  color:#026593;
  font-family:Arial Black, Helvetica, sans-serif;
  font-size:12px;
  line-height:18px;
  margin:10px 0 0;
  text-transform:uppercase;
}






/*Biar kotak2nya ga kebawah*/
.body.home div:first-child div div:first-child ul li:first-child, .body.home div:first-child div div ul li:first-child, .body.news div:first-child ul li div h3, .body.videos div:first-child div.section ul li:first-child {
  margin:0;
}

/*Tulisan kecil bawah*/
.body.home div:first-child div div:first-child ul li p, .body.videos div:first-child div.section ul li p {
  color:#fbfbf4;
  font-family:Arial, Helvetica, sans-serif;
  font-size:12px;
  line-height:18px;
  margin:1px 0 4px;
}



  /*--------------Konten---------------*/
  #footer {
    clear: right;
    background: #eee;
    padding: 20px;
    }
  
  </style>
</head>
<% 
    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    
    String username = (String)session.getAttribute("name");
    
    try {
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");
        String sql = ("SELECT * FROM tb_regis WHERE username='"+username+"'");
        pst = conn.prepareStatement(sql);
        rs = pst.executeQuery();
        if(rs.next()){
    %>
<body>

    <div id="header">
      <img src="image/Logo.png" alt="" width="380px" height="180px">
      <strong class="menu-home"><a href="home.jsp">Dashboard</a></strong>
      <strong class="menu-home"><a href="catalog2.jsp">Catalog</a></strong>
    </div>

    <div id="sidebar">
      <h1><strong>List Buku : </strong></h1>
      <div class="dropdown">
      <ul>
      <b><li><a href="#">Ensiklopedia</a></li></b>
        <div class="dropdown-content">
        <ul>
          <li><a href="">Olahraga</a></li>
          <li><a href="">Sejarah</a></li>
        </ul>
        </div>
      <b><li><a href="#">Novel</a></li></b>
        <div class="dropdown-content">
        <ul>
          <li><a href="">Romance</a></li>
          <li><a href="">Horor</a></li>
          <li><a href="">Fiksi</a></li>
        </ul>
        </div>
      <b><li><a href="#">Biografi</a></li></b>
        <!--<div class="dropdown-content">
        <ul>
          <li><a href="">Teknologi</a></li>
          <li><a href="">Dedikasi Masyarakat</a></li>
        </ul>
        </div>-->
      <b><li><a href="#">Jurnal / Karya Ilmiah</a></li></b>
        <div class="dropdown-content">
        <ul>
          <li><a href="">Web</a></li>
          <li><a href="">EA</a></li>
        </ul>
        </div>
      <b><li><a href="#">Materi Kuliah</a></li></b>
        <div class="dropdown-content">
        <ul>
          <li><a href="">Web</a></li>
          <li><a href="">EA</a></li>
        </ul>
        </div>
      </ul>
      </div>
    </div>

      <div class="body home">
        <div>
          <div>
          <div>
          <br><br>
              <h3>Mata Kuliah</h3>
              <span><a href="mata kuliah.jsp">View More Mata Kuliah</a></span>
              <ul>
                <li>
                  <a href="#"><img src="image/Buku/Matkul/modul1.JPG" alt="" width="150px" height="200px"></a>
                  <h4>Modul 1 Web Application Development</h4>
                  <p>
                    Modul 1 Prodase
                  </p>
                </li>
                <li>
                  <a href="#"><img src="image/Buku/Matkul/modul2.JPG" alt="" width="150px" height="200px"></a>
                  <h4>Modul 2 Web Application Development</h4>
                  <p>
                    Modul 2 Prodase
                  </p>
                </li>
                <li>
                  <a href="#"><img src="image/Buku/Matkul/modul3.JPG" alt="" width="150px" height="200px"></a>
                  <h4>Modul 3 Web Application Development</h4>
                  <p>
                    Modul 3 Prodase
                  </p>
                </li>
              </ul>
            </div>
            </div>
        </div>
      </div>
    
    
    
    <div id="mySidenav" class="sidenav">
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		  <a href="">Halo, <%= rs.getString("name")%></a>
                  <br><br><br>
                  <a href="profile.jsp">Profile</a>
		  <a href="download.jsp">Download</a>
		  <a href="upload.jsp">Upload</a>
		  <a href="delivery.jsp">Delivery</a>
		  <a href="contact us.jsp">Contact Us</a>
                  <a href="DelivAccepted.jsp">Confirmation</a>
                  <a class = "logout" href="index.jsp"><span>Logout</span></a>
  </div>

  <span class="span" style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>

    <script>
      function openNav() {
          document.getElementById("mySidenav").style.width = "250px";
      }

      function closeNav() {
          document.getElementById("mySidenav").style.width = "0";
      }
    </script>
    
    <div id="footer">
      <div>
        <div class="connect">
          <center>
          <a href="http://facebook.com" class="facebook"><img src="image/facebook.png" width="45px"></a> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          <a href="http://twitter.com" class="twitter"><img src="image/twitter.png" width="45px"></a> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          <a href="http://instagram.com" class="instagram"><img src="image/instagram.png" width="45px"></a> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          <a href="http://gmail.com" class="gmail"><img src="image/gmail.png" width="45px"></a>
          </center>
        </div>
        <center><p>&#9889;Kelompok Alpha Wolf</p></center>
      </div>
  </div>

  <%}
    }catch (Exception e) {
        out.println("DB problem"); 
        return;
    }finally {
        try {
            rs.close();
            pst.close();
            conn.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    out.println("<form action=\"logout.jsp\" method=\"post\">");
    out.println("</form>");
    %>


</body>
</html>