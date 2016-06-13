<?php
	include("koneksi.php");
	
	extract($_REQUEST, EXTR_OVERWRITE);

	if($latitude==null){
		$latitude=0;
	}

	if($longitude==null){
		$longitude=0;
	}

	
	if ($pl == "wisata") 
	{	
		$sqlplace = "SELECT * FROM `tb_wisata` WHERE kategori='$kategori'";
		$hasil = mysql_query($sqlplace);
		$kirim = ""	;
		$arr = array();
		$i = 0; 
		while ($row = mysql_fetch_assoc($hasil)) 
		{	
			
			$lat=$latitude;
			$lang=$longitude;
			$jarak=getDistanceBetween($lat, $lang,$row["latitude"], $row["langitude"]);

			$arr[$i] = array("id" => $row["id_wisata"],"nama" => $row["nama"],"alamat" => $row["alamat"],"kategori" => $row["kategori"],"fasilitas" => $row["fasilitas"],"keterangan" => $row["keterangan"],"gambar1" => $row["image"],"gambar2" => $row["image2"],"gambar3" => $row["image3"],"gambar4" => $row["image4"],"gambar5" => $row["image5"], "longitude" => $row["langitude"],"latitude" => $row["latitude"],"jarak" => $jarak);
			$i++;
		}
		$arr1=aasortall ($arr, 'jarak');
	echo json_encode(array("result" => $arr1));
	}
	
	
	if ($pl == "atm") 
	{
	
		$sqlplace = "SELECT*FROM `tb_atm` WHERE kategori='$kategori'";
		$hasil = mysql_query($sqlplace);
		$kirim = ""	;
		
		$arr = array();
		$i = 0; 
		
		while ($row = mysql_fetch_assoc($hasil)) 
		{
			
			$lat=$latitude;
			$lang=$longitude;
			$jarak=getDistanceBetween($lat, $lang,$row["latitude"], $row["langitude"]);

			$arr[$i] = array("id" => $row["id_atm"],"nama" => $row["nama"], "alamat" => $row["alamat"],"kategori" => $row["kategori"],"gambar" => $row["image"],"longitude" => $row["langitude"],"latitude" => $row["latitude"],"jarak" => $jarak);
			$i++;
		}
		$arr1=aasortall ($arr, 'jarak');
	echo json_encode(array("result" => $arr1));
		
	}
	
	if ($pl == "spbu") 
	{
		$sqlplace = "SELECT * FROM `tb_spbu`" ;
		$hasil = mysql_query($sqlplace);
		$kirim = ""	;
		
		$arr = array();
		$i = 0; 
		
		while ($row = mysql_fetch_assoc($hasil)) 
		{
			
			$lat=$latitude;
			$lang=$longitude;
			$jarak=getDistanceBetween($lat, $lang,$row["latitude"], $row["langitude"]);

			$arr[$i] = array("id" => $row["id_spbu"],"nama" => $row["nama"], "alamat" => $row["alamat"],"gambar" => $row["image"],"longitude" => $row["langitude"],"latitude" => $row["latitude"],"jarak" => $jarak);
			$i++;
		}
		$arr1=aasortall ($arr, 'jarak');
	echo json_encode(array("result" => $arr1));
		
	}
	
	if ($pl == "rmsakit") 
	{
		$sqlplace = "SELECT * FROM `tb_rmsakit`" ;
		$hasil = mysql_query($sqlplace);
		$kirim = ""	;
		
		$arr = array();
		$i = 0; 
		
		while ($row = mysql_fetch_assoc($hasil)) 
		{
			
			$lat=$latitude;
			$lang=$longitude;
			$jarak=getDistanceBetween($lat, $lang,$row["latitude"], $row["langitude"]);

			$arr[$i] = array("id" => $row["id_rmsakit"],"nama" => $row["nama"], "alamat" => $row["alamat"], "telp" => $row["telp"],"gambar" => $row["image"],"longitude" => $row["langitude"],"latitude" => $row["latitude"],"jarak" => $jarak);
			$i++;
		}
		$arr1=aasortall ($arr, 'jarak');
	echo json_encode(array("result" => $arr1));
		
	}
	
	if ($pl == "rmibadah") 
	{
		$sqlplace = "SELECT * FROM `tb_rmibadah` WHERE kategori='$kategori'";
		$hasil = mysql_query($sqlplace);
		$kirim = ""	;
		
		$arr = array();
		$i = 0; 
		
		while ($row = mysql_fetch_assoc($hasil)) 
		{
			
			$lat=$latitude;
			$lang=$longitude;
			$jarak=getDistanceBetween($lat, $lang,$row["latitude"], $row["langitude"]);

			$arr[$i] = array("id" => $row["id_rmibadah"],"nama" => $row["nama"], "alamat" => $row["alamat"],"kategori" => $row["kategori"],"gambar" => $row["image"],"longitude" => $row["langitude"],"latitude" => $row["latitude"],"jarak" => $jarak);
			$i++;
		}
		$arr1=aasortall ($arr, 'jarak');
	echo json_encode(array("result" => $arr1));
		
	}
	
	if ($pl == "transport") 
	{
		$sqlplace = "SELECT * FROM `tb_transport`" ;
		$hasil = mysql_query($sqlplace);
		$kirim = ""	;
		
		$arr = array();
		$i = 0; 
		
		while ($row = mysql_fetch_assoc($hasil)) 
		{
			
			$lat=$latitude;
			$lang=$longitude;
			$jarak=getDistanceBetween($lat, $lang,$row["latitude"], $row["langitude"]);

			$arr[$i] = array("id" => $row["id_transport"],"nama" => $row["nama"], "alamat" => $row["alamat"],"gambar" => $row["image"],"longitude" => $row["langitude"],"latitude" => $row["latitude"],"jarak" => $jarak);
			$i++;
		}
		$arr1=aasortall ($arr, 'jarak');
	echo json_encode(array("result" => $arr1));
		
	}
	
	if ($pl == "info") 
	{
		$sqlplace = "SELECT * FROM `tb_info`" ;
		$hasil = mysql_query($sqlplace);
		$kirim = ""	;
		
		$arr = array();
		$i = 0; 
		
		while ($row = mysql_fetch_assoc($hasil)) 
		{
			$arr[$i] = array("id" => $row["id_info"],"nama" => $row["nama"], "info" => $row["info"],"tanggal" => $row["tanggal"]);
			$i++;
		}
		$arr1=aasortall ($arr, 'jarak');
	echo json_encode(array("result" => $arr1));
		
	}
	
	if ($pl == "peta") 
	{
		$sqlplace = "SELECT * FROM `tb_wisata`" ;
		$hasil = mysql_query($sqlplace);
		$kirim = ""	;
		
		$arr = array();
		$i = 0; 
		
		while ($row = mysql_fetch_assoc($hasil)) 
		{
			$arr[$i] = array("id" => $row["id_wisata"],"lng" => $row["langitude"], "lat" => $row["latitude"],"nama" => $row["nama"], "alamat" => $row["alamat"],"kategori" => $row["kategori"]);
			$i++;
		}
		$arr1=aasortall ($arr, 'jarak');
	echo json_encode(array("markers" => $arr1));
		
	}
	
	
	function getDistanceBetween($latitude1, $longitude1, $latitude2, $longitude2) 
						{	 
							$R = 6371.0; 
							$dLon = ($longitude2 - $longitude1) * pi() / 180;
							$latitude1 = $latitude1 * pi() / 180;
							$latitude2 = $latitude2 * pi() / 180;
							$d = acos(sin($latitude1) * sin($latitude2) + cos($latitude1)
									* cos($latitude2) * cos($dLon))
									* $R; 
							
						return round($d,2); 
						}
	function aasortall (&$array, $key) {
    $sorter=array();
    $ret=array();
    reset($array);
    foreach ($array as $ii => $va) {
        $sorter[$ii]=$va[$key];
    }
    asort($sorter);
	$i=0;
    foreach ($sorter as $ii => $va) {
        $ret[$i]=$array[$ii];
		$i++;
    }
    return $ret;
	}	
	
?>