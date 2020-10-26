<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yoneticigiris.aspx.cs" Inherits="Blog_Sitesi.AdminPaneli.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        *{
            margin:0;
            padding:0;
            border:0;



        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height:50px; background-color:#0094ff">
            <div style="float:left;width:250px;margin-top:20px;">UserName:<asp:TextBox ID="txt_username" runat="server"></asp:TextBox> </div>
            <div style="float:left;width:100px;margin-top:20px;">Password:</div>
            <div  style="float:right;width:300px;margin-top:20px;text-align:right">
                <asp:Label ID="lbl_bilgi" runat="server" Text="Yönetici Paneli" ForeColor="Red"></asp:Label></div>
            
            <div style="float:left;width:184px; margin-top:20px;">
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox> </div>
            
                <asp:Button ID="btn_enter" runat="server" Text="Enter" BackColor="White" ForeColor="#000000" Width="188px" Height="44px" OnClick="btn_enter_Click" />
            
        </div>
    </form>
</body>
</html>
