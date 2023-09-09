<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="uye_islemleri._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                Admin Girişi Yapıldı
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/admin.aspx">Admin</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" PostBackUrl="~/uye.aspx">Uye</asp:LinkButton>
            </asp:View>
            <asp:View ID="View2" runat="server">
                Üye Girşi Yapıldı
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" PostBackUrl="~/uye.aspx">Uye</asp:LinkButton>
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
