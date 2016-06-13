<?php
include"../koneksi.php";

// Data Surat
$surat=mysql_fetch_array(mysql_query("select * from tb_referensisurat"));
$kd_surat = $surat['kd_surat'];
$ket_surat = $surat['ket'];
$tahun = $surat['tahun'];

function nomor($tabel){
	$struktur	= mysql_query("SELECT * FROM $tabel");
	$field		= mysql_field_name($struktur,0);

 	$qry	= mysql_query("SELECT count(".$field.") FROM ".$tabel);
 	$row	= mysql_fetch_array($qry);  
	
	if ($row[0] <= 9){
		$tmp = "00";
	}
	else if($row[0] <= 99){
		$tmp = "0";
	}

 	return $tmp.$row[0]+1;
}


?>