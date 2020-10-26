<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="yorumcevap.aspx.cs" Inherits="Blog_Sitesi.AdminPaneli.yorumcevap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="text-align: center">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Admin:<asp:TextBox ID="txt_adminadsoyad" runat="server" CssClass="textboxGorsel" Width="370px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Yorum:<asp:TextBox ID="txt_yorumIcerik" runat="server" Height="80px" TextMode="MultiLine" Width="370px"></asp:TextBox>
                <br />
                <asp:Button ID="btn_yorumcevap" runat="server" CssClass="butonGorsel" OnClick="btn_yorumcevap_Click" Text="Cevap Yaz" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
