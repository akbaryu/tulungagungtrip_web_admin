<?php
include"././koneksi.php";
include "././css/fungsi_indotgl.php";
include "././css/library.php";

		$id=$_GET['id'];
		
		$spbu=mysql_fetch_array(mysql_query("select * from tb_spbu where id_spbu='$id'"));
		
		$tgl=tgl_indo($penduduk['tgl_lahir']);
?>


        <div class="row">
            <div class="col-md-12">
                <section class="panel">
                    <div class="panel-body profile-information">
                       <div class="col-md-9">
                           <div class="profile-desk">
                               <h1><?php echo $spbu['nama']?></h1>
                               <br />
                               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                 <tr>
                                   <td valign="top"><strong>ID SPBU</strong></td>
                                   <td valign="top"><div align="center">:</div></td>
                                   <td valign="top"><span class="text-muted"><?php echo $spbu['id_spbu']; ?></span></td>
                                 </tr>
								 

								<tr>
                                   <td width="20%" valign="top"><strong>Alamat</strong></td>
                                   <td width="2%" valign="top"><div align="center">:</div></td>
                                   <td width="78%" valign="top"><span class="text-muted"><?php echo $spbu['alamat']; ?></span></td>
                                 </tr>
                                
                                 <tr>
                                   <td valign="top"><strong>Latitude</strong></td>
                                   <td valign="top"><div align="center">:</div></td>
                                   <td valign="top"><span class="text-muted"><?php echo $spbu['latitude']; ?> , <?php echo $tgl; ?></span></td>
                                 </tr>
                                 <tr>
                                   <td valign="top"><strong>Longitude</strong></td>
                                   <td valign="top"><div align="center">:</div></td>
                                   <td valign="top"><span class="text-muted"><?php echo $spbu['langitude']; ?></span></td>
                                 </tr>
                                 
								 <tr>
									<td valign="top"><strong>Gambar</strong></td>
                                   <td valign="top"><div align="center">:</div></td>
									<td valign="top"><img src="././images/<?php echo $spbu['image']; ?>" height="140" width="140"></td>
                                 </tr>
								 
                               </table>
							   
							   
                               <p><br>
                         </div>
                       </div>
                       
                      
                    </div>
                </section>
            </div>
            
        </div>
        <button type="button" class="btn btn-round btn-default" onclick="self.history.back()"><i class="fa fa-angle-double-left fa-fw"></i>Kembali</button>