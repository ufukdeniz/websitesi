<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="duyurular.aspx.cs" Inherits="Blog_Sitesi.AdminPaneli.duyurular" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 206px;
        }
        .auto-style3 {
            width: 33px;
            height: 23px;
        }
        .auto-style4 {
            width: 37px;
            height: 26px;
        }
        .auto-style5 {
            width: 310px;
        }
        .auto-style6 {
            width: 113px;
        }
        .auto-style7 {
            width: 26px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         <div style="height:43px; background-color:cornflowerblue;font-weight:bolder;">&nbsp;<asp:Button ID="btn_deartı" runat="server" Height="27px"  Text="+" Width="41px" OnClick="btn_deartı_Click" />
&nbsp;&nbsp;
            <asp:Button ID="btn_deeksi" runat="server" Height="26px" Text="-" Width="40px" OnClick="btn_deeksi_Click" />
&nbsp;Duyuru Ekleme Paneli</div>
        <asp:Panel ID="pnl_duyuruekleme" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Başlık</td>
                    <td>
                        <asp:TextBox ID="txt_dbaslik" runat="server" Width="484px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">İçerik</td>
                    <td><CKEditor:CKEditorControl ID="ckeditor" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_duyuruekle" runat="server" CssClass="butonGorsel" OnClick="btn_duyuruekle_Click" Text="Ekle" />
                    </td>
                </tr>
            </table>
            </asp:Panel>
        <div style="height:30px;">   </div>
         <div style="height:43px; background-color:cornflowerblue;font-weight:bolder;">&nbsp;<asp:Button ID="btn_ddartı" runat="server" Height="27px"  Text="+" Width="40px" OnClick="btn_ddartı_Click"  />
&nbsp;&nbsp;
            <asp:Button ID="btn_ddeksi" runat="server" Height="27px" Text="-" Width="40px" OnClick="btn_ddeksi_Click"  />
&nbsp;Duyuru Düzenleme Paneli</div>
        <asp:Panel ID="pnl_duyurudüzenle" runat="server">
            <asp:DataList ID="dtl_duyurugetir" runat="server" Width="697px">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>Düzenle</td>
                            <td>Güncelle</td>
                            <td>Sil</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("duyurularBaslik") %>'></asp:Literal>
                            </td>
                            <td>
                                <a href="duyuruguncelle.aspx?duyurularID=<%#Eval("duyurularID") %>"><img alt="" class="auto-style3" src="../temalar/edit-1294443_960_720.png" /></a>
                            </td>
                            <td class="auto-style6">
                                <a href="duyurular.aspx?duyurularID=<%#Eval("duyurularID") %>&islem=sil"> <img alt="" class="auto-style4" src="../temalar/depositphotos_109267586-stock-illustration-recycle-bin-sign-icon-bin.jpg" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </asp:Panel>
    </div>
</asp:Content>
