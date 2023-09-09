<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="MasterPage_Amp11b.Profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style1 {
            width: 212px;
            height: 18px;
        }
        .auto-style2 {
            height: 18px;
        }
            .auto-style3 {
                width: 212px;
                height: 33px;
            }
            .auto-style4 {
                height: 33px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Profil Güncelle</h1>
    <table style="width: 100%">
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px">KİŞİSEL BİLGİLER</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style3">Kullanıcı Adı</td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_p_kulad" runat="server" CssClass="fields" Enabled="False"></asp:TextBox>
               
            </td>
            <td class="auto-style4"> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Kullanıcı adı bilgisi boş geçilemez." ForeColor="Red" ControlToValidate="txt_p_kulad" Display="Dynamic" ValidationGroup="profil">*</asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px">Parola</td>
            <td>
                <asp:TextBox ID="txt_p_parola" runat="server" CssClass="fields"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Parola bilgisi boş geçilemez." ForeColor="Red" ControlToValidate="txt_p_parola" Display="Dynamic" ValidationGroup="profil">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 212px">Adı</td>
            <td>
                <asp:TextBox ID="txt_adi" runat="server" CssClass="fields"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ad bilgisi boş geçilemez." ForeColor="Red" ControlToValidate="txt_adi" Display="Dynamic" ValidationGroup="profil">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 212px">Soyadı</td>
            <td>
                <asp:TextBox ID="txt_soyadi" runat="server" CssClass="fields"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Soyadı bilgisi boş geçilemez." ForeColor="Red" ControlToValidate="txt_soyadi" Display="Dynamic" ValidationGroup="profil">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 212px">Doğum Yeri</td>
            <td>
                <asp:DropDownList ID="drp_dogum_yeri" CssClass="drpfields" runat="server" Height="23px" Width="190px">
                    <asp:ListItem Value="-1">Lütfen Seçiniz</asp:ListItem>
                    <asp:ListItem Value="1">Adana</asp:ListItem>
                    <asp:ListItem Value="2">Adıyaman</asp:ListItem>
                    <asp:ListItem Value="3">Afyonkarahisar</asp:ListItem>
                    <asp:ListItem Value="4">Ağrı</asp:ListItem>
                    <asp:ListItem Value="5">Amasya</asp:ListItem>
                    <asp:ListItem Value="6">Ankara</asp:ListItem>
                    <asp:ListItem Value="7">Antalya</asp:ListItem>
                    <asp:ListItem Value="8">Artvin</asp:ListItem>
                    <asp:ListItem Value="9">Aydın</asp:ListItem>
                    <asp:ListItem Value="10">Balıkesir</asp:ListItem>
                    <asp:ListItem Value="11">Bilecik</asp:ListItem>
                    <asp:ListItem Value="12">Bingöl</asp:ListItem>
                    <asp:ListItem Value="13">Bitlis</asp:ListItem>
                    <asp:ListItem Value="14">Bolu</asp:ListItem>
                    <asp:ListItem Value="15">Burdur</asp:ListItem>
                    <asp:ListItem Value="16">Bursa</asp:ListItem>
                    <asp:ListItem Value="17">Çanakkale</asp:ListItem>
                    <asp:ListItem Value="18">Çankırı</asp:ListItem>
                    <asp:ListItem Value="19">Çorum</asp:ListItem>
                    <asp:ListItem Value="20">Denizli</asp:ListItem>
                    <asp:ListItem Value="21">Diyarbakır</asp:ListItem>
                    <asp:ListItem Value="22">Edirne</asp:ListItem>
                    <asp:ListItem Value="23">Elazığ</asp:ListItem>
                    <asp:ListItem Value="24">Erzincan</asp:ListItem>
                    <asp:ListItem Value="25">Erzurum</asp:ListItem>
                    <asp:ListItem Value="26">Eskişehir</asp:ListItem>
                    <asp:ListItem Value="27">Gaziantep</asp:ListItem>
                    <asp:ListItem Value="28">Giresun</asp:ListItem>
                    <asp:ListItem Value="29">Gümüşhane</asp:ListItem>
                    <asp:ListItem Value="30">Hakkari</asp:ListItem>
                    <asp:ListItem Value="31">Hatay</asp:ListItem>
                    <asp:ListItem Value="32">Isparta</asp:ListItem>
                    <asp:ListItem Value="33">Mersin</asp:ListItem>
                    <asp:ListItem Value="34">İstanbul</asp:ListItem>
                    <asp:ListItem Value="35">İzmir</asp:ListItem>
                    <asp:ListItem Value="36">Kars</asp:ListItem>
                    <asp:ListItem Value="37">Kastamonu</asp:ListItem>
                    <asp:ListItem Value="38">Kayseri</asp:ListItem>
                    <asp:ListItem Value="39">Kırklareli</asp:ListItem>
                    <asp:ListItem Value="40">Kırşehir</asp:ListItem>
                    <asp:ListItem Value="41">Kocaeli</asp:ListItem>
                    <asp:ListItem Value="42">Konya</asp:ListItem>
                    <asp:ListItem Value="43">Kütahya</asp:ListItem>
                    <asp:ListItem Value="44">Malatya</asp:ListItem>
                    <asp:ListItem Value="45">Manisa</asp:ListItem>
                    <asp:ListItem Value="46">Kahramanmaraş</asp:ListItem>
                    <asp:ListItem Value="47">Mardin</asp:ListItem>
                    <asp:ListItem Value="48">Muğla</asp:ListItem>
                    <asp:ListItem Value="49">Muş</asp:ListItem>
                    <asp:ListItem Value="50">Nevşehir</asp:ListItem>
                    <asp:ListItem Value="51">Niğde</asp:ListItem>
                    <asp:ListItem Value="52">Ordu</asp:ListItem>
                    <asp:ListItem Value="53">Rize</asp:ListItem>
                    <asp:ListItem Value="54">Sakarya</asp:ListItem>
                    <asp:ListItem Value="55">Samsun</asp:ListItem>
                    <asp:ListItem Value="56">Siirt</asp:ListItem>
                    <asp:ListItem Value="57">Sinop</asp:ListItem>
                    <asp:ListItem Value="58">Sivas</asp:ListItem>
                    <asp:ListItem Value="59">Tekirdağ</asp:ListItem>
                    <asp:ListItem Value="60">Tokat</asp:ListItem>
                    <asp:ListItem Value="61">Trabzon</asp:ListItem>
                    <asp:ListItem Value="62">Tunceli</asp:ListItem>
                    <asp:ListItem Value="63">Şanlıurfa</asp:ListItem>
                    <asp:ListItem Value="64">Uşak</asp:ListItem>
                    <asp:ListItem Value="65">Van</asp:ListItem>
                    <asp:ListItem Value="66">Yozgat</asp:ListItem>
                    <asp:ListItem Value="67">Zonguldak</asp:ListItem>
                    <asp:ListItem Value="68">Aksaray</asp:ListItem>
                    <asp:ListItem Value="69">Bayburt</asp:ListItem>
                    <asp:ListItem Value="70">Karaman</asp:ListItem>
                    <asp:ListItem Value="71">Kırıkkale</asp:ListItem>
                    <asp:ListItem Value="72">Batman</asp:ListItem>
                    <asp:ListItem Value="73">Şırnak</asp:ListItem>
                    <asp:ListItem Value="74">Bartın</asp:ListItem>
                    <asp:ListItem Value="75">Ardahan</asp:ListItem>
                    <asp:ListItem Value="76">Iğdır</asp:ListItem>
                    <asp:ListItem Value="77">Yalova</asp:ListItem>
                    <asp:ListItem Value="78">Karabük</asp:ListItem>
                    <asp:ListItem Value="79">Kilis</asp:ListItem>
                    <asp:ListItem Value="80">Osmaniye</asp:ListItem>
                    <asp:ListItem Value="81">Düzce</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Doğum yeri bilgisini seçiniz." ForeColor="Red" ControlToValidate="drp_dogum_yeri" Display="Dynamic" InitialValue="-1" ValidationGroup="profil">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ControlToValidate="drp_dogum_yeri" ID="CompareValidator1"
    ValidationGroup="profil" ErrorMessage="Lütfen bir il seçiniz."
    runat="server" Display="Dynamic" 
    Operator="NotEqual" ValueToCompare="-1" Type="Integer" ForeColor="Red" >*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px">Doğum Tarihi Örn. (08.08.1980)</td>
            <td>
                <asp:TextBox ID="txt_dogum_tarihi" runat="server" CssClass="fields" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Lütfen bir doğum tarihi giriniz." ForeColor="Red" ControlToValidate="txt_dogum_tarihi" Display="Dynamic" ValidationGroup="profil">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">İLETİŞİM BİLGİLERİ</td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td style="width: 212px">Adres</td>
            <td>
                <asp:TextBox ID="txt_adres" runat="server" CssClass="fields" Height="50px"
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Adres bilgisi boş geçilemez." ForeColor="Red" ControlToValidate="txt_adres" Display="Dynamic" ValidationGroup="profil">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 212px">Telefon Örn.(0 505 408 74 41)</td>
            <td>
                <asp:TextBox ID="txt_tel" runat="server" CssClass="fields" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Telefon bilgisi boş geçilemez." ForeColor="Red" ControlToValidate="txt_tel" Display="Dynamic" ValidationGroup="profil">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 212px">E-Posta</td>
            <td>
                <asp:TextBox ID="txt_eposta" runat="server" CssClass="fields" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="E-Posta bilgisi boş geçilemez." ForeColor="Red" ControlToValidate="txt_eposta" Display="Dynamic" ValidationGroup="profil">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="@ ve . işaretlerini içeren geçerli bir eposta adresi giriniz. " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="profil" ControlToValidate="txt_eposta">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl_Sonuc" runat="server" ForeColor="Red"></asp:Label></td>

            <td>
                &nbsp;</td>

        </tr>
        <tr>
            <td style="width: 212px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="profil" ForeColor="Red" />
            </td>
            <td style="vertical-align:top;">
                <asp:Button ID="btn_guncelle" runat="server" CssClass="fields btnrenk"
                    Text="Profil Güncelle" ValidationGroup="profil" OnClick="btn_guncelle_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
