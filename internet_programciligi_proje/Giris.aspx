<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="internet_programciligi_proje.Giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image:url(images/704532.jpg);">
        <div>
            <asp:Label ID="Label1" runat="server" Text="E-Posta"></asp:Label>
&nbsp;<asp:TextBox ID="mail" runat="server"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="mail" ErrorMessage="Mail Alanını Doldurun!"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Parola"></asp:Label>
&nbsp;<asp:TextBox ID="parola" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="parola" ErrorMessage="RequiredFieldValidator">Parola Alanını Doldurun!</asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş Yap" />
            <br />
            <asp:Label ID="bilgi" runat="server"></asp:Label>
        	<br />
			<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Kayit.aspx">Kayıt Ol</asp:HyperLink>
        </div>
    </form>
</body>
</html>
