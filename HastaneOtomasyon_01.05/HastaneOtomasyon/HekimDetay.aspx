<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HekimDetay.aspx.cs" Inherits="HastaneOtomasyon.HekimDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SliderContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageContentPlaceHolder" runat="server">
    <section class="sub-page-banner text-center" data-stellar-background-ratio="0.3">
        <div class="overlay"></div>
        <div class="container">
            <h1 class="entry-title">
                <asp:Label ID="lbl_adSoyad" runat="server" Text="Label"></asp:Label></h1>
            <p>
                Hekimlerimize ait detaylı Bilgileri bu sayfadan öğrenebilirsiniz..<br />

            </p>
        </div>
    </section>

    <div class="sub-page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-4"> 
                        <div class="thumbnail">
                            <img class="img-responsive" id="drResim" style="height: 150px !important" runat="server" />
                            <div class="caption text-center">
                                <span class="text-muted" style="font-size: 1.3em; font-weight: 300">Op.Dr. <asp:Label ID="lbl_Adsoyad_Bolum" runat="server" Text="Label"></asp:Label></span>
                            </div>
                        </div>
                </div>



                <div class="col-md-8">

                    <asp:Literal ID="Lt_Ayrinti" runat="server"></asp:Literal>



                </div>
            </div>


            <div class="clr"></div>
        </div>
    </div>
    <!--end sub-page-content-->
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptEkle" runat="server">
</asp:Content>
