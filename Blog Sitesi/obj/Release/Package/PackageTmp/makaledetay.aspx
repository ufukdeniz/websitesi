<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="makaledetay.aspx.cs" Inherits="Blog_Sitesi.makaledetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 20px;
            height: 17px;
        }
        .auto-style4 {
            width: 24px;
            height: 17px;
        }
        .auto-style5 {
            width: 24px;
            height: 24px;
        }
        .auto-style6 {
            height: 254px;
        }
    .auto-style7 {
        width: 300px;
        height: 250px;
        float: right;
    }
        .auto-style8 {
            height: 30px;
            width: 100%;
        }
    .auto-style9 {
        width: 24px;
        height: 20px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="width:690px;height:auto;margin:0 auto;"></div>
    <asp:DataList ID="dtl_makale" runat="server" Width="690px" >
        <ItemTemplate>
            <div style="width:690px;margin:0 auto;height:auto;">

                <div style="width: 690px; height: 40px; float: left">

                    <div style="width: 40px; height: 40px; float: left">
                        <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResmi") %>' Width="40px" />
                    </div>
                    <div style="width: 650px; height: 40px; float: left">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label>
                    </div>

                </div>
                <div style="float:left; height:auto;width:690px; padding-bottom: 10px;">

                    <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makaleIcerik") %>'></asp:Label>

                </div>
                <div style="width:690px;float:left;height:20px;line-height:20px;font-size:12px,; background-color: #00CCFF;">
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
        <div style="height:30px;width:100%;"></div>
    <div style="background-color:#00CCFF; color:#ffffff;text-align:center;font-size:24px;font-weight:bold;" class="auto-style8">YORUMLAR</div>
    <div style="width=690px;height:auto;margin:0 auto">

    </div>
    
    <asp:DataList ID="dtl_yorumlar" runat="server">
        <ItemTemplate>
            <div style="width: 690px; height: auto; float: left">
                <div style="float: left; width: 50px; height: 60px; border: 1px dotted #0000FF">
                    <asp:Image ID="Image4" runat="server" Height="50px" ImageUrl='<%# Eval("yorumResim") %>' Width="40px" />
                </div>
                <div style="float: left; height: auto; width: 620px">
                    <div style="float: left; width: 620px; height: 20px">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>-
                        <asp:Label ID="Label7" runat="server" Font-Size="10pt" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                    </div>
                    <div style="float:left;width:630px;height:auto">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                    </div>
                </div>
            </div>
            <div style="width: 690px; height: 20px; float: left">
            </div>
        </ItemTemplate>
    </asp:DataList>
    
    &nbsp;<div class="auto-style8"></div>


    <div style="background-color:#00CCFF; color:#ffffff;text-align:center;font-size:24px;font-weight:bold;" class="auto-style8">Yorum Yap</div>
    <div style="height:10px;width:100%;"></div>
    <div class="auto-style6">   

        <div style="width: 300px; height: 200px; float: left; background-color: #00CCFF;margin-left:2px;">
            <asp:TextBox ID="txt_yorumicerik" placeHolder="Yorum Girin" runat="server" Height="180px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </div>
        <div style="background-color: #00CCFF;margin-right:2px;" class="auto-style7">

            <table class="auto-style1">
                <tr>
                    <td>
                        <br />
                        <asp:TextBox ID="txt_adsoyad" placeHolder="Adınız Soyadınız" runat="server" OnTextChanged="TextBox1_TextChanged" Width="255px"></asp:TextBox>
                        <asp:TextBox ID="txt_mail" placeHolder="E-mail Adresiniz" runat="server" Width="255px"></asp:TextBox>
                        <br />
                        <asp:Button ID="btn_yorumekle" runat="server" CssClass="menubuton" Text="Gönder" OnClick="btn_yorumekle_Click" />
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
