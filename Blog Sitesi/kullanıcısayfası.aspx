<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="kullanıcısayfası.aspx.cs" Inherits="Blog_Sitesi.kullanıcısayfası" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   

    <style type="text/css">
        .auto-style3 {
            width: 20px;
            height: 17px;
        }
        .auto-style4 {
            width: 19px;
            height: 17px;
        }
        .auto-style5 {
            width: 24px;
            height: 24px;
        }
        .auto-style7 {
            width: 690px;
            float: left;
            height: 27px;
        }
        .auto-style9 {
            width: 24px;
            height: 23px;
        }
    </style>
   

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    &nbsp;&nbsp;&nbsp;
    <div style="width:690px;height:auto;margin:0 auto;"></div>
    <asp:DataList ID="dtl_makale" runat="server" Width="690px" >
        <ItemTemplate>
            <div style="width:690px;margin:0 auto;height:auto;">

                <div style="width: 690px; height: 40px; float: left">

                    <div style="width: 40px; height: 40px; float: left">
                        <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResmi") %>' Width="40px" />
                    </div>
                    <div style="width: 650px; height: 40px; float: left">
                        <a href="makaledetay.aspx?makaleID=<%#Eval("makaleID") %>"> <asp:Label ID="Label1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label></a>
                    </div>

                </div>
                <div style="float:left; height:auto;width:690px; padding-bottom: 10px;">

                    <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makaleOzet") %>'></asp:Label>

                </div>
                <div style="line-height:20px;font-size:12px,; background-color: #00CCFF;" class="auto-style7">
                    <div style="width:auto; height:20px;float:left;margin-right:15px;">

                        <img alt="" class="auto-style3" src="temalar/png-transparent-computer-icons-symbol-clock-clock-free-button-cdr-angle-eps.png" height="12px" width="12px" />

                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>'></asp:Label>

                    </div>
                    <div style="width:auto; height:20px;float:left;margin-right:15px;">

                        <img alt="" class="auto-style9" src="temalar/tıklanma.png" />

                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleOkunma") %>'></asp:Label>

                    </div>
                    <div style="width:auto; height:20px;float:left;margin-right:15px;">

                        <img alt="" class="auto-style5" src="temalar/61482382-comment-icon.png" height="12px" width="12px" />

                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleYorumSayisi") %>'></asp:Label>

                    </div>

                </div>
                <div style="width:100%;height:40px;float:left"></div>
            </div>
        </ItemTemplate>
    </asp:DataList>
     
</asp:Content>

