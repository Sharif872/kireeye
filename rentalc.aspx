<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rentalc.aspx.cs" Inherits="kireeye.rentalc" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>kireeye</title>

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
    <style>
        body{
            background:grey;
        }
        .container{
            background:white;
            height:900px;
        }
        img{
           
            width:100%;
            height:250px;
        }
      
    </style>
</head>
<body onload="window.print()">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                
                    <img src="dist/img/img1.jpg"  alt="Alternate Text" />
                    <h1 class="text-center">Rental Reports</h1>
              

            </div>
            <div class="card-body">
                <asp:GridView ID="GridView1" CssClass="table table-bordered" style="width:100%" AutoGenerateColumns="false" runat="server">
                    <Columns>
                              <asp:BoundField DataField="rental_id" HeaderText="rental id"/>
   <asp:BoundField DataField="room_number" HeaderText="room"/>
   <asp:BoundField DataField="name" HeaderText="customer"/>
   <asp:BoundField DataField="rental_date" HeaderText="Rental Start Date"/>
<asp:BoundField DataField="return_date" HeaderText="Rental End Date"/>

                       </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
