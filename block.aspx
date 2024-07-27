<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="block.aspx.cs" Inherits="kireeye.block" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
 <meta name="viewport" content="width=device-width, initial-scale=1"/>
 <title>KIREEYE</title>

 <!-- Google Font: Source Sans Pro -->
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"/>
 <!-- Font Awesome -->
 <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css"/>
 <!-- Ionicons -->
 <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"/>
 <!-- Tempusdominus Bootstrap 4 -->
 <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css"/>
 <!-- iCheck -->
 <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css"/>
 <!-- JQVMap -->
 <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css"/>
 <!-- Theme style -->
 <link rel="stylesheet" href="dist/css/adminlte.min.css"/>
 <!-- overlayScrollbars -->
 <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css"/>
 <!-- Daterange picker -->
 <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css"/>
 <!-- summernote -->
 <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css"/>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    
      <div class="wrapper">

  

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index.aspx" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="dashboard.aspx" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">KIREEYE</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Admins</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
            <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Admin Area
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-info right">2</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="users.aspx" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create Users</p>
                </a>
              </li>
              </ul>
                         <ul class="nav nav-treeview">
             <li class="nav-item">
                  <a href="Users.aspx" class="nav-link">
             <i class="far fa-circle nav-icon"></i>
             <p>UsersTables</p>
         </a>
     </li>
              
  </ul>
            </li>
               
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="container-fluid">
            <form id="form1" runat="server">
            <div class="row">
                
                    <div class="col-4">
                        <div class="card card-primary">
             <div class="card-header">
                    <h3 class="card-title">Users</h3>
                 </div>
             <!-- /.card-header -->
              <!-- form start -->
            
            <div class="card-body">
    
                
                   <div UserName="form-group">
             <label >block name</label>
               <asp:TextBox ID="txtusername" CssClass="form-control" placeholder="block name"  required="" runat="server"></asp:TextBox>
            </div>
   
        <div class="form-group">
            <label>date</label>
           < <asp:TextBox ID="txtrole" CssClass="form-control" placeholder="Date"  required=""  runat="server" TextMode="Date"></asp:TextBox>
        </div>
            
      </div>

    <!-- /.card-body -->
            <asp:Label ID="lblinfo" CssClass="btn btn-success" runat="server"></asp:Label>
            
              <div class="card-footer">
              <asp:Button ID="btnragistrion" CssClass="btn btn-primary"  runat="server" Text="ragistration" OnClick="btnragistrion_Click"/>
              <asp:Button ID="btnupdate" CssClass="btn btn-success"  runat="server" Text="Update" OnClick="btnupdate_Click"   />
              <asp:Button ID="btndelete" CssClass="btn btn-danger"  runat="server" Text="Delete" OnClick="btndelete_Click"  />
             <div class="row">
             <div class="col-9">
            <asp:TextBox ID="txtid" CssClass="form-control" runat="server"></asp:TextBox>
             </div>
           <div class="col-2">
            <asp:Button ID="btnsearch" CssClass="btn btn-info" formnovalidate runat="server" Text="Search" CausesValidation="False" OnClick="btnsearch_Click"    />
              </div>
             </div>
             </div>


                 </div>
                    </div>
            <div class="col-8"> 
             <div class="card card-primary">
              <div class="card-header">
                  <h3 class="card-title">Users Table</h3>
             </div>
              <!-- /.card-header -->
             <div class="card-body">
                <asp:GridView ID="usersdgv"  CssClass="tabel table-bordered" AutoGenerateColumns="false"  runat ="server">
                    <Columns>
                        <asp:BoundField DataField="block_id" HeaderText="block_id" />
                       
                        <asp:BoundField DataField="block_name" HeaderText="block name" />
                       
                        <asp:BoundField DataField="date" HeaderText="date" />
                    </Columns>
                </asp:GridView>
            </div>
                 </div>
            
           </div>
                </form>
        </div>
    
       
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2014-2021 021 <a href="https://adminlte.io">KIREEYE</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.2.0
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


    </form>
    <!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
</body>
</html>


