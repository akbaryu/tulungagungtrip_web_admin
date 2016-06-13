<?php
include"././koneksi.php";
include "././css/fungsi_indotgl.php";
include "././css/library.php";

		$id=$_GET['id'];
		
		$rm_sakit=mysql_fetch_array(mysql_query("select * from rumah_sakit where id_rmsakit='$id'"));
		
		$tgl=tgl_indo($penduduk['tgl_lahir']);
?>


        <div class="row">
            <div class="col-md-12">
                <section class="panel">
                    <div class="panel-body profile-information">
                       <div class="col-md-9">
                           <div class="profile-desk">
                               <h1><?php echo $rm_sakit['nama_rmsakit']?></h1>
                               <br />
                               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                 <tr>
                                   <td width="20%" valign="top"><strong>Alamat</strong></td>
                                   <td width="2%" valign="top"><div align="center">:</div></td>
                                   <td width="78%" valign="top"><span class="text-muted"><?php echo $rm_sakit['alamat']; ?></span></td>
                                 </tr>
                                 <tr>
                                   <td valign="top"><strong>No Telp</strong></td>
                                   <td valign="top"><div align="center">:</div></td>
                                   <td valign="top"><span class="text-muted"><?php echo $rm_sakit['telp']; ?></span></td>
                                 </tr>
                                 <tr>
                                   <td valign="top"><strong>Latitude</strong></td>
                                   <td valign="top"><div align="center">:</div></td>
                                   <td valign="top"><span class="text-muted"><?php echo $rm_sakit['latitude']; ?> , <?php echo $tgl; ?></span></td>
                                 </tr>
                                 <tr>
                                   <td valign="top"><strong>Longitude</strong></td>
                                   <td valign="top"><div align="center">:</div></td>
                                   <td valign="top"><span class="text-muted"><?php echo $rm_sakit['langitude']; ?></span></td>
                                 </tr>
                                 <tr>
                                   <td valign="top"><strong>Image</strong></td>
                                   <td valign="top"><div align="center">:</div></td>
                                   <td valign="top"><span class="text-muted"><?php echo $rm_sakit['image']; ?></span></td>
                                 </tr>
                                 
                               </table>
                               <p><br>
                         </div>
                       </div>
                       
                       <div class="col-md-3">
                           <?php
						   if($penduduk['kelamin']=='Laki-laki'){
						   ?>
                           <div class="profile-pic text-center">
                               <img src="images/male.png" height="100" width="100" alt=""/>                           
                           </div>
                           <?php
						   }
						   else{
						   ?>
                           <div class="profile-pic text-center">
                               <img src="images/female.png" height="100" width="100" alt=""/>                           
                           </div>
                           <?php
						   }
						   ?>
                       </div>
                    </div>
                </section>
            </div>
            
        </div>
        <button type="button" class="btn btn-round btn-default" onclick="self.history.back()"><i class="fa fa-angle-double-left fa-fw"></i>Kembali</button>