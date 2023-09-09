<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detay.aspx.cs" Inherits="gezi.Detay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FFFFCC;
        }
        .auto-style2 {
            width: 229px;
        }
        .auto-style3 {
            height: 23px;
            color: #FF0000;
            text-align: center;
        }
        .auto-style4 {
            color: #FF0000;
        }
        .auto-style5 {
            color: #FFFFFF;
        }
        .auto-style6 {
            height: 109px;
            text-align: center;
        }
        .auto-style7 {
            height: 12px;
            text-align: center;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center; color: #FFFFFF; background-color: #FF0000">Detaylı Bilgi</td>
            </tr>
            <tr>
                <td class="auto-style2">Gezi Yeri</td>
                <td>İstanbul</td>
            </tr>
            <tr>
                <td class="auto-style2">Kalkış Yeri</td>
                <td>Maltepe Camii Önü</td>
            </tr>
            <tr>
                <td class="auto-style2">Saati</td>
                <td class="auto-style4">08:00</td>
            </tr>
            <tr>
                <td class="auto-style2">Ücret</td>
                <td class="auto-style4">1 kişi 100Tl - 2 kişi 150TL - 3 Kişi 250TL</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">Fiyatlarımıza Yemek Ve Yer Dahildir.</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2" style="text-align: center; background-color: #FF0000">İstanbul&#39;dan Resimler</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Boca Chita Lighthouse, Biscayne National Park, Florida.jpg" />
                    <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/Bodie Island Lighthouse, Cape Hatteras National Seashore, North Carolina.jpg" />
                    <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="~/Bold Twilight.jpg" />
                    <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl="~/Boogie Boarding.jpg" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" NavigateUrl="~/Default.aspx">Anasayfaya Gitmek İçin Tıklayınız</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
