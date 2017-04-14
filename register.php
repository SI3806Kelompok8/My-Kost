<?php
include("koneksi.php");

$user = $_POST['user'];
$pass = $_POST['pass'];
$retype_pass = $_POST['retype_pass'];
$email = $_POST['email'];
//$enc_pass = sha1($pass);

$cek = mysql_query("select * from register where username='$user' or email='$email'") or die(mysql_error());
$count= mysql_num_rows($cek);
if($count == 1){
?>
<script>alert('Username atau email telah digunakan');document.location='register.html'</script>
<?php
}
mysql_query("insert into register (username, password, retype_pass, email) values ('$user','$pass', '$retype_pass', '$email')") or die(mysql_error());
?>
<script>
	alert('Daftar berhasil');
	document.location='login.html';
</script>

