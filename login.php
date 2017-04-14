<?php 
include("koneksi.php");
$user=$_POST['user'];
$pass=$_POST['pass'];
//$enc_pass=sha1($pass);

$Q = mysql_query("select * from register where username='$user' and password='$pass'") or die(mysql_error());
//$tampil = mysql_fetch_array($Q);
//$nimA = $tampilA['nim'];
//$namaA = $tampilA['nama'];
//$hak_aksesA = $tampilA['hak_akses'];

$count = mysql_num_rows($Q);
if($count==1){
session_start();
$_SESSION['user']=$user;
$_SESSION['pass']=$pass;
?>
<script>
	alert('Selamat datang');
	document.location='indexLogin.html'
	</script>
<?php 

}else{ ?>
	<script>
		alert('Maaf, Username atau Password anda salah');
		document.location='Login.html'
	</script>
<?php }?>
