<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="kireeye.login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminLTE 3 | Log in</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"/>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css"/>
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css"/>
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css"/>
    <style>
        .card-body img{
            width:100px;
            height:100px;
            margin-left:35%;
            border-radius:50px;
            margin-top:20px;
            margin-bottom:20px;
        }
    </style>
</head>
<body class="hold-transition login-page">
    
      <div class="login-box">
        <div class="login-logo">
            <a href="#"><b>CS21G PROJECT</b></a>
        </div>
        <!-- /.login-logo -->
        <div class="card">
            <div class="card-body login-card-body">
                <img src="dist/img/avatar.png" alt="Alternate Text" />
                <p class="login-box-msg">Please Enter Username & Password</p>

              <form id="form1" runat="server">
                    <div class="input-group mb-3">
                        <asp:TextBox ID="txtuname" CssClass="form-control" placeholder="Username" AutoComplete="off" autofocus="" required="" runat="server"></asp:TextBox>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <asp:TextBox ID="txtpassword" CssClass="form-control" TextMode="Password" placeholder="Password" required="" runat="server"></asp:TextBox>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <p>Forget Password?</p>
                        </div>
                        <!-- /.col -->
                        <div class="col-4">
                            <asp:Button ID="btnlogin" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="btnlogin_Click" />

                        </div>
                        <!-- /.col -->
                    </div>
                  <asp:Label ID="lblinfo" CssClass="btn btn-danger" Style="width:100%; margin-top:10px" runat="server"></asp:Label>
                </form>

              
             
            </div>
            <!-- /.login-card-body -->
        </div>
    </div>


<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
</body>
</html>

