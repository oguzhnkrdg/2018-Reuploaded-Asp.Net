<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="validation._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 265px;
        }
        .auto-style4 {
            width: 265px;
        }
        .auto-style5 {
            width: 265px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Yazılı Seçiniz</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                        <asp:ListItem>Yazılı 1 </asp:ListItem>
                        <asp:ListItem>Yazılı 2</asp:ListItem>
                        <asp:ListItem>Yazılı 3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="seçim yapınız" InitialValue="Seçiniz" style="color: #FF0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Notunuz</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="0-100 arasında bir not giriniz" MaximumValue="100" MinimumValue="0" style="color: #FF0000" Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Yazılı Tarihi</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Tarihi uygun biçimde giriniz" Operator="DataTypeCheck" style="color: #FF0000" Type="Date">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Şifreniz</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Şifre giriniz" style="color: #FF0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Şifre Tekrar</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Şifreler uyuşmuyor" style="color: #FF0000">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">E-mail</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="mail@mail.com şeklinde giriniz" style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Gönder" />
                </td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="margin-bottom: 19px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
