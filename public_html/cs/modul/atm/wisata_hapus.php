
<?php
 
include"././koneksi.php";
$id = $_GET['id'];
$hps = mysql_query("delete from tb_wisata where id_wisata=$id");
if($hps){
		?><script language="javascript">document.location.href="?page=wisata"</script><?php
	}
?>

