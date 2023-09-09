<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="renk._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 39%;
        }
        .auto-style3 {
            width: 474px;
        }
        .auto-style4 {
            width: 504px;
        }
        .auto-style5 {
            width: 504px;
            height: 100px;
        }
        .auto-style6 {
            width: 474px;
            height: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Takım Adı:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Seçiniz</asp:ListItem>
                        <asp:ListItem>FB</asp:ListItem>
                        <asp:ListItem>GS</asp:ListItem>
                        <asp:ListItem>BJK</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Panel ID="Panel2" runat="server" Height="101px">
                    </asp:Panel>
                </td>
                <td class="auto-style6">
                    <asp:Panel ID="Panel1" runat="server" Height="102px">
                    </asp:Panel>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
