<section class="content-header">
 <h1>
            Dashboard
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Wisata</a></li>
            <li class="active">View</li>
            <li>input</li>
          </ol>
        </section>
        <section class="content">
<div class="box">
                <div class="box-header">
                  
                </div><!-- /.box-header -->
                 <div align="right">
                    <a href="?page=wisata_tambah" type="button" class="btn btn-round btn-primary"><i class="fa fa-angle-double-right fa-fw"></i>Tambah Data</a>
                    </div>
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th width="65%">Nama Wisata</th>
                        <th width="10%">Kategori Wisata</th>
                        <th width="25%">Kelola</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php
                    include "././koneksi.php";
                                    
                    $sql=mysql_query("select * from tb_wisata");
                    while($data=mysql_fetch_array($sql)){                   
                    ?>
                      <tr>
                        <td><?php echo $data['nama']; ?></td>
                        <td><?php echo $data['kategori']; ?></td>
                        <td>
                        <a href="?page=detail_wisata&id=<?php echo $data['id_wisata'];?>" class="btn btn-success"><i class="fa fa-eye fa-fw"></i>Detail</a> 
                        <a href="?page=wisata_tambah&mode=edit&id=<?php echo $data['id_wisata'];?>" class="btn btn-success"><i class="fa fa-edit fa-fw"></i>Edit</a>
                        <a class="btn btn-warning" data-toggle="modal" href="#myModal2"><i class="fa fa-ban fa-fw"></i>Hapus</a>
                        
                        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">Hapus Data</h4>
                                        </div>
                                        <div class="modal-body">

                                            Hapus Data Wisata

                                        </div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-default" type="button">Tidak</button>
                                            <a href="?page=wisata_hapus&id=<?php echo $data['id_wisata'];?>" class="btn btn-success"><i class="fa fa-edit fa-fw"></i>Hapus</a>
                        
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




        