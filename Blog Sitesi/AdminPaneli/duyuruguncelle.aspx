<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="duyuruguncelle.aspx.cs" Inherits="Blog_Sitesi.AdminPaneli.duyuruguncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 228px;
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
                <asp:TextBox ID="txt_dbaslik" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">İçerik</td>
            <td><CKEditor:CKEditorControl ID="txt_dicerik" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl></td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Resim</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="btn_dguncelle" runat="server" CssClass="butonGorsel" Text="Güncelle" OnClick="btn_dguncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
