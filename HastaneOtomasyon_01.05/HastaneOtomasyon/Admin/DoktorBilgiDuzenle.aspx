<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DoktorBilgiDuzenle.aspx.cs" Inherits="HastaneOtomasyon.Admin.DoktorBilgiDuzenle" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-xs-12">
            <div class="clearfix">
                <div class="pull-right tableTools-container"></div>
            </div>
            <div class="table-header">
                Doktor Bilgileri
            </div>

            <!-- div.table-responsive -->

            <!-- div.dataTables_borderWrap -->
            <div>
                <asp:HiddenField ID="hf_TCKimlik" runat="server" />
                <asp:Repeater ID="rpt_DoktorBilgiTbl" runat="server" OnItemCommand="rpt_DoktorBilgiTbl_ItemCommand">
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
                                    <th>TC Kimlik No</th>
                                    <th>Adı Soyadı</th>
                                    <th class="hidden-480">Cep Telefonu</th>
                                    <th>Bölümü</th>
                                    <th class="hidden-480">Adresi</th>
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
                                <%#Eval("D_TCKimlik")%>
                            </td>
                            <td><%#Eval("D_AdSoyad")%></td>
                            <td class="hidden-480"><%#Eval("D_CepTel")%></td>
                            <td><%#Eval("B_Adi")%></td>
                            <td class="hidden-480"><%#Eval("D_Adresi")%></td>
                            <td class="text-center">
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <asp:LinkButton ID="lnkBtn_Edit" CssClass="green" CommandName="Edit" CommandArgument='<%#Eval("D_TCKimlik")%>' runat="server"><i class="ace-icon fa fa-pencil bigger-130"></i></asp:LinkButton>

                                    <a class="sil red" data-title="Kayıt Silme" id="lnkBtn_Delete" href=DoktorBilgiDuzenle.aspx?git=sil&id=<%#Eval("D_TCKimlik")%>><i class="ace-icon fa fa-trash bigger-130"></i></a>
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
                                    <h2>Doktor Bilgileri Güncelleme</h2>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label for="txt_TCKimlik " class="col-md-3 control-label ">TC Kimlik No</label>
                                        <div class="col-md-7 ">
                                            <asp:TextBox ID="txt_TCKimlik" CssClass="form-control" placeholder="TC Kimlik No" runat="server" Enabled="False"></asp:TextBox>
                                        </div>
                                        <div class="col-md-1 "></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txt_adSoyad " class="col-md-3 control-label ">Adı Soyadı</label>
                                        <div class="col-md-7 ">
                                            <asp:TextBox ID="txt_adSoyad" CssClass="form-control" placeholder="Adı Soyadı" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-md-1 ">
                                            <asp:RequiredFieldValidator ControlToValidate="txt_adSoyad" ID="RequiredFieldValidator_adSoyad" runat="server" CssClass="text-danger" ErrorMessage="Ad soyad bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="update">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txt_cepTel " class="col-md-3 control-label ">Cep Telefonu</label>
                                        <div class="col-md-7 ">
                                            <asp:TextBox ID="txt_cepTel" CssClass="form-control" placeholder="Cep Telefonu" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-md-1 ">
                                            <asp:RequiredFieldValidator ControlToValidate="txt_cepTel" ID="RequiredFieldValidator_cepTel" runat="server" CssClass="text-danger" ErrorMessage="Cep telefonu bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="update">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txt_adres " class="col-md-3 control-label ">Adresi</label>
                                        <div class="col-md-7 ">
                                            <asp:TextBox ID="txt_adres" CssClass="form-control" placeholder="Adresi" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                        <div class="col-md-1 ">
                                            <asp:RequiredFieldValidator ControlToValidate="txt_adres" ID="RequiredFieldValidator_adres" runat="server" CssClass="text-danger" ErrorMessage="Adres bilgisi boş geçilemez." Display="Dynamic" ValidationGroup="update">*</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="drp_AdresIl " class="col-md-3 control-label ">İli</label>
                                        <div class="col-md-7 ">
                                            <div>
                                                <asp:DropDownList CssClass="form-control" ID="drp_AdresIl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drp_AdresIl_SelectedIndexChanged">
                                                    <asp:ListItem Value="-1">Lütfen Seçiniz</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <asp:CompareValidator ControlToValidate="drp_AdresIl" ID="CompareValidator_AdresIl" ValidationGroup="update" ErrorMessage="Lütfen bir il seçiniz." runat="server" Display="Dynamic" Operator="NotEqual" ValueToCompare="-1" CssClass="text-danger" Type="Integer">*</asp:CompareValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="drp_AdresIlce " class="col-md-3 control-label ">İlçesi</label>
                                        <div class="col-md-7 ">
                                            <div>
                                                <asp:DropDownList CssClass="form-control" ID="drp_AdresIlce" runat="server">
                                                    <asp:ListItem Value="-1">Lütfen Seçiniz</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <asp:CompareValidator ControlToValidate="drp_AdresIlce" ID="CompareValidator_adresIlce" ValidationGroup="update" ErrorMessage="Lütfen bir ilçe seçiniz." runat="server" Display="Dynamic" Operator="NotEqual" ValueToCompare="-1" CssClass="text-danger" Type="Integer">*</asp:CompareValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="drp_Bolum " class="col-md-3 control-label ">Bölüm</label>
                                        <div class="col-md-7 ">
                                            <div>
                                                <asp:DropDownList CssClass="form-control" ID="drp_Bolum" runat="server">
                                                    <asp:ListItem Value="-1">Lütfen Seçiniz</asp:ListItem>
                                                </asp:DropDownList>

                                            </div>
                                        </div>
                                        <div class="col-md-1 ">
                                            <asp:CompareValidator ControlToValidate="drp_Bolum" ID="CompareValidator_Bolum" ValidationGroup="update" ErrorMessage="Lütfen bir bölüm seçiniz." runat="server" Display="Dynamic" Operator="NotEqual" ValueToCompare="-1" CssClass="text-danger" Type="Integer">*</asp:CompareValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="fu_Img01 " class="col-md-3 control-label ">Küçük Resim</label>
                                        <div class="col-md-7 ">
                                            <asp:FileUpload ID="fu_Img01" CssClass="form-control" runat="server" />
                                            <asp:Label ID="lbl_Img01" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="fu_Img02 " class="col-md-3 control-label ">Büyük Resim</label>
                                        <div class="col-md-7 ">
                                            <asp:FileUpload ID="fu_Img02" CssClass="form-control" runat="server" />
                                            <asp:Label ID="lbl_Img02" runat="server"></asp:Label>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txt_Bilgiler " class="control-label ">Genel Bilgiler</label>
                                    <asp:TextBox ID="txt_Bilgiler" CssClass="form-control" placeholder="Genel Bilgiler" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txt_Bilgiler" ID="RequiredFieldValidator_bilgiler" runat="server" CssClass="text-danger" ErrorMessage="Bilgiler alanı boş geçilemez." Display="Dynamic" ValidationGroup="update">*</asp:RequiredFieldValidator>                                    
                                </div>
                                <div class="form-group">
                                    <label for="CKEditor1" class="control-label ">Ayrıntılı Bilgiler</label>
                                   <%-- <asp:TextBox id="editor" CssClass="form-control" placeholder="Ayrıntılı Doktor Bilgileri" runat="server" Rows="15" TextMode="MultiLine"></asp:TextBox>--%>  
 
                                    <CKEditor:CKEditorControl ID="CKEditor1" Height="200" runat="server" BasePath="~/Admin/ckeditor"></CKEditor:CKEditorControl>
                                                                  
                                    <%--<asp:RequiredFieldValidator ControlToValidate="editor" ID="RequiredFieldValidator_bilgiAyrinti" runat="server" CssClass="text-danger" ErrorMessage="Ayrıntılı bilgi alanı boş geçilemez." Display="Dynamic" ValidationGroup="update">*</asp:RequiredFieldValidator> --%>                                   
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lbl_Hata" runat="server" CssClass="text-danger"></asp:Label>
                                </div>
                                <div class="form-group">                                    
                                    <asp:Button ID="btnUpdate" CssClass="btn btn-info" runat="server" Text="Güncelle" ValidationGroup="update" />                                  
                                </div>
                                <div class="clearfix"></div>
                                <div class="form-group">                                    
                                    <asp:ValidationSummary Style="padding-top: 10px;" ID="ValidationSummary_update" runat="server" ValidationGroup="update" CssClass="text-danger" />                                   
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
