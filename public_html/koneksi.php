<?php
$host="mysql.idhostinger.com";
$user="u117972856_papb";
$pass="wildanmukafi";
$db="u117972856_papb";

$entries=10;
$waktu=date("Y-m-d H:i:s");
  
$koneksi=mysql_connect($host,$user,$pass);
mysql_select_db($db,$koneksi);

ini_set('display_errors',FALSE);

if($koneksi){
  //echo "Berhasil koneksi";
}else{
  echo "Gagal koneksi";
}


$dateNow = date("Y-m-d");
$dateTimeNow = date("Y-m-d H:i:s");
$dateFirstYear='01-01-'.date('Y');
$dateFirstMonth='01'.date('-m-Y');
$dateLastMonth=date('t-m-Y');
$timeNow = date("H:i:s");
function timeConv($time){
  $time = substr($time,0,5);
  return $time; 
}
?>