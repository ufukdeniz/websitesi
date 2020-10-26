<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="makaleler.aspx.cs" Inherits="Blog_Sitesi.AdminPaneli.makaleler" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 116%;
            height: 616px;
        }

        .auto-style3 {
            margin-left: 40px;
        }

        .auto-style4 {
            width: 147px;
        }

        .auto-style5 {
            height: 25px;
            border: 1px dotted cornflowerblue;
        }

        .auto-style6 {
            width: 99%;
        }

        .auto-style7 {
            width: 390px;
        }

        .auto-style8 {
            width: 155px;
        }

        .auto-style9 {
            width: 476px;
        }

        .auto-style11 {
            width: 37px;
            height: 18px;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style14 {
            width: 209px;
        }
        .auto-style15 {
            height: 25px;
            border: 1px dotted cornflowerblue;
        }
        .auto-style16 {
            width: 40px;
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height: 43px; background-color: cornflowerblue; font-weight: bolder;">
            <p class="auto-style3">
                &nbsp;<asp:Button ID="btn_marti" runat="server" Height="27px" Text="+" Width="41px" OnClick="btn_marti_Click" />
                &nbsp;&nbsp;
            <asp:Button ID="btn_meksi" runat="server" Height="26px" Text="-" Width="40px" OnClick="btn_meksi_Click" />
                &nbsp;Makale Ekleme Paneli
            </p>
        </div>
        <asp:Panel ID="pnl_makaleekle" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">Kategori</td>
                    <td>
                        <asp:DropDownList ID="ddl_kategori" runat="server" CssClass="dropdownlistGorsel">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">Başlık</td>
                    <td>
                        <asp:TextBox ID="txt_makalebaslik" runat="server" CssClass="auto-style5" Width="544px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">Özet</td>
                    <td>
                        <asp:TextBox ID="txt_makaleozet" runat="server" CssClass="auto-style5" Height="100px" TextMode="MultiLine" Width="544px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">İçerik</td>
                    <td>
                        <CKEditor:CKEditorControl ID="txt_makaleicerik" BasePath="/ckeditor/" runat="server" Width="544px"></CKEditor:CKEditorControl>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">Slider</td>
                    <td>
                        <asp:FileUpload ID="fu_slider" runat="server" Width="544px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: right">
                        <asp:Button ID="btn_mekle" runat="server" CssClass="butonGorsel" Text="Ekle" OnClick="btn_mekle_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <div style="height: 30px;"></div>
        <div style="height: 43px; background-color: cornflowerblue; font-weight: bolder;">
            <p class="auto-style3">
                &nbsp;<asp:Button ID="btn_mdartı" runat="server" Height="26px" Text="+" Width="40px" OnClick="btn_mdartı_Click" />
                &nbsp;&nbsp;
            <asp:Button ID="btn_mdeksi" runat="server" Height="26px" Text="-" Width="40px" OnClick="btn_mdeksi_Click" />
                &nbsp;Makale Düzenleme Paneli
            </p>
        </div>
        <asp:Panel ID="pnl_makaleduzenle" runat="server">
            <asp:DataList ID="dtl_mgetir" runat="server" Width="697px">
                <HeaderTemplate>
                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style7">Makale Adı</td>
                            <td class="auto-style8">Güncelle</td>
                            <td>Sil</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style9">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                            </td>
                            <td>
                                <a href="makaleguncelle.aspx?makaleID=<%#Eval("makaleID") %>">
                                    <img alt="" class="auto-style11" src="../temalar/edit-1294443_960_720.png" /></a>
                            </td>
                            <td>
                                <a href="makaleler.aspx?makaleID=<%#Eval("makaleID")%>&islem=sil"><img alt="" class="auto-style16" src="../temalar/.jpg" /></td></a>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <div style="height: 30px;"></div>

        <div style="height: 43px; background-color: cornflowerblue; font-weight: bolder;">
            <p class="auto-style3">
                &nbsp;<asp:Button ID="btn_darti" runat="server" Height="26px" Text="+" Width="40px" OnClick="btn_darti_Click" />
                &nbsp;&nbsp;
            <asp:Button ID="btn_deksi" runat="server" Height="26px" Text="-" Width="40px" OnClick="btn_deksi_Click" />
                &nbsp;Makale Dosya Ekleme Paneli
            </p>
        </div>
        <asp:Panel ID="pnl_makaledosya" runat="server">
            <table class="auto-style12">
                <tr>
                    <td class="auto-style14" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14" style="text-align: right">Dosya Seç</td>
                    <td>
                        <asp:FileUpload ID="fu_mdosya" runat="server" CssClass="auto-style15" Width="335px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14" style="text-align: right">
                        <asp:Button ID="btn_mdekle" runat="server" OnClick="btn_mdekle_Click" Text="Ekle" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <div style="height: 30px;"></div>
    </div>
</asp:Content>
