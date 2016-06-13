<?php
include"././koneksi.php";

    $id=$_GET['id'];
    
    $spbu=mysql_fetch_array(mysql_query("select * from tb_wisata where id_wisata='$id'"));
    
    
?>


 <section class="content-header">
          <h1>
            Dashboard
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>

        <!-- Main content -->
        <!-- Main content -->
        <section class="content">
          <!-- Info boxes -->
            
              <div class="box">
               <div class="panel-body">
                    <table width="100%" border="0" cellspacing="3" cellpadding="3">
                    <tr>
                      <td height="79" colspan="2">
                        <div align="center">
                          <strong>
                          <h1 style="text-transform:uppercase"><?php echo $spbu['nama']; ?></h1>
                          </strong>
                        </div>
                      </td>
                    </tr>

                    <tr>
                      <td width="40%" rowspan="2">
                        <div>
                              <label>ID WISATA :</label>
                              <p><span class="text-muted"><?php echo $spbu['id_wisata']; ?></span>
                            </div><!-- /.form-group -->
                           <div >
                              <label>ALAMAT :</label>
                              <p><span class="text-muted"><?php echo $spbu['alamat']; ?></span>
                            </div><!-- /.form-group -->
                            <div >
                                <label for="exampleInputEmail1">Latitude :</label>
                                <p><span class="text-muted"><?php echo $spbu['latitude']; ?></span>
                            </div>
                            <div>
                                <label for="exampleInputEmail1">Longitude :</label>
                                <p><span class="text-muted"><?php echo $spbu['langitude']; ?></span>
                            </div>
                          </div><!-- /.col -->
                      </td>
                      
                    </tr>
                    <tr>
                      <td width="60%" >
                        <div>
                                  <label for="exampleInputEmail1">Keterangan :</label>
                                  <p><span class="text-muted"><?php echo $spbu['keterangan']; ?></span>
                              </div>
                      </td>  
                    
                  </tr>
                  
                  
                  </table>
                        <tr>
                        <td valign="top"><img src="././images/<?php echo $spbu['image']; ?>" height="100" width="140"></td>
                        <td valign="top"><img src="././images/<?php echo $spbu['image2']; ?>" height="100" width="140"></td>
                        <td valign="top"><img src="././images/<?php echo $spbu['image3']; ?>" height="100" width="140"></td>
                        <td valign="top"><img src="././images/<?php echo $spbu['image4']; ?>" height="100" width="140"></td>
                        <td valign="top"><img src="././images/<?php echo $spbu['image5']; ?>" height="100" width="140"></td>
                        </tr>
                  <br/>
                  <br/><br/>
                  <button type="button" class="btn btn-round btn-primary" onclick="self.history.back()"><i class="fa fa-angle-double-left fa-fw"></i>Kembali</button>
                </div>
                              
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->