<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="Blog_Sitesi.AdminPaneli.yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: auto;
            margin-bottom: 0;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 404px;
        }
        .auto-style5 {
            width: 33px;
            height: 22px;
        }
        .auto-style6 {
            width: 33px;
            height: 28px;
            margin-left: 137;
        }
        .auto-style7 {
            width: 35px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:43px; background-color:cornflowerblue;font-weight:bolder;">&nbsp;<asp:Button ID="btn_oyartı" runat="server" Height="27px"  Text="+" Width="41px" OnClick="btn_oyartı_Click" />
&nbsp;&nbsp;
            <asp:Button ID="btn_oyeksi" runat="server" Height="26px"  Text="-" Width="40px" OnClick="btn_oyeksi_Click" />
&nbsp;Onaysız Yorum  Paneli</div>
        <asp:Panel ID="pnl_onaysızyorum" runat="server">


        <asp:DataList ID="dtl_yorum" runat="server" Width="700px">
            <ItemTemplate>
                <div style="height: auto; width: 690px;" class="auto-style1">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="60px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left">
                        <div style="float: left; width: 590px; height: 25px">
                        </div>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                        -&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("yorumEmail") %>'></asp:Label>
                        -&nbsp;
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("yorumTarih","{0:dd:mmmm:yyyy}") %>'></asp:Label>
                    </div>
                    <div style="width:590px;height:25px;float:left;">

                        Makale:<asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label>

                    </div>
                    <div style="width:590px;height:auto;float:left;">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                    </div>
                    <div style="width:590px;height:25px;float:left;">
                        <table class="auto-style2" style="text-align: right">
                            <tr>
                                <td class="auto-style4">
                                    <a href="yorumguncelle.aspx?yorumID=<%#Eval("yorumID") %>&makaleID=<%#Eval("makaleID") %>"><img alt="" class="auto-style5" src="../temalar/edit-1294443_960_720.png" /></a>
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <a href="yorumlar.aspx?yorumID=<%#Eval("yorumID") %>&islem=sil">  <img alt="" class="auto-style6" src="../temalar/istockphoto-1022975428-1024x1024.png" /></a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <a href="yorumcevap.aspx?makaleID=<%#Eval("makaleID") %>">  <img alt="" class="auto-style7" src="../temalar/61482382-comment-icon.png" /></a> 
                </div>
                <div style="width:690px;height:30px;"></div>
            </ItemTemplate>
        </asp:DataList>
            </asp:Panel>
        <div style="height:30px;">   </div>
    </div>
    <div style="height:30px;">   </div>
    <div style="height:43px; background-color:cornflowerblue;font-weight:bolder;">&nbsp;<asp:Button ID="btn_ooarti" runat="server" Height="27px"  Text="+" Width="41px" OnClick="btn_ooarti_Click"  />
&nbsp;&nbsp;
            <asp:Button ID="btn_ooeksi" runat="server" Height="26px"  Text="-" Width="40px" OnClick="btn_ooeksi_Click"  />
        &nbsp;Onaylanan Yorum  Paneli</div>
        <asp:Panel ID="pnl_onaylıyorum" runat="server">


        <asp:DataList ID="dtl_yorumonay" runat="server" Width="700px">
            <ItemTemplate>
                <div style="height: auto; width: 690px;" class="auto-style1">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="60px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left">
                        <div style="float: left; width: 590px; height: 25px">
                        </div>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                        -&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("yorumEmail") %>'></asp:Label>
                        -&nbsp;
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("yorumTarih","{0:dd:mmmm:yyyy}") %>'></asp:Label>
                    </div>
                    <div style="width:590px;height:25px;float:left;">

                        Makale:<asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label>

                    </div>
                    <div style="width:590px;height:auto;float:left;">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                    </div>
                    <div style="width:590px;height:25px;float:left;">
                        <table class="auto-style2" style="text-align: right">
                            <tr>
                                <td class="auto-style4">
                                    <img alt="" class="auto-style5" src="../temalar/edit-1294443_960_720.png" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                     <a href="yorumlar.aspx?yorumID=<%#Eval("yorumID") %>&islemiki=siliki&makaleID=<%#Eval("makaleID") %>"> <img alt="" class="auto-style6" src="../temalar/istockphoto-1022975428-1024x1024.png" /></a>
                                </td>
                            </tr>
                        </table>
                    </div>
                   <img alt="" class="auto-style7" src="../temalar/61482382-comment-icon.png" />
                </div>
                <div style="width:690px;height:30px;"></div>
            </ItemTemplate>
        </asp:DataList>
            </asp:Panel>
</asp:Content>
