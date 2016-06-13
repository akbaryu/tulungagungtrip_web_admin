<?php  
session_start();

include "koneksi.php";

if (isset($_POST['login'])){
	//koneksi terpusat

	$username=$_POST['username'];
	$password=$_POST['password'];
	
	$admin = mysql_query("select * from tb_pengguna where username='$username' and password='$password'");
//10 query untuk mencocokan, apakah data ada di dalam database atau tidak
$tot= mysql_num_rows($admin);
$r= mysql_fetch_array($admin);
if ($tot > 0) {//jika data ada maka akan diproses
 $_SESSION['nama_pengguna'] = $r['nama_pengguna'];
 $_SESSION['nama'] = $r['user_id'];
 $_SESSION['uname'] = $username;
 $_SESSION['passwd'] = $password;
 $_SESSION['level'] = $r['level'];
 if($r['level']=='kades'){
 echo"<script>location.href='media.php?page=home'</script>";
 }
 elseif($r['level']=='operator'){
 echo"<script>location.href='media.php?page=home'</script>";
 }
 elseif($r['level']=='penduduk'){
 echo"<script>location.href='media.php?page=home'</script>";
 }
 
}
else{
?>
<script>alert('Username mbek Passworde Salah Gan,,,!!!!!');</script>
<?php
}
}else{
	unset($_POST['login']);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="images/icon.png">

    <title>Tulungagung Trip</title>

    <!--Core CSS -->
    <link href="cs/bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="cs/css/bootstrap-reset.css" rel="stylesheet">
    <link href="cs/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="cs/css/style.css" rel="stylesheet">
    <link href="cs/css/style-responsive.css" rel="stylesheet" />

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

  <body class="login-body">

    <div class="container">
    <br><br>
      <form class="form-signin" action="index.php" method="post">
        <h2 class="form-signin-heading">Login Area</h2>
        <div class="login-wrap">
            <div class="user-login-info">
                <input type="text" name="username" class="form-control" placeholder="Username" autofocus>
                <input type="password" name="password" class="form-control" placeholder="Password">
            </div>
            
            <button class="btn btn-lg btn-login btn-block" type="submit" name="login">Masuk</button>


        </div>

      </form>

    </div>



    <!-- Placed js at the end of the document so the pages load faster -->

    <!--Core js-->
    <script src="cs/js/jquery.js"></script>
    <script src="cs/bs3/js/bootstrap.min.js"></script>

  </body>
</html>
