<section class="content-header">
 <h1>
            Dashboard
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>SPBU</a></li>
            <li class="active">View</li>
            <li>input</li>
          </ol>
        </section>
        <section class="content">
<div class="box">
                <div class="box-header">
                  
                </div><!-- /.box-header -->
                 <div align="right">
                    <a href="?page=spbu_tambah" type="button" class="btn btn-round btn-primary"><i class="fa fa-angle-double-left fa-fw"></i>Tambah Data</a>
                    </div>
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th width="35%">Nama SPBU</th>
                        <th width="40%">Alamat</th>
                        <th width="25%">Kelola</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php
                    include "././koneksi.php";
                                    
                   $sql=mysql_query("select * from tb_spbu");
                    while($data=mysql_fetch_array($sql)){                   
                    ?>

                      <tr>
                        <td><?php echo $data['nama']; ?></td>
                        <td><?php echo $data['alamat']; ?></td>
                        <td><a href="?page=detail_spbu&id=<?php echo $data['id_spbu'];?>" class="btn btn-success"><i class="fa fa-eye fa-fw"></i>Detail</a> 
                        <a href="?page=spbu_tambah&mode=edit&id=<?php echo $data['id_spbu'];?>" class="btn btn-success"><i class="fa fa-edit fa-fw"></i>Edit</a>
                        <a class="btn btn-warning" data-toggle="modal" href="#myModal2">Hapus</a>
                        
                        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">Hapus Data</h4>
                                        </div>
                                        <div class="modal-body">

                                            Hapus Data
                                        </div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-default" type="button">Tidak</button>
                                            <a href="?page=spbu_hapus&id=<?php echo $data['id_spbu'];?>" class="btn btn-success"><i class="fa fa-edit fa-fw"></i>Hapus</a>
                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        
                        </td>
                      </tr>
                     <?php
                    }
                    ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->




        
