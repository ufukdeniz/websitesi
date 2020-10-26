<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="makaleguncelle.aspx.cs" Inherits="Blog_Sitesi.AdminPaneli.makaleguncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 205px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Başlık</td>
            <td>
                <asp:TextBox ID="txt_makalebaslik" runat="server" Width="484px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Özet</td>
            <td>
                <asp:TextBox ID="txt_makaleozet" runat="server" TextMode="MultiLine" Width="484px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">İçerik</td>
            <td>
                <CKEditor:CKEditorControl ID="txt_makaleicerik" BasePath="/ckeditor/" runat="server" Width="489px"></CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Slider</td>
            <td>
                <asp:FileUpload ID="fu_slider" runat="server" Width="483px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Yorum Sayısı</td>
            <td>
                <asp:TextBox ID="txt_yorumsayısı" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="btn_guncelle" runat="server" Text="Güncelle" OnClick="btn_guncelle_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
