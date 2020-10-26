<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Blog_Sitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 120px;
        }
        .auto-style6 {
            width: 285px;
        }
        .auto-style7 {
            width: 303px;
            height: 177px;
        }
        .auto-style8 {
            width: 98%;
            margin-right: 0;
        }
        .auto-style9 {
            width: 321px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="height:40px;width:100%;float:left;">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td style="height: auto">&nbsp;</td>
            </tr>
        </table>
    </div>
    <div style="height:auto; width:100%;float:left;">

        İletişim Formu</div>
    <div class="auto-style6">   

        <div style="width: 300px; height: 200px; float: left; background-color: #00CCFF;margin-left:2px;">
            <asp:TextBox ID="txt_yorumicerik" placeHolder="Mesaj Girin" runat="server" Height="180px" TextMode="MultiLine" Width="299px"></asp:TextBox>
        </div>
        <div style="background-color: #00CCFF;margin-right:2px;" class="auto-style7">

            <table class="auto-style8">
                <tr>
                    <td class="auto-style9">
                        <br />
                        <asp:TextBox ID="txt_adsoyad" placeHolder="Adınız Soyadınız" runat="server"  Width="255px"></asp:TextBox>
                        <asp:TextBox ID="txt_mail" placeHolder="E-mail Adresiniz" runat="server" Width="255px"></asp:TextBox>
                        <br />
                        <asp:Button ID="btn_yorumekle" runat="server" CssClass="menubuton" Text="Gönder" OnClick="btn_yorumekle_Click"  />
                        <asp:Label ID="lbl_bilgi" runat="server" ForeColor="#00CC00"></asp:Label>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_adsoyad" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidateRequestMode="Disabled">Ad Soyad giriniz</asp:RequiredFieldValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_yorumicerik" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Yorum Yazınız</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_mail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">E-mail Adresi giriniz</asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_mail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Hatalı E-mail</asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <br />
            <br />

        </div>
    </div>
    <div style="height:10px;width:100%;"></div>

</asp:Content>
