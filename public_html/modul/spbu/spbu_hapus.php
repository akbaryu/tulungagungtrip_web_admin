
<?php
 
include"././koneksi.php";
$id = $_GET['id'];
$hps = mysql_query("delete from tb_spbu where id_spbu=$id");
if($hps){
		?><script language="javascript">document.location.href="?page=spbu"</script><?php
	}
?>

