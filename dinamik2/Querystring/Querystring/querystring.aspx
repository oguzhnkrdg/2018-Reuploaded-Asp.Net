<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="querystring.aspx.cs" Inherits="Querystring.querystring" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Ad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Soyad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        Numara:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        Sınıf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">11A</asp:ListItem>
            <asp:ListItem>11B</asp:ListItem>
            <asp:ListItem>11C</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Erkek</asp:ListItem>
            <asp:ListItem>Kadın</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
