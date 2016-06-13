

        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        Data Rumah Sakit
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                    </header>
                    <div class="panel-body">
                    <div class="adv-table">
                    <div align="right">
                    <a href="?page=penduduk_tambah" type="button" class="btn btn-round btn-default"><i class="fa fa-angle-double-left fa-fw"></i>Tambah Data</a>
                    </div>
                <!--    <a href="media.php?page=penduduk_tambah" class="btn btn-round btn-primary tooltips" data-placement="top" data-toggle="tooltip" 
   title="Tooltip on left"><i class="fa fa-plus fa-fw"></i>Tambah Data</a> -->
   					<hr />
                    <table  class="display table table-bordered table-striped" id="dynamic-table">
                    <thead>
                    <tr>
                        <th>ID Rumah Sakit</th>
                        <th>Nama Rumah Sakit</th>
                        <th>Alamat</th>
                        <th>Kelola</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
					include "././koneksi.php";
									
					$sql=mysql_query("select * from rumah_sakit");
					while($data=mysql_fetch_array($sql)){					
					?>
                    
                    <tr class="gradeU">
                        <td><?php echo $data['id_rmsakit']; ?></td>
                        <td><?php echo $data['nama_rmsakit']; ?></td>
                        <td><?php echo $data['alamat']; ?></td>
                        <td>
                        <a href="?page=detail_rumah_sakit&id=<?php echo $data['id_rmsakit'];?>" class="btn btn-success"><i class="fa fa-eye fa-fw"></i>Detail</a> 
                        <a href="?page=penduduk_tambah&mode=edit&id=<?php echo $data['id_rmsakit'];?>" class="btn btn-success"><i class="fa fa-edit fa-fw"></i>Edit</a>
                        </td>
                    </tr>
                    <?php
					}
					?>
                    </tbody>
                    </table>
                    </div>
                    </div>
                </section>
            </div>
        </div>