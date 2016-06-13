<?php
include "././koneksi.php";
include "././css/fungsi_indotgl.php";
include "././css/library.php";
include "././css/auto_number.php";

if($_GET['mode']=='input'){
	
	$nama			= $_POST['nama'];
	$alamat			= $_POST['alamat'];
	$longitude		= $_POST['langitude'];
	$latitude		= $_POST['latitude'];
	$image			= 'spbu.png';
	
	$query=mysql_query("insert into tb_spbu(nama,alamat,langitude,latitude,image) values(
														'$nama',
														'$alamat',
														'$longitude',
														'$latitude',
														'$image')");
	
	
	if($query){
		?><script language="javascript">document.location.href="?page=spbu";</script><?php
	}
}

if($_GET['mode']=='update'){
	$id_spbu		= htmlentities($_POST['id_spbu']);
	$nama			= htmlentities($_POST['nama']);
	$alamat			= htmlentities($_POST['alamat']);
	$longitude		= htmlentities($_POST['langitude']);
	$latitude		= htmlentities($_POST['lotitude']);
	
	$query=mysql_query("update tb_spbu set id_spbu='$id_spbu', nama='$nama', alamat='$alamat', longitude='$longitude',latitude='$latitude'");
	
	if($query){
		?><script language="javascript">document.location.href="?page=spbu";</script><?php
	}
}

if($_GET['mode']=='edit'){
	$id_spbu=$_GET['id_spbu'];
	$edit=mysql_query("select * from tb_spbu where id_spbu='$id_spbu'");
	$data=mysql_fetch_array($edit);
	$nama=$data['nama'];
	$alamat=$data['alamat'];
	$longitude=$data['langitude'];
	$latitude=$data['latitude'];
	
}
?>
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Form Tambah Data SPBU
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                        </span>
                        </header>
                        <div class="panel-body">
                            <div class="col-lg-12">
                                <?php
								if($_GET['mode']=='edit'){
									?><form action="?page=spbu_tambah&mode=update" method="post"><?php 
								}
								else{
									?><form action="?page=spbu_tambah&mode=input" method="post">
								
								<?php
                                }
								?>
                                <div align="right">
                                
                                <a href="?page=spbu" class="btn btn-round btn-info"><i class="fa fa-eye fa-fw"></i>Lihat Data</a>	
                                </div>
                            <hr />
                            
                            </div>    
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama SPBU</label>
                                    <input type="text" class="form-control input-sm" name="nama" maxlength="16" value="<?php echo $nama; ?>">
                                </div>
                         
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Alamat SPBU</label>
                                    <input type="text" class="form-control input-sm" name="alamat" value="<?php echo $alamat; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Longitude</label>
                                    <input type="text" class="form-control input-sm" name="langitude" maxlength="16" value="<?php echo $longitude; ?>">
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Latitude</label>
                                    <input type="text" class="form-control input-sm" name="latitude" value="<?php echo $latitude; ?>">
                                </div>
                               
                        		
                                <button type="submit" name="submit" class="btn btn-round btn-success"><i class="fa fa-save fa-fw"></i>Simpan</button>
                                <a href="?page=spbu" class="btn btn-round btn-round btn-default"><i class="fa fa-undo fa-fw"></i>Batal</a>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
        </div>