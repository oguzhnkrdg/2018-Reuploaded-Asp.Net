<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sayfa2.aspx.cs" Inherits="Sifre_Uret.sayfa2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">BH-KH</asp:ListItem>
            <asp:ListItem>KH</asp:ListItem>
            <asp:ListItem>BH</asp:ListItem>
            <asp:ListItem>Rakam</asp:ListItem>
            <asp:ListItem>BH - Rakam</asp:ListItem>
            <asp:ListItem>KH - Rakam</asp:ListItem>
            <asp:ListItem>BH-KH-Rakam</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Selected="True">5</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Şifre Üret" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
