<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="rpt_blog" runat="server">
                <ItemTemplate>
                    <div>
                        <h1>
                            <%#Eval("yazi_baslik")%></h1>
                        <p>
                            <%#Eval("yazi_ozet")%>
                        </p>
                        <p class="post-footer align-right">
                            <a href="#" class="readmore">Devamını Oku</a> <a href="#" class="comments"><%#Eval("yazi_ekleyen")%></a>
                            <span class="date"><%#Eval("yazi_eklenme_tarihi")%></span>
                        </p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <cc1:CollectionPager ControlCssClass="Sayfalama" ID="CP_blog" PageSize="2" SliderSize="15" ShowPageNumbers="True" runat="server" BackNextLocation="Split" BackText="Geri" FirstText="İlk" LabelText="Sayfa:" LastText="Son" NextText="İleri" QueryStringKey="Sayfa" ResultsFormat="Sayfa {0}-{1} (of {2})"></cc1:CollectionPager>
        </div>
    </form>
</body>
</html>
