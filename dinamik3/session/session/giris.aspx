<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="session.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Adı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Soyadı:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<br />
        Sınıfı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">11A</asp:ListItem>
            <asp:ListItem>11B</asp:ListItem>
            <asp:ListItem>11C</asp:ListItem>
            <asp:ListItem>11D</asp:ListItem>
            <asp:ListItem Value="11E">11E</asp:ListItem>
            <asp:ListItem>11F</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <br />
        Cinsiyeti:<asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Erkek</asp:ListItem>
            <asp:ListItem>Kız</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
