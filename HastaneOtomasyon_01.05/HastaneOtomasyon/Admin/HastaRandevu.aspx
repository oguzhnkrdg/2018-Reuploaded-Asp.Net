<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="HastaRandevu.aspx.cs" Inherits="HastaneOtomasyon.Admin.HastaRandevu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- CSS -->
    <link href="assets/css/datepicker.min.css" rel="stylesheet" />
    <style type="text/css">
        .close
        {
            font-weight: 300;
            opacity: 0.9;
            color: #fff;
        }

            .close:hover
            {
                color: #e9e9e9;
                font-weight: 600;
                opacity: 0.7;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContentPlaceHolder" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 ">
                <div class="page-header text-center">
                    <h2>Randevu Al</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-3 ">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label for="txt_RTrh" class="col-md-3 control-label ">Randevu Tarihi</label>
                        <div class="col-md-7 ">
                            <div class="input-group">
                                <asp:TextBox ID="txt_RTrh" CssClass="form-control date-picker" runat="server" data-date-format="dd.mm.yyyy" placeholder="dd.mm.yyyy"></asp:TextBox>
                                <span class="input-group-addon">
                                    <i class="fa fa-calendar bigger-100"></i>
                                </span>
                            </div>
                        </div>
                        <div class="col-md-1 ">
                            <asp:RequiredFieldValidator ControlToValidate="txt_RTrh" ID="RequiredFieldValidator_txt_RTrh" runat="server" CssClass="text-danger" ErrorMessage="Randevu Tarihi bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="randevual">*</asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="drp_Bolum " class="col-md-3 control-label ">Bölüm</label>
                        <div class="col-md-7 ">
                            <div>
                                <asp:DropDownList CssClass="form-control" ID="drp_Bolum" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drp_Bolum_SelectedIndexChanged">
                                    <asp:ListItem Value="-1">Lütfen Seçiniz</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>
                        <div class="col-md-1 ">
                            <asp:CompareValidator ControlToValidate="drp_Bolum" ID="CompareValidator_Bolum" ValidationGroup="randevual" ErrorMessage="Lütfen bir bölüm seçiniz." runat="server" Display="Dynamic" Operator="NotEqual" ValueToCompare="-1" CssClass="text-danger" Type="Integer">*</asp:CompareValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="drp_Doktor " class="col-md-3 control-label ">Doktor</label>
                        <div class="col-md-7 ">
                            <div>
                                <asp:DropDownList CssClass="form-control" ID="drp_Doktor" runat="server" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="drp_Doktor_SelectedIndexChanged">
                                    <asp:ListItem Value="-1">Lütfen Seçiniz</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-1 ">
                            <asp:CompareValidator ControlToValidate="drp_Doktor" ID="CompareValidator_Doktor" ValidationGroup="randevual" ErrorMessage="Lütfen bir doktor seçiniz." runat="server" Display="Dynamic" Operator="NotEqual" ValueToCompare="-1" CssClass="text-danger" Type="Integer">*</asp:CompareValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="rpt_RandevuSaat" class="col-md-3 control-label ">Randevu Saati</label>
                        <div class="col-md-7 ">
                            <asp:Repeater ID="rpt_RandevuSaat" runat="server" OnItemCommand="rpt_RandevuSaat_ItemCommand" OnItemDataBound="rpt_RandevuSaat_ItemDataBound">
                                <ItemTemplate>
                                    <asp:HiddenField ID="hf_RndSaat" runat="server" />
                                    <span class="line-height-1 bigger-100 blue">
                                        <%-- <asp:LinkButton href="#my-modal" data-backdrop="static" data-keyboard="false" data-toggle="modal"  Style="width: 50px; font-size: 15px;" class="btn btn-app btn-sm btn-pink" ID="lnkBtn_Saat" CommandName="saat" CommandArgument='<%#Eval("RT_SiraNo") %>' Text='<%#Eval("RT_RandevuSaati")%>' runat="server" ></asp:LinkButton>
                                    </span>    --%>
                                        <asp:LinkButton data-backdrop="static" data-keyboard="false" Style="width: 50px; font-size: 15px;" class="mdl btn btn-app btn-sm btn-pink" data-id='<%#Eval("RT_RandevuSaati") %>' ID="lnkBtn_Saat" CommandName="saat" CommandArgument='<%#Eval("RT_SiraNo") %>' Text='<%#Eval("RT_RandevuSaati")%>' runat="server"></asp:LinkButton>
                                    </span>


                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>

                    <div class="clearfix"></div>

                    <div class="form-group">
                        <div class="col-md-offset-3 col-md-7">
                            <asp:ValidationSummary Style="padding-top: 10px;" ID="ValidationSummary_randevual" runat="server" ValidationGroup="randevual" CssClass="text-danger" />
                        </div>
                    </div>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </div>
            </div>
        </div>
        <div style="margin-bottom: 30px">&nbsp;</div>
    </div>

    <div id="my-modal" class="modal fade" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div style="background-color: #2a8bcb; color: #fff" class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="text-center">
                        <h3 style="margin-top: 10px">Randevu Özet</h3>
                        <h5 class="smaller">Bilgilerin doğruluğundan eminseniz! Randevunuzu onaylayabilirsiniz.</h5>
                    </div>
                </div>
                <div class="modal-body">

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1 ">
                                <div class="form-horizontal">

                                    <div class="form-group">
                                        <label for="txt_Tarih " class="col-md-4 control-label ">Randevu Tarihi</label>
                                        <div class="col-md-6 ">
                                            <asp:TextBox ID="txt_Tarih" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label for="txt_Rsaat " class="col-md-4 control-label ">Randevu Saati</label>
                                        <div class="col-md-6 ">
                                            <asp:TextBox ID="txt_Rsaat" CssClass="SaatRnd form-control" runat="server" Enabled="False"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="txt_Bolum " class="col-md-4 control-label ">Bölüm</label>
                                        <div class="col-md-6 ">
                                            <asp:TextBox ID="txt_Bolum" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="txt_Doktor" class="col-md-4 control-label ">Doktor</label>
                                        <div class="col-md-6 ">
                                            <asp:TextBox ID="txt_Doktor" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="txt_AdSoyad" class="col-md-4 control-label ">Hasta Ad Soyad</label>
                                        <div class="col-md-6 ">
                                            <asp:TextBox ID="txt_AdSoyad" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label ID="lbl_Hata" runat="server" CssClass="text-danger"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <asp:Button ID="btnOnay" CssClass="btn btn-info pull-right" runat="server" Text="Onay" OnClick="btnOnay_Click" />
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptContentPlaceHolder" runat="server">
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        jQuery(function ($) {
            //datepicker plugin
            //link
            $('.date-picker').datepicker({
                autoclose: true,
                todayHighlight: true
            })
            //show datepicker when clicking on the icon
            .next().on(ace.click_event, function () {
                $(this).prev().focus();
            });
        });
    </script>
    <script type="text/javascript">
        $('.mdl').click(function () {
            var bolum = document.getElementById("PageContentPlaceHolder_drp_Bolum");
            var doktor = document.getElementById("PageContentPlaceHolder_drp_Doktor");
            document.getElementById("PageContentPlaceHolder_txt_Tarih").value = document.getElementById("PageContentPlaceHolder_txt_RTrh").value;
            $('.SaatRnd').val($(this).attr('data-id')); 
            document.getElementById("PageContentPlaceHolder_txt_Bolum").value = document.getElementById("PageContentPlaceHolder_drp_Bolum")[bolum.selectedIndex].innerHTML;
            document.getElementById("PageContentPlaceHolder_txt_Doktor").value = document.getElementById("PageContentPlaceHolder_drp_Doktor")[doktor.selectedIndex].innerHTML;
            document.getElementById("PageContentPlaceHolder_txt_AdSoyad").value = document.getElementById("lbl_HosGeldin").innerHTML;
            //modalı aç;
            var hdf = document.getElementById("PageContentPlaceHolder_HiddenField1");
            var gelendeger = $(this).attr('data-id');
            hdf.value = gelendeger;
            $('.modal').modal();
            //lnkBtn_Saat


            //false return etmezsen sayfa navigate olur
            return false;
        });
    </script>
</asp:Content>


