<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="liste_kutusu.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
    
    &nbsp;&nbsp;
        <br />
&nbsp; Şehir Adı:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ekle" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BorderStyle="None" Enabled="False" OnClick="Button3_Click" Text="&gt;&gt;&gt;&gt;&gt;&gt;" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Seçili olanı sil" />
        <br />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="139px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="148px"></asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" Height="140px" style="margin-top: 0px" Width="149px"></asp:ListBox>
        <br />
        <br />
        <br />
        <br />
        Durum: <asp:Label ID="Label1" runat="server" ForeColor="Green" Text="Boş"></asp:Label>
    
    </div>
    </form>
</body>
</html>
