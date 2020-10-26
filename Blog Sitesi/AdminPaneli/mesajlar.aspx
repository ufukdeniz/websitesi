<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="mesajlar.aspx.cs" Inherits="Blog_Sitesi.AdminPaneli.mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-right: 0;
        }
        .auto-style2 {
            width: 34px;
            height: 27px;
        }
        .auto-style3 {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="background-color:cornflowerblue;font-weight:bolder;" class="auto-style3">&nbsp;<asp:Button ID="btn_meartı" runat="server" Height="27px"  Text="+" Width="41px" OnClick="btn_meartı_Click"  />
&nbsp;&nbsp;
            <asp:Button ID="btn_meeksi" runat="server" Height="26px" Text="-" Width="40px" OnClick="btn_meeksi_Click"  />
&nbsp; Mesaj Paneli</div>
        <asp:Panel ID="dtl_mesaj" runat="server">
            <asp:DataList runat="server" ID="dtl_mesajicerik" CssClass="auto-style3" Width="700px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("iletisimAdSoyad") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("iletisimEmail") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("iletisimTarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                            </td>
                            <td>
                                <a href="mesajlar.aspx?iletisimID=<%#Eval("iletisimID") %>&islem=sil">  <img alt="" class="auto-style2" src="../temalar/istockphoto-1022975428-1024x1024.png" /></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("iletisimIcerik") %>'></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </asp:Panel>
</asp:Content>
