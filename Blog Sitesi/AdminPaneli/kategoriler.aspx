<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="Blog_Sitesi.AdminPaneli.kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 247px;
        }
        .auto-style3 {
            width: 477px;
        }
        .auto-style4 {
            width: 39px;
            height: 20px;
        }
        .auto-style5 {
            width: 76px;
        }
        .auto-style8 {
            width: 390px;
        }
        .auto-style9 {
            width: 49px;
        }
        .auto-style10 {
            width: 88%;
        }
        .auto-style11 {
            width: 137px;
        }
        .auto-style12 {
            width: 42px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div> 
        <div style="height:43px; background-color:cornflowerblue;font-weight:bolder;">&nbsp;<asp:Button ID="btn_artı" runat="server" Height="27px" OnClick="btn_artı_Click" Text="+" Width="41px" />
&nbsp;&nbsp;
            <asp:Button ID="btn_eksi" runat="server" Height="26px" OnClick="btn_eksi_Click" Text="-" Width="40px" />
&nbsp;Kategori Ekleme Paneli</div>
        <asp:Panel ID="pnl_kategoriekle" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: right">Kategori Adı</td>
                    <td>
                        <asp:TextBox ID="txt_kategoriadi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Kategori Sıra</td>
                    <td>
                        <asp:TextBox ID="txt_sira" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Kategori Resmi</td>
                    <td>
                        <asp:FileUpload ID="fu_kategoriresim" runat="server" CssClass="textboxGorsel" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">
                        <asp:Button ID="btn_kategoriekle" runat="server" CssClass="butonGorsel" Text="ekle" OnClick="btn_kategoriekle_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </asp:Panel>
        <div style="height:30px;">   </div>
        <div style="height:43px; background-color:cornflowerblue;font-weight:bolder;">&nbsp;<asp:Button ID="btn_karti" runat="server" Height="27px"  Text="+" Width="41px" OnClick="btn_karti_Click" />
&nbsp;&nbsp; 
            <asp:Button ID="btn_keksi" runat="server" Height="26px"  Text="-" Width="40px" OnClick="btn_keksi_Click" />
            &nbsp;Kategori Düzenleme Paneli</div>
        <asp:Panel ID="pnl_kategoriDuzenle" runat="server">
            <asp:DataList ID="DataList_kategorigetir" runat="server" Width="700px">
                <HeaderTemplate>
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style8">KATEGORİ ADI</td>
                            <td class="auto-style11">GÜNCELLE</td>
                            <td class="auto-style9">SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Literal>
                            </td>
                            <td class="auto-style5">
                                <a href="kategoriguncelle.aspx?kategoriID=<%# Eval("kategoriID") %>"><img alt="" class="auto-style4" src="../temalar/edit-1294443_960_720.png" /></a>
                            </td>
                            <td>
                                &nbsp;<a href="kategoriler.aspx?kategoriID=<%#Eval("kategoriID") %>&islem=sil"><img alt="" class="auto-style12" src="../temalar/.jpg" /></td></a>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </asp:Panel>
         <div style="height:30px;">   </div>
    </div>
</asp:Content>

