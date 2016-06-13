<?php

// Beranda
if ($_GET['page']=='home'){ 
include "home.php";
}

// Data Pengguna
else
if ($_GET['page']=='pengguna'){ 
include "modul/pengguna/pengguna.php";
}
else
if ($_GET['page']=='pengguna_tambah'){ 
include "modul/pengguna/pengguna_tambah.php";
}
else
if ($_GET['page']=='setting'){ 
include "modul/pengguna/setting.php";
}

else
if ($_GET['page']=='data_profil'){ 
include "modul/pengguna/data_profil.php";
}

else
if ($_GET['page']=='profil'){ 
include "modul/pengguna/profil.php";
}

else
if ($_GET['page']=='profil_tambah'){ 
include "modul/pengguna/profil_tambah.php";
}

else
if ($_GET['page']=='logo_edit'){ 
include "modul/pengguna/logo_edit.php";
}


else
if ($_GET['page']=='wisata'){ 
include "modul/wisata/wisata_view.php";
}

else
if ($_GET['page']=='detail_wisata'){ 
include "modul/wisata/detail_wisata.php";
}

else
if ($_GET['page']=='wisata_tambah'){ 
include "modul/wisata/wisata_tambah.php";
}

else
if ($_GET['page']=='wisata_hapus'){ 
include "modul/wisata/wisata_hapus.php";
}

else
if ($_GET['page']=='spbu'){ 
include "modul/spbu/spbu_view.php";
}

else
if ($_GET['page']=='detail_spbu'){ 
include "modul/spbu/detail_spbu.php";
}

else
if ($_GET['page']=='spbu_tambah'){ 
include "modul/spbu/spbu_tambah.php";
}

else
if ($_GET['page']=='spbu_hapus'){ 
include "modul/spbu/spbu_hapus.php";
}

else
if ($_GET['page']=='atm'){ 
include "modul/atm/atm_view.php";
}

else
if ($_GET['page']=='detail_atm'){ 
include "modul/atm/detail_atm.php";
}

else
if ($_GET['page']=='atm_tambah'){ 
include "modul/atm/atm_tambah.php";
}

else
if ($_GET['page']=='atm_hapus'){ 
include "modul/atm/atm_hapus.php";
}

else
if ($_GET['page']=='rumah_sakit'){ 
include "modul/rumah_sakit/rumah_sakit_view.php";
}

else
if ($_GET['page']=='detail_rumah_sakit'){ 
include "modul/rumah_sakit/detail_rumah_sakit.php";
}

else{
include "not_found.php";	
}
?>