<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="images/tag.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
            <?php
            $nama=$_SESSION['nama_pengguna'];
            ?>
              <p><?php echo $nama; ?></p>
            </div>
          </div>
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active treeview">
              <a href="?page=home">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
            <li class="">
              <a href="?page=wisata">
                <i class="fa fa-location-arrow"></i> <span>WISATA</span></a></li>
            <!--<li class="">
              <a href="?page=spbu">
                <i class="fa fa-car"></i> <span>SPBU</span></a></li>
            <li class="">
              <a href="?page=atm">
                <i class="fa fa-credit-card"></i> <span>ATM</span></a></li>            
            -->
        </section>
        <!-- /.sidebar -->
      </aside>