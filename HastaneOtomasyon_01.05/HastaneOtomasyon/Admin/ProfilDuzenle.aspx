<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ProfilDuzenle.aspx.cs" Inherits="HastaneOtomasyon.Admin.ProfilDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/yenikayit.css" rel="stylesheet" />
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="PageContentPlaceHolder" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 ">
                <div class="page-header text-center">
                    <h2>Profil Düzenleme</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-3 ">
                <div class="form-horizontal">
                                        <div class="form-group">
                        <label for="txt_tcKimlik " class="col-md-3 control-label ">T.C. Kimlik No</label>
                        <div class="col-md-7 ">
                            <asp:TextBox ID="txt_tcKimlik" CssClass="form-control" placeholder="T.C. Kimlik No" runat="server" Enabled="False"></asp:TextBox>
                        </div>
                        <div class="col-md-1 ">
                            <asp:RequiredFieldValidator ControlToValidate="txt_tcKimlik" ID="RequiredFieldValidator_txt_tcKimlik" runat="server" CssClass="text-danger" ErrorMessage="T.C. Kimlik No bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="update">*</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txt_adSoyad " class="col-md-3 control-label ">Ad Soyad</label>
                        <div class="col-md-7 ">
                            <asp:TextBox ID="txt_adSoyad" CssClass="form-control" placeholder="Ad Soyad" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-1 ">
                            <asp:RequiredFieldValidator ControlToValidate="txt_adSoyad" ID="RequiredFieldValidator_txt_adSoyad" runat="server" CssClass="text-danger" ErrorMessage="Ad soyad bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="update">*</asp:RequiredFieldValidator>
                        </div>
                    </div>



                    <div class="form-group">
                        <label for="txt_tel" class="col-md-3 control-label ">Tel</label>
                        <div class="col-md-7 ">
                            <asp:TextBox ID="txt_tel" CssClass="form-control" placeholder="Tel" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-1 ">
                            <asp:RequiredFieldValidator ControlToValidate="txt_tel" ID="RequiredFieldValidator_txt_tel" runat="server" CssClass="text-danger" ErrorMessage="Telefon bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="update">*</asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txt_eMail" class="col-md-3 control-label ">Email</label>
                        <div class="col-md-7 ">
                            <asp:TextBox ID="txt_eMail" CssClass="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="col-md-1 ">
                            <asp:RequiredFieldValidator ControlToValidate="txt_eMail" ID="RequiredFieldValidator_txt_eMail" runat="server" CssClass="text-danger" ErrorMessage="Email bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="update">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatortxt_eMail" runat="server" ErrorMessage="@ ve . işaretlerini içeren geçerli bir eposta adresi giriniz. " CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="update" ControlToValidate="txt_eMail">*</asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txt_dTrh" class="col-md-3 control-label ">Doğum Tarihi</label>
                        <div class="col-md-7 ">
                            <asp:TextBox ID="txt_dTrh" CssClass="form-control" placeholder="Doğum Tarihi" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="col-md-1 ">
                            <asp:RequiredFieldValidator ControlToValidate="txt_dTrh" ID="RequiredFieldValidator_txt_dTrh" runat="server" CssClass="text-danger" ErrorMessage="Doğum Tarihi bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="update">*</asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-3 control-label ">
                            Cinsiyet                           
                        </label>
                        <div class="Form-section">
                            <div class="col-md-7 ">
                                <label class="Form-label--tick control-label">
                                    <input type="radio" id="rdbtn_cnsyt1" name="SomeRadio" class="Form-label-radio" runat="server" />
                                    <span class="Form-label-text control-label">Erkek
                                    </span>
                                </label>
                                <label class="Form-label--tick control-label">
                                    <input type="radio" id="rdbtn_cnsyt2" name="SomeRadio" class="Form-label-radio" runat="server" />
                                    <span class="Form-label-text control-label">Kadın
                                    </span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lbl_Hata" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-3 col-md-7">
                            <asp:Button ID="btnUpdate" CssClass="btn btn-info" runat="server" Text="Güncelle" ValidationGroup="update" OnClick="btnUpdate_Click" />

                        </div>

                    </div>

                    <div class="clearfix"></div>

                    <div class="form-group">
                        <div class="col-md-offset-3 col-md-7">
                            <asp:ValidationSummary Style="padding-top: 10px;" ID="ValidationSummary_update" runat="server" ValidationGroup="update" CssClass="text-danger" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="margin-bottom: 30px">&nbsp;</div>
    </div>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="scriptContentPlaceHolder" runat="server">
</asp:Content>
