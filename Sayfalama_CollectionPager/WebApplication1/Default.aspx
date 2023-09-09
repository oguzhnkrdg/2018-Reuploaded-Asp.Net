<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                 <div>
        <h1>
            <%#Eval("yazi_baslik")%></h1>
        <p>
             <%#Eval("yazi_ozet")%></p>
        <p class="post-footer align-right">
            <a href="#" class="readmore">Devamını Oku</a> <a href="#" class="comments"> <%#Eval("yazi_ekleyen")%></a>
            <span class="date"> <%#Eval("yazi_eklenme_tarihi")%></span>
        </p>
    </div>
            </ItemTemplate>
        </asp:Repeater>
        <cc1:CollectionPager ID="CollectionPager2" runat="server"></cc1:CollectionPager>
        <cc1:CollectionPager ID="CollectionPager3" runat="server" SliderSize="1" ShowPageNumbers="True"

            LabelText="Sayfa" PageSize="1" NextText="İleri" LastText="Son" BackText="Geri"

            FirstText="İlk">

        </cc1:CollectionPager>
        <cc1:CollectionPager ID="CollectionPager1" PageSize="10" SliderSize="1" ShowPageNumbers="True" runat="server" BackNextLocation="Split" BackText="Geri" FirstText="İlk" LabelText="Sayfa:" LastText="Son" NextText="İleri" QueryStringKey="Sayfa" ResultsFormat="Sayfa {0}-{1} (of {2})"></cc1:CollectionPager>
    </div>
    </form>
</body>
</html>
