<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="RandevuDuzenle.aspx.cs" Inherits="HastaneOtomasyon.Admin.RandevuDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/jquery-confirm.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-xs-12">
            <div class="clearfix">
                <div class="pull-right tableTools-container"></div>
            </div>
            <div class="table-header">
                Randevular
            </div>

            <!-- div.table-responsive -->

            <!-- div.dataTables_borderWrap -->
            <div>
                <asp:HiddenField ID="hf_SiraNo" runat="server" />
                <asp:Repeater ID="rpt_RandevuOzetTbl" runat="server" OnItemCommand="rpt_RandevuOzetTbl_ItemCommand">
                    <HeaderTemplate>
                        <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </th>
                                    <th>Randevu Tarihi</th>
                                    <th>Randevu Saati</th>
                                    <th class="hidden-480">Ad Soyad</th>
                                    <th>Bölüm</th>
                                    <th class="hidden-480">Doktor</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <%#Eval("HR_RandevuTarihi")%>
                            </td>
                            <td><%#Eval("HR_RandevuSaati")%></td>
                            <td class="hidden-480"><%#Eval("adSoyad")%></td>
                            <td><%#Eval("B_Adi")%></td>
                            <td class="hidden-480"><%#Eval("D_AdSoyad")%></td>
                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <asp:LinkButton ID="lnkBtn_Edit" CssClass="green" CommandName="Edit" CommandArgument='<%#Eval("HR_SiraNo")%>' runat="server"><i class="ace-icon fa fa-pencil bigger-130"></i></asp:LinkButton>

                                    <a class="sil red" data-title="Kayıt Silme" id="lnkBtn_Delete" href=RandevuDuzenle.aspx?git=sil&id=<%#Eval("HR_SiraNo")%>><i class="ace-icon fa fa-trash bigger-130"></i></a>
                                </div>

                                <div class="hidden-md hidden-lg">
                                    <div class="inline pos-rel">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                        </button>

                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">

                                            <li>
                                                <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                    <span class="green">
                                                        <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                    </span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
                                                    <span class="red">
                                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <asp:MultiView ID="MultiView1_Edit" runat="server">
                <asp:View ID="View1" runat="server">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 ">
                                <div class="page-header text-center">
                                    <h2>Randevu Güncelle</h2>
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
                                            <asp:RequiredFieldValidator ControlToValidate="txt_RTrh" ID="RequiredFieldValidator_txt_RTrh" runat="server" CssClass="text-danger" ErrorMessage="Randevu Tarihi bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="randevuozet">*</asp:RequiredFieldValidator>
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
                                            <asp:CompareValidator ControlToValidate="drp_Bolum" ID="CompareValidator_Bolum" ValidationGroup="randevuozet" ErrorMessage="Lütfen bir bölüm seçiniz." runat="server" Display="Dynamic" Operator="NotEqual" ValueToCompare="-1" CssClass="text-danger" Type="Integer">*</asp:CompareValidator>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="drp_Doktor " class="col-md-3 control-label ">Doktor</label>
                                        <div class="col-md-7 ">
                                            <div>
                                                <asp:DropDownList CssClass="form-control" ID="drp_Doktor" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drp_Doktor_SelectedIndexChanged">
                                                    <asp:ListItem Value="-1">Lütfen Seçiniz</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <%--                                            <asp:CompareValidator ControlToValidate="drp_Doktor" ID="CompareValidator_Doktor" ValidationGroup="randevuozet" ErrorMessage="Lütfen bir doktor seçiniz." runat="server" Display="Dynamic" Operator="NotEqual" ValueToCompare="-1" CssClass="text-danger" Type="Integer">*</asp:CompareValidator>--%>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="rpt_RandevuSaat" class="col-md-3 control-label ">Randevu Saati</label>
                                        <div class="col-md-7 ">
                                            <asp:Repeater ID="rpt_RandevuSaat" runat="server" OnItemCommand="rpt_RandevuSaat_ItemCommand" OnItemDataBound="rpt_RandevuSaat_ItemDataBound">
                                                <ItemTemplate>

                                                    <span class="line-height-1 bigger-100 blue">
                                                        <asp:LinkButton Style="width: 50px; font-size: 15px;" class="mdl btn btn-app btn-sm btn-pink" ID="lnkBtn_Saat" CommandName="saat" CommandArgument='<%#Eval("RT_SiraNo") %>' Text='<%#Eval("RT_RandevuSaati")%>' runat="server"></asp:LinkButton>
                                                    </span>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                    <asp:HiddenField ID="hf_RndSaat" runat="server" />
                                    <div class="form-group">
                                        <asp:Label ID="lbl_Hata" runat="server" CssClass="text-danger"></asp:Label>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-offset-3 col-md-7">
                                            <asp:Button ID="btnUpdate" CssClass="btn btn-info" runat="server" Text="Güncelle" ValidationGroup="randevuozet" OnClick="btnUpdate_Click" />
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>

                                    <div class="form-group">
                                        <div class="col-md-offset-3 col-md-7">
                                            <asp:ValidationSummary Style="padding-top: 10px;" ID="ValidationSummary_randevuozet" runat="server" ValidationGroup="randevuozet" CssClass="text-danger" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div style="margin-bottom: 30px">&nbsp;</div>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scriptContentPlaceHolder" runat="server">
</asp:Content>
