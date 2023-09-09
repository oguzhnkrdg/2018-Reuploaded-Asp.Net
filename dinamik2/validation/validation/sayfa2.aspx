<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sayfa2.aspx.cs" Inherits="validation.sayfa2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #0000FF;
            font-weight: bold;
            width: 22px;
        }
        .auto-style3 {
            color: #0000FF;
            height: 23px;
            font-weight: bold;
            width: 22px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            color: #0000FF;
            font-weight: bold;
            width: 195px;
        }
        .auto-style6 {
            color: #0000FF;
            height: 23px;
            font-weight: bold;
            width: 195px;
        }
        .auto-style7 {
            width: 195px;
        }
        .auto-style8 {
            width: 22px;
        }
        .auto-style9 {
            width: 415px;
        }
        .auto-style10 {
            height: 23px;
            width: 415px;
        }
        .auto-style11 {
            width: 195px;
            height: 30px;
        }
        .auto-style12 {
            width: 22px;
            height: 30px;
        }
        .auto-style13 {
            width: 415px;
            height: 30px;
        }
        .auto-style14 {
            height: 30px;
        }
        .auto-style15 {
            color: #FF0000;
        }
        .auto-style16 {
            color: #0000FF;
            font-weight: bold;
            width: 195px;
            height: 26px;
        }
        .auto-style17 {
            color: #0000FF;
            font-weight: bold;
            width: 22px;
            height: 26px;
        }
        .auto-style18 {
            width: 415px;
            height: 26px;
        }
        .auto-style19 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">ADINIZ</td>
                <td class="auto-style2">:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Blue" style="color: #FFFFFF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style15" ErrorMessage="boş bırakılamaz">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">SOYADINIZ</td>
                <td class="auto-style2">:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Blue" style="color: #FFFFFF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style15" ErrorMessage="boş bırakılamaz">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">KULLANICI ADI</td>
                <td class="auto-style3">:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="Blue" style="color: #FFFFFF"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style15" ErrorMessage="boş bırakılamaz">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">MAİL ADRESİ</td>
                <td class="auto-style2">:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="Blue" style="color: #FFFFFF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style15" ErrorMessage="boş bırakılamaz">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="doğru bir mail adresi giriniz örnek: example@site.com" style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">ŞİFRE</td>
                <td class="auto-style2">:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox5" runat="server" BorderColor="Blue" style="color: #FFFFFF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="auto-style15" ErrorMessage="boş bırakılamaz">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">ŞİFRE (TEKRAR)</td>
                <td class="auto-style2">:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox6" runat="server" BorderColor="Blue" style="color: #FFFFFF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" CssClass="auto-style15" ErrorMessage="boş bırakılamaz">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Şifreler uyuşmuyor" style="color: #FF0000">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">CİNSİYET</td>
                <td class="auto-style2">:</td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                        <asp:ListItem>Kadın</asp:ListItem>
                        <asp:ListItem>Erkek</asp:ListItem>
                        <asp:ListItem>Belirtmek İstemiyorum</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style15" ErrorMessage="Seçim Yapınız" InitialValue="Seçiniz">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">DOĞUM TARİHİ</td>
                <td class="auto-style17">:</td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Seçiniz</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Seçiniz</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList2" CssClass="auto-style15" ErrorMessage="Seçim Yapınız" InitialValue="Seçiniz">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownList3" CssClass="auto-style15" ErrorMessage="Seçim Yapınız" InitialValue="Seçiniz">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList4" CssClass="auto-style15" ErrorMessage="Seçim Yapınız" InitialValue="Seçiniz">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">KULLANIM ŞARTLARI</td>
                <td class="auto-style2">:</td>
                <td class="auto-style9">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Kabul Ediyorum</asp:ListItem>
                        <asp:ListItem>Kabul Etmiyorum</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RadioButtonList1" CssClass="auto-style15" ErrorMessage="Seçim yapınız">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderColor="Blue" Text="Kayıt Ol" />
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
