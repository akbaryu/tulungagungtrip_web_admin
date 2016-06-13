<?php
include "././koneksi.php";
include "././css/fungsi_indotgl.php";
include "././css/library.php";
include "././css/auto_number.php";

if($_GET['mode']=='input'){
	$nama			= $_POST['nama'];
	$kategori		= $_POST['kategori'];
	$alamat			= $_POST['alamat'];
	$keterangan		= $_POST['keterangan'];
	$fasilitas		= $_POST['fasilitas'];
	$langitude		= $_POST['langitude'];
	$latitude		= $_POST['latitude'];
	
	$nama_file1		= $_FILES['image']['name'];
	$nama_file2		= $_FILES['image2']['name'];
	$nama_file3		= $_FILES['image3']['name'];
	$nama_file4		= $_FILES['image4']['name'];
	$nama_file5		= $_FILES['image5']['name'];
	
	$lokasi_file1    = $_FILES['image']['tmp_name'];
  	$lokasi_file2    = $_FILES['image2']['tmp_name'];
	$lokasi_file3    = $_FILES['image3']['tmp_name'];
  	$lokasi_file4    = $_FILES['image4']['tmp_name'];
	$lokasi_file5    = $_FILES['image5']['tmp_name'];
	
	move_uploaded_file($lokasi_file1,'././images/'.$nama_file1);
	move_uploaded_file($lokasi_file2,'././images/'.$nama_file2);
	move_uploaded_file($lokasi_file3,'././images/'.$nama_file3);
	move_uploaded_file($lokasi_file4,'././images/'.$nama_file4);
	move_uploaded_file($lokasi_file5,'././images/'.$nama_file5);

	$query=mysql_query("insert into tb_wisata(nama,kategori,alamat,keterangan,fasilitas,langitude,latitude,image,image2,image3,image4,image5) 
												values(	'$nama', 
														'$kategori',
														'$alamat',
														'$keterangan',
														'$fasilitas',
														'$langitude',
														'$latitude',
														'$nama_file1',
														'$nama_file2',
														'$nama_file3',
														'$nama_file4',
														'$nama_file5')");
	
	
	if($query){
		?><script language="javascript">document.location.href="?page=wisata";</script><?php
	}
}

if($_GET['mode']=='update'){
	$id_wisata		= htmlentities($_POST['id']);
	$nama			= htmlentities($_POST['nama']);
	$kategori		= htmlentities($_POST['kategori']);
	$alamat			= htmlentities($_POST['alamat']);
	$keterangan		= htmlentities($_POST['keterangan']);
	$fasilitas		= htmlentities($_POST['fasilitas']);
	$langitude		= htmlentities($_POST['langitude']);
	$latitude		= htmlentities($_POST['latitude']);
	
	$query=mysql_query("update tb_wisata set nama='$nama', kategori='$kategori', alamat='$alamat', keterangan='$keterangan', fasilitas='$fasilitas', langitude='$langitude', latitude='$latitude' where id_wisata='$id_wisata'");
	
	if($query){
		?><script language="javascript">document.location.href="?page=penduduk";</script><?php
	}
}

if($_GET['mode']=='edit'){
	$id_wisata=$_GET['id'];
	$edit=mysql_query("select * from tb_wisata where id_wisata='$id_wisata'");
	$data=mysql_fetch_array($edit);
	$nama=$data['nama'];
	$kategori=$data['kategori'];
	$alamat=$data['alamat'];
	$keterangan=$data['keterangan'];
	$fasilitas=$data['fasilitas'];
	$langitude=$data['langitude'];
	$latitude=$data['latitude'];
	$nama_file1=$data['image'];
	
	
}
?>
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Form Tambah Data Wisata
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                        </span>
                        </header>
                        <div class="panel-body">
                            <div class="col-lg-12">
                                <?php
								if($_GET['mode']=='edit'){
									?><form action="?page=wisata_tambah&mode=update" method="post" enctype="multipart/form-data"><?php 
								}
								else{
									?><form action="?page=wisata_tambah&mode=input" method="post" enctype="multipart/form-data">
								
								<?php
                                }
								?>
                                <div align="right">
                                
                                <a href="?page=wisata" class="btn btn-round btn-info"><i class="fa fa-eye fa-fw"></i>Lihat Data</a>	
                                </div>
                            <hr />
                            
                            </div>    
                            <div class="col-lg-5" > 
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama Wisata</label>
                                    <input type="text" class="form-control input-sm" name="nama" maxlength="30" value="<?php echo $nama; ?>">
                                </div>
								<div class="form-group">
                                    <label for="exampleInputEmail1">Kategori Wisata</label>
                                    <select class="form-control input-sm" name="kategori">
                                    	  <option value="0" selected>- Pilih Kategori Wisata -</option>
                                          <option value="sejarah" <?php if($kategori=='sejarah'){ echo "selected"; } ?>>Wisata Sejarah</option>
                                          <option value="alam" <?php if($kategori=='alam'){ echo "selected"; } ?>>Wisata Alam</option>
                                          <option value="keluarga" <?php if($kategori=='keluarga'){ echo "selected"; } ?>>Wisata Keluarga</option>
                                          <option value="budaya" <?php if($kategori=='budaya'){ echo "selected"; } ?>>Wisata Budaya</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Alamat Wisata</label>
                                    <input type="text" class="form-control input-sm" name="alamat" maxlength="100" value="<?php echo $alamat; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Keterangan Wisata</label>
                                    <textarea type="text" class="form-control input-sm" name="keterangan" maxlength="500" rows="5"><?php echo $keterangan;?></textarea>
                                </div>
						<!--		<div class="form-group">
                                    <label for="exampleInputEmail1">Fasilitas Wisata</label>
                                    <textarea type="text" class="form-control input-sm" name="fasilitas" maxlength="500" rows="5" value="<?php echo $fasilitas; ?>"></textarea>
                                </div> -->
								<div class="form-group">
                                    <label for="exampleInputEmail1">Latitude</label>
                                    <input type="text" class="form-control input-sm" name="latitude" maxlength="16" value="<?php echo $latitude; ?>">
                                </div>
								<div class="form-group">
                                    <label for="exampleInputEmail1">Longitude</label>
                                    <input type="text" class="form-control input-sm" name="langitude" maxlength="16" value="<?php echo $langitude; ?>">
                                </div>
							
								<div class="form-group">
                                    <label for="exampleInputFile">File Gambar 1</label>
                                    <input type="file" id="exampleInputFile" name="image">   
                                </div>
								<div class="form-group">
                                    <label for="exampleInputFile">File Gambar 2</label>
                                    <input type="file" id="exampleInputFile" name="image2">   
                                </div>
								<div class="form-group">
                                    <label for="exampleInputFile">File Gambar 3</label>
                                    <input type="file" id="exampleInputFile" name="image3">   
                                </div>
								<div class="form-group">
                                    <label for="exampleInputFile">File Gambar 4</label>
                                    <input type="file" id="exampleInputFile" name="image4">   
                                </div>
								<div class="form-group">
                                    <label for="exampleInputFile">File Gambar 5</label>
                                    <input type="file" id="exampleInputFile" name="image5">   
                                </div>
								
                               
                        		<input type="hidden" name="id_pend" value="<?php echo $id_pend;?>">
                                <button type="submit" name="submit" class="btn btn-round btn-success"><i class="fa fa-save fa-fw"></i>Simpan</button>
                                <a href="?page=wisata" class="btn btn-round btn-round btn-default"><i class="fa fa-undo fa-fw"></i>Batal</a>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
        </div>