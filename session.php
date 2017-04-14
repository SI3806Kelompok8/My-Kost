<?php
session_start();
if($_SESSION['user']=="" || $_SESSION['pass']==""){
?>
<script>document.location='Login.html'</script>
<?php } ?>