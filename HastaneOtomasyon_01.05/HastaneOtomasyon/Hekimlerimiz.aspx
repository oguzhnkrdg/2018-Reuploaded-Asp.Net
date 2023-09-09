<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Hekimlerimiz.aspx.cs" Inherits="HastaneOtomasyon.Hekimlerimiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageContentPlaceHolder" runat="server">
    <section class="sub-page-banner text-center" data-stellar-background-ratio="0.3">
        <div class="overlay"></div>
        <div class="container">
            <h1 class="entry-title">Hekimlerimiz</h1>
            <p>
                Hekimlerimiz.<br />

            </p>
        </div>
    </section>

    <div class="sub-page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="procedures">
                        <h3>Bölümlerimiz</h3>
                        <asp:Repeater ID="rpt_Bolumler" runat="server">
                            <ItemTemplate>
                                <div class="panel-group sidebar-nav" id="accordion3">
                                    <div class="panel panel-sidebar">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a href='Hekimlerimiz.aspx?KategoriID=<%#Eval("B_No")%>'>
                                                    <i class="fa fa-angle-right"></i><%#Eval("B_Adi")%>
                                                </a>
                                            </h4>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>



                <div class="col-md-8">

                    <h2 class="light bordered">Bölüm Adı gelecek</h2>
                    <div class="height20"></div>

                    <asp:Repeater ID="rpt_Doktorlar" runat="server">
                        <HeaderTemplate>
                            <div class="row">
                        </HeaderTemplate>
                        <ItemTemplate>
                                                      
                                <div class="col-md-4">
                                    <a href='HekimDetay.aspx?id=<%#Eval("D_TCKimlik")%>'><div class="thumbnail">
                                        <img class="img-responsive" style="height:150px !important" src='<%#Eval("D_FotografBuyuk")%>' alt="...">
                                        <div class="caption text-center">
                                           <span class="text-muted" style="font-size:1.3em;font-weight:300">Op.Dr. <%#Eval("D_AdSoyad")%></span> 
                                        </div>
                                    </div></a>
                                </div>
                           
                            
                        </ItemTemplate>
                        <FooterTemplate>
                            </div>                   
                           
                        </FooterTemplate>
                    </asp:Repeater>



                </div>
            </div>
        </div>

        <div class="clr"></div>
    </div>
    <!--end sub-page-content-->
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptEkle" runat="server">
</asp:Content>
