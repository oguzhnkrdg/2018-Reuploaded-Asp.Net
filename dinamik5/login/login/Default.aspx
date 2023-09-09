<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="login.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 27%;
            height: 138px;
        }
        .auto-style2 {
            width: 478px;
        }
        .auto-style3 {
            height: 23px;
            width: 561px;
        }
        .auto-style4 {
            width: 478px;
            height: 23px;
        }
        .auto-style5 {
            width: 561px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Kullanıcı adı:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Şifre:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                Hoşgeldin ,
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Oturumu kapat</asp:LinkButton>
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
