<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HastaRndOzet.aspx.cs" Inherits="HastaneOtomasyon.Admin.HastaRndOzet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/font-awesome/4.2.0/css/font-awesome.min.css" />

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="assets/css/jquery-ui.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="assets/fonts/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link href="assets/css/ace.min.css" rel="stylesheet" />
    <!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->

    <!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="assets/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 ">
                <div class="page-header text-center">
                    <h2>Randevu Özet</h2>
                    <h4>Bilgilerin doğruluğundan eminseniz! Randevunuzu onaylayabilirsiniz.</h4>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-3 ">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label for="txt_Tarih " class="col-md-3 control-label ">Randevu Tarihi</label>
                        <div class="col-md-7 ">
                            <asp:TextBox ID="txt_Tarih" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txt_Rsaat " class="col-md-3 control-label ">Randevu Saati</label>
                        <div class="col-md-7 ">
                            <asp:TextBox ID="txt_Rsaat" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txt_Bolum " class="col-md-3 control-label ">Bölüm</label>
                        <div class="col-md-7 ">
                            <asp:TextBox ID="txt_Bolum" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txt_Doktor" class="col-md-3 control-label ">Doktor</label>
                        <div class="col-md-7 ">
                            <asp:TextBox ID="txt_Doktor" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txt_AdSoyad" class="col-md-3 control-label ">Hasta Ad Soyad</label>
                        <div class="col-md-7 ">
                            <asp:TextBox ID="txt_AdSoyad" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lbl_Hata" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-3 col-md-7">
                            <asp:Button ID="btnOnay" CssClass="btn btn-info" runat="server" Text="Onay"  />
                            
                        </div>
                    </div>

                    <div class="clearfix"></div>
               </div>
            </div>
        </div>
        <div style="margin-bottom: 30px">&nbsp;</div>
    </div>

         <!-- basic scripts -->

            <!--[if !IE]> -->
            <script src="assets/js/jquery.2.1.1.min.js"></script>

            <!-- <![endif]-->

            <!--[if IE]>
<script src="assets/js/jquery.1.11.1.min.js"></script>
<![endif]-->

            <!--[if !IE]> -->
            <script type="text/javascript">
                window.jQuery || document.write("<script src='assets/js/jquery.min.js'>" + "<" + "/script>");
            </script>

            <!-- <![endif]-->

            <!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
            <script type="text/javascript">
                if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
            </script>
            <script src="assets/js/bootstrap.min.js"></script>

            <!-- page specific plugin scripts -->

            <!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
            <script src="assets/js/jquery-ui.custom.min.js"></script>
            <script src="assets/js/jquery.ui.touch-punch.min.js"></script>
            <!-- ace scripts -->
            <script src="assets/js/ace-elements.min.js"></script>
            <script src="assets/js/ace.min.js"></script>

    </div>
    </form>
</body>
</html>
