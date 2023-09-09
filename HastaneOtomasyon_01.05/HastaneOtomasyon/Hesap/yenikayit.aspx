<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="yenikayit.aspx.cs" Inherits="HastaneOtomasyon.Hesap.yenikayit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head2" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/yenikayit.css" rel="stylesheet" />
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="PageContentPlaceHolder" runat="server">
    <section class="sub-page-banner text-center" data-stellar-background-ratio="0.3">
        <div class="overlay"></div>
        <div class="container">
            <h1 class="entry-title">Yenİ Kayıt Olma</h1>
            <p>
                Bu sayfa, hastanemize daha önce gelmemiş hastalarımızın sistemimize kayıt olmaları amacıyla kullanılmaktadır.
            </p>
        </div>
    </section>
    <div class="container-fluid">
        <div class="well">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 ">
                    <div class="page-header text-center">
                        <h3>Yenİ Kayıt İşlemlerİ</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3 ">
                    <div class="form-horizontal">
                        <div class="form-group form-group-lg ">
                            <label for="txt_kAd " class="col-md-3 control-label "><span style="font-size: 1.1em !important; font-weight: 300 !important; color: #626262 !important;">Kullanıcı Adı</span></label>
                            <div class="col-md-7 ">
                                <asp:TextBox ID="txt_kAd" Style="width: 95% !important; height: auto !important;"
                                    CssClass="form-control input-lg" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_kAd" ID="RequiredFieldValidator_kAd" runat="server" CssClass="text-danger" ErrorMessage="Kullanıcı adı boş geçilemez." Display="Dynamic" ValidationGroup="register">*</asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group form-group-lg ">
                            <label for="txt_parola " class="col-md-3 control-label "><span style="font-size: 1.1em !important; font-weight: 300 !important; color: #626262 !important;">Parola</span></label>
                            <div class="col-md-7 ">
                                <asp:TextBox ID="txt_parola" Style="width: 95% !important; height: auto !important;"
                                    CssClass="form-control input-lg" placeholder="Parola" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_parola" ID="RequiredFieldValidator_parola" runat="server" CssClass="text-danger" ErrorMessage="Parola boş geçilemez." Display="Dynamic" ValidationGroup="register">*</asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group form-group-lg ">
                            <label for="txt_parolaTekrar" class="col-md-3 control-label "><span style="font-size: 1.1em !important; font-weight: 300 !important; color: #626262 !important;">Parola Tekrar</span></label>
                            <div class="col-md-7 ">
                                <asp:TextBox ID="txt_parolaTekrar" Style="width: 95% !important; height: auto !important;"
                                    CssClass="form-control input-lg" placeholder="Parola Tekrar" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_parolaTekrar" ID="RequiredFieldValidator_txt_parolaTekrar" runat="server" CssClass="text-danger" ErrorMessage="Parola Tekrar boş geçilemez." Display="Dynamic" ValidationGroup="register">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ControlToValidate="txt_parolaTekrar" ID="CompareValidator_txt_parolaTekrar" ValidationGroup="register" ErrorMessage="Parola ve tekrarı eşleşmedi." runat="server" Display="Dynamic" CssClass="text-danger" ControlToCompare="txt_parola">*</asp:CompareValidator>
                            </div>
                        </div>

                        <div class="form-group form-group-lg ">
                            <label for="txt_adSoyad " class="col-md-3 control-label "><span style="font-size: 1.1em !important; font-weight: 300 !important; color: #626262 !important;">Ad Soyad</span></label>
                            <div class="col-md-7 ">
                                <asp:TextBox ID="txt_adSoyad" Style="width: 95% !important; height: auto !important;"
                                    CssClass="form-control input-lg" placeholder="Ad Soyad" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_adSoyad" ID="RequiredFieldValidator_txt_adSoyad" runat="server" CssClass="text-danger" ErrorMessage="Ad soyad bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="register">*</asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group form-group-lg ">
                            <label for="txt_tcKimlik " class="col-md-3 control-label "><span style="font-size: 1.1em !important; font-weight: 300 !important; color: #626262 !important;">T.C. Kimlik No</span></label>
                            <div class="col-md-7 ">
                                <asp:TextBox ID="txt_tcKimlik" Style="width: 95% !important; height: auto !important;"
                                    CssClass="form-control input-lg" placeholder="T.C. Kimlik No" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_tcKimlik" ID="RequiredFieldValidator_txt_tcKimlik" runat="server" CssClass="text-danger" ErrorMessage="T.C. Kimlik No bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="register">*</asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group form-group-lg ">
                            <label for="txt_tel" class="col-md-3 control-label "><span style="font-size: 1.1em !important; font-weight: 300 !important; color: #626262 !important;">Tel</span></label>
                            <div class="col-md-7 ">
                                <asp:TextBox ID="txt_tel" Style="width: 95% !important; height: auto !important;"
                                    CssClass="form-control input-lg" placeholder="Tel" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_tel" ID="RequiredFieldValidator_txt_tel" runat="server" CssClass="text-danger" ErrorMessage="Telefon bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="register">*</asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group form-group-lg ">
                            <label for="txt_eMail" class="col-md-3 control-label "><span style="font-size: 1.1em !important; font-weight: 300 !important; color: #626262 !important;">Email</span></label>
                            <div class="col-md-7 ">
                                <asp:TextBox ID="txt_eMail" Style="width: 95% !important; height: auto !important;"
                                    CssClass="form-control input-lg" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_eMail" ID="RequiredFieldValidator_txt_eMail" runat="server" CssClass="text-danger" ErrorMessage="Email bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="register">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatortxt_eMail" runat="server" ErrorMessage="@ ve . işaretlerini içeren geçerli bir eposta adresi giriniz. " CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="register" ControlToValidate="txt_eMail">*</asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="form-group form-group-lg ">
                            <label for="txt_dTrh" class="col-md-3 control-label "><span style="font-size: 1.1em !important; font-weight: 300 !important; color: #626262 !important;">Doğum Tarihi</span></label>
                            <div class="col-md-7 ">
                                <asp:TextBox ID="txt_dTrh" Style="width: 95% !important; height: auto !important;"
                                    CssClass="form-control input-lg" placeholder="Doğum Tarihi" runat="server" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_dTrh" ID="RequiredFieldValidator_txt_dTrh" runat="server" CssClass="text-danger" ErrorMessage="Doğum Tarihi bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="register">*</asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group form-group-lg ">
                            <label class="col-md-3 control-label ">
                                <span style="font-size: 1.1em !important; font-weight: 300 !important; color: #626262 !important;">Cinsiyet
                                </span>
                            </label>
                            <div class="Form-section">
                                <div class="col-md-7 ">
                                    <label class="Form-label--tick">
                                        <input type="radio" id="rdbtn_cnsyt1" name="SomeRadio" class="Form-label-radio" checked runat="server"/>
                                        <span class="Form-label-text control-label" style="font-size: 1.1em !important; font-weight: 300 !important; color: #626262 !important;">Erkek
                                </span>                                        
                                    </label>
                                    <label class="Form-label--tick">
                                        <input type="radio" id="rdbtn_cnsyt2" name="SomeRadio" class="Form-label-radio" runat="server"/>
                                        <span class="Form-label-text control-label" style="font-size: 1.1em !important; font-weight: 300 !important; color: #626262 !important;">Kadın
                                </span>                                        
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group form-group-lg ">
                            <asp:Label ID="lbl_Hata" runat="server" CssClass="text-danger"></asp:Label>
                        </div>
                        <div class="form-group form-group-lg ">
                            <div class="col-md-offset-3 col-md-7">
                                <asp:Button ID="btnRegister" CssClass="btn btn-default btn-lg" runat="server" Text="Kaydet" ValidationGroup="register" OnClick="btnRegister_Click" />
                                <asp:Button ID="btnSignIn" Style="text-decoration:none;" CssClass="btn btn-link btn-lg" runat="server" Text="Oturum Aç" PostBackUrl="~/Hesap/randevual.aspx" />
                            </div>

                        </div>

                        <div class="clearfix"></div>

                        <div class="form-group form-group-lg ">
                            <div class="col-md-offset-3 col-md-7">
                                <asp:ValidationSummary Style="padding-top: 10px;" ID="ValidationSummary_register" runat="server" ValidationGroup="register" CssClass="text-danger" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="margin-bottom: 30px">&nbsp;</div>
        </div>
    </div>

</asp:Content>
