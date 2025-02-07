﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot-pasword.aspx.cs" Inherits="LMO_G9.view.client.forgot_pasword" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Forgot Password Client Page</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Manage music online website">
    <meta name="author" content="Group 9">
    <link rel="icon" type="image/png" href="../template/images/icons/images.ico" />

    <!-- Custom fonts for this template-->
    <link href="../template/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../template/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="../template/vendor/bootstrap/css/bootstrap-datepicker.min.css" rel="stylesheet">

    <link href="../template/css/style.css" rel="stylesheet" />
</head>
<body class="bg-gradient-primary">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">Quên mật khẩu?</h1>
                                        <p class="mb-4">Chúng tôi hiểu nó, mọi thứ đều có thể xảy ra. Chỉ cần nhập tài khoản người dùng của bạn bên dưới và chúng tôi sẽ đặt lại mật khẩu của bạn về mặc định!</p>
                                    </div>
                                    <form class="user" runat="server">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtUsernameReset" runat="server" CssClass="form-control form-control-user" placeholder="Nhập tên đăng nhập của bạn ..." />
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="txtError" runat="server" Text="" CssClass="text-error" />
                                        </div>

                                        <asp:Button ID="btnResetPassword" runat="server" Text="Đặt lại mật khẩu" CssClass="btn btn-primary btn-user btn-block" OnClick="btnResetPassword_Click" />
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="signup.aspx">Đăng ký tài khoản!</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="signin.aspx">Bạn đã có tài khoản? Đăng nhập tại đây!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../template/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="../template/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../template/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../template/js/sb-admin-2.min.js"></script>
    <script src="../template/vendor/bootstrap/js/bootstrap-datepicker.min.js"></script>
</body>
</html>
