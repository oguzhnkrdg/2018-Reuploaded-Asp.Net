<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="randevual.aspx.cs" Inherits="HastaneOtomasyon.randevual" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head2" runat="server">
    <link href="css/ace.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageContentPlaceHolder" runat="server">
    <section class="sub-page-banner text-center" data-stellar-background-ratio="0.3">
        <div class="overlay"></div>
        <div class="container">
            <h1 class="entry-title">Randevu Alma</h1>
            <p>
                Yeni kayıt butonu, hastanemize daha önce gelmemiş hastalarımızın sistemimize kayıt olması amacıyla kullanılmaktadır.<br />
                Zaten kayıtlı iseniz sisteme giriş yaparak randevu alabilirsiniz.
            </p>
        </div>
    </section>
    <div class="container-fluid">
        <div class="well">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 ">
                    <div style="margin:30px 0 0 20px" class="page-header text-center ">
                        <h3>Oturum Açma &amp; Yenİ Kayıt İşlemlerİ</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-4 ">
                    <div>
                        <div class="form-group form-group-lg ">
                            <label for="txt_kAd " class="control-label sr-only ">Kullanıcı Adı</label>
                            <div class="input-group">
                                <span class="input-group-addon ">
                                    <i class="glyphicon glyphicon-user "></i>
                                </span>
                                <asp:TextBox ID="txt_kAd" Style="width: 100% !important; height: auto !important;" CssClass="form-control input-lg" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ControlToValidate="txt_kAd" ID="RequiredFieldValidator_kAd" runat="server" CssClass="text-danger" ErrorMessage="Kullanıcı adı boş geçilemez." Display="Dynamic" ValidationGroup="loginn"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group form-group-lg ">
                            <label for="txt_parola " class="control-label sr-only ">Parola</label>
                            <div class="input-group ">
                                <span class="input-group-addon ">
                                    <i class="glyphicon glyphicon-lock "></i>
                                </span>
                                <asp:TextBox ID="txt_parola" CssClass="form-control input-lg" placeholder="Parola" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ControlToValidate="txt_parola" ID="RequiredFieldValidator_parola" runat="server" CssClass="text-danger" ErrorMessage="Parola boş geçilemez." Display="Dynamic" ValidationGroup="loginn"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group form-group-lg ">
                            <label class="pull-left inline">
                                <input id="chkBox_RmbrMe" type="checkbox" runat="server" class="ace ace-switch ace-switch-4 btn-empty"/>
                                <span class="lbl middle"></span>
                            </label>
                        </div>

                        <div class="clearfix" style="margin-bottom: 10px;"></div>

                        <div class="form-group form-group-lg ">
                            <asp:Label ID="lblHata" runat="server" CssClass="text-danger"></asp:Label>
                        </div>
                        <div class="form-group form-group-lg ">
                            <asp:Button ID="btnSignIn" CssClass="btn btn-default btn-lg" runat="server" Text="Oturum Aç" ValidationGroup="loginn" OnClick="btnSignIn_Click" />
                            <asp:Button ID="btnRegister" Style="text-decoration:none;" CssClass="btn btn-link btn-lg" runat="server" Text="Yenİ Kayıt" PostBackUrl="~/yenikayit.aspx" />
                        </div>
                    </div>
                </div>
            </div>
            <div style="margin-bottom: 30px">&nbsp;</div>
        </div>
    </div>
</asp:Content>
