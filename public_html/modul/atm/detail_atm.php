<?php
include"././koneksi.php";
		$id=$_GET['id'];
		
		$spbu=mysql_fetch_array(mysql_query("select * from tb_atm where id_atm='$id'"));
?>

<section class="content-header">
          <h1>
           ATM
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>DASBOARD</a></li>
            <li class="active">ATM</li>
           <li>view</li>
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
                          <h1 style="text-transform:uppercase"><?php echo $spbu['nama']?></h1>
                          </strong>
                        </div>
                      </td>
                    </tr>

                    <tr>
                       <td width="40%" rowspan="2">
                        <div>
                              <label>ALAMAT :</label>
                              <p><span class="text-muted"><?php echo $spbu['alamat']; ?></span>
                            </div><!-- /.form-group -->
                           <div >
                              <label>Latitude:</label>
                              <p><?php echo $spbu['latitude']; ?></span></span>
                            </div><!-- /.form-group -->
                            <div >
                                <label for="exampleInputEmail1">Langitude :</label>
                                <p><span class="text-muted"><?php echo $spbu['langitude']; ?></span>
                            </div>
                          </div><!-- /.col -->
                      </td>
                      
                    </tr>
                    <tr>
                      <td width="60%" >
                        <div>
                                  <label for="exampleInputEmail1">Gambar :</label>
                                  <p><span class="text-muted"><img src="././images/<?php echo $spbu['image']; ?>" height="140" width="140"></span>
                              </div>
                      </td>  
                    
                  </tr>
                  
                  
                  </table>
                  <br/>
                  <br/><br/>
                  <button type="button" class="btn btn-round btn-primary" onclick="self.history.back()"><i class="fa fa-angle-double-left fa-fw"></i>Kembali</button>
                </div>
                              
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->


       