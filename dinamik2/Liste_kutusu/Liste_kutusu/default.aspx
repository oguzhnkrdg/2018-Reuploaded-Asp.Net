<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Liste_kutusu._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Şehir Adı:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ekle" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Enabled="False" OnClick="Button2_Click" Text="&gt;&gt;&gt;&gt;&gt;" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Seçili Olanı Sil" />
        <br />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="100px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="95px"></asp:ListBox>
&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox2" runat="server" Height="99px" Width="93px"></asp:ListBox>
        <br />
        <br />
        Durum: <asp:Label ID="Label1" runat="server" style="color: #66FF33">Boş</asp:Label>
    
    </div>
    </form>
</body>
</html>
