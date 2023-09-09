<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="gezi.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #FFFFFF;
            text-align: center;
            background-color: #0000CC;
        }
        .auto-style3 {
            text-align: left;
            background-color: #FFFFCC;
        }
        .auto-style4 {
            width: 116px;
            height: 24px;
            background-color: #FFFFCC;
        }
        .auto-style7 {
            background-color: #FFFFCC;
        }
        .auto-style8 {
            height: 30px;
            text-align: center;
            background-color: #FFFFCC;
        }
        .auto-style9 {
            height: 26px;
            background-color: #FFFFCC;
        }
        .auto-style10 {
            width: 139px;
            background-color: #FFFFCC;
        }
        .auto-style11 {
            height: 26px;
            width: 139px;
            background-color: #FFFFCC;
        }
        .auto-style12 {
            width: 391px;
            background-color: #FFFFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4">İstanbul Gezisi</td>
            </tr>
            <tr>
                <td class="auto-style4">Adınız</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12" rowspan="5">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style7" rowspan="5">
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Bird's Eye View of New York City.jpg" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Soyadınız</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Sınıfınız</td>
                <td class="auto-style11">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>11A</asp:ListItem>
                        <asp:ListItem Selected="True">11B</asp:ListItem>
                        <asp:ListItem>11C</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kayıt" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Detay.aspx" style="text-align: center">Gezi Hakkında Detaylı Bilgi</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
