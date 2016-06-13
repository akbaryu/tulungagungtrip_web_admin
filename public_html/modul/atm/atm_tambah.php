<?php
include "././koneksi.php";

if($_GET['mode']=='input'){
	$nama			= $_POST['nama'];
	$kategori		= $_POST['kategori'];
	$alamat			= $_POST['alamat'];
	$langitude		= $_POST['langitude'];
	$latitude		= $_POST['latitude'];

	$query=mysql_query("insert into tb_atm(nama,kategori,alamat,langitude,latitude) 
												values(	'$nama', 
														'$kategori',
														'$alamat',
														'$langitude',
														'$latitude')");
	
	
	if($query){
		?><script language="javascript">document.location.href="?page=atm";</script><?php
	}
}

if($_GET['mode']=='update'){
	$id_atm		= htmlentities($_POST['id']);
	$nama			= htmlentities($_POST['nama']);
	$kategori		= htmlentities($_POST['kategori']);
	$alamat			= htmlentities($_POST['alamat']);
	$langitude		= htmlentities($_POST['langitude']);
	$latitude		= htmlentities($_POST['latitude']);
	
	$query=mysql_query("update tb_atm set nama='$nama', kategori='$kategori', alamat='$alamat', langitude='$langitude', latitude='$latitude' where id_atm='$id_atm'");
	
	if($query){
		?><script language="javascript">document.location.href="?page=atm";</script><?php
	}
}

if($_GET['mode']=='edit'){
	$id_atm=$_GET['id'];
	$edit=mysql_query("select * from tb_atm where id_atm='$id_atm'");
	$data=mysql_fetch_array($edit);
	$nama=$data['nama'];
	$kategori=$data['kategori'];
	$alamat=$data['alamat'];
	$keterangan=$data['keterangan'];
	$fasilitas=$data['fasilitas'];
	$langitude=$data['langitude'];
	$latitude=$data['latitude'];
	
	
}
?>
 <section class="content-header">
		   <h1>
            ATM
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">ATM</li>
            <li>input</li>
          </ol>
        </section>
        <section class="content">
            <div class="col-lg-12">
                    <section class="panel">
                        <div class="panel-body">
                            <div class="col-lg-12">
                                 <?php
								if($_GET['mode']=='edit'){
									?><form action="?page=atm_tambah&mode=update" method="post" enctype="multipart/form-data"><?php 
								}
								else{
									?><form action="?page=atm_tambah&mode=input" method="post" enctype="multipart/form-data">
								
								<?php
                                }
								?>
                                <div align="right">
                                
                                <a href="?page=atm" class="btn btn-round btn-info"><i class="fa fa-eye fa-fw"></i>Lihat Data</a>	
                                </div>
                            <hr />
                            
                            </div>    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama NAMA</label>
                                    <input type="text" class="form-control input-sm" name="nama" maxlength="16" value="<?php echo $nama; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Kategori ATM</label>
                                    <select class="form-control input-sm" name="kategori">
                                    	  <option value="0" selected>- Pilih Kategori ATM -</option>
                                          <option value="BNI" <?php if($kategori=='sejarah'){ echo "selected"; } ?>>BNI</option>
                                          <option value="BRI" <?php if($kategori=='alam'){ echo "selected"; } ?>>BRI</option>
                                          <option value="Bank Jatim" <?php if($kategori=='keluarga'){ echo "selected"; } ?>>Bank Jatim</option>
                                          <option value="BCA" <?php if($kategori=='budaya'){ echo "selected"; } ?>>BCA</option>
										  <option value="Bank Jatim" <?php if($kategori=='budaya'){ echo "selected"; } ?>>Bank Jatim</option>
                                    </select>
                                </div>
                         
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Alamat ATM</label>
                                    <input type="text" class="form-control input-sm" name="alamat" value="<?php echo $alamat; ?>">
                                </div>
                             </div>
                             <div class="col-md-6">
                               <div class="form-group">
                                    <label for="exampleInputEmail1">Latitude</label>
                                    <input type="text" class="form-control input-sm" name="latitude" maxlength="16" value="<?php echo $latitude; ?>">
                                </div>
								<div class="form-group">
                                    <label for="exampleInputEmail1">Longitude</label>
                                    <input type="text" class="form-control input-sm" name="langitude" maxlength="16" value="<?php echo $langitude; ?>">
                                </div>
								<div class="form-group">
                                    <label for="exampleInputFile">File Gambar</label>
                                    <input type="file" id="exampleInputFile" name="image">   
                                </div>
                               
                        		</div>
                        	<div align="right">
                                <button type="submit" name="submit" class="btn btn-round btn-success"><i class="fa fa-save fa-fw"></i>Simpan</button>
                                <a href="?page=spbu" class="btn btn-round btn-round btn-default"><i class="fa fa-undo fa-fw"></i>Batal</a>
                            </form>
                            </div>
                            

                        </div>
                    </section>

            </div>
        </div>



