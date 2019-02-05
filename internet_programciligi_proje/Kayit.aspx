<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kayit.aspx.cs" Inherits="internet_programciligi_proje.Kayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image:url(images/704532.jpg);">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ad"></asp:Label>
&nbsp;<asp:TextBox ID="ad" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ad" ErrorMessage="Bu alanı doldurun!"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Soyad"></asp:Label>
&nbsp;<asp:TextBox ID="soyad" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="soyad" ErrorMessage="Bu alanı doldurun!"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="E-Posta"></asp:Label>
&nbsp;<asp:TextBox ID="mail" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="mail" ErrorMessage="Bu alanı doldurun!"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Parola"></asp:Label>
&nbsp;<asp:TextBox ID="parola" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="parola" ErrorMessage="Bu alanı doldurun!"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Parola (Tekrar)"></asp:Label>
&nbsp;<asp:TextBox ID="parolaT" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="parolaT" ErrorMessage="Bu alanı doldurun!"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="parola" ControlToValidate="parolaT" ErrorMessage="Parolalar Eşleşmiyor"></asp:CompareValidator>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kayıt Ol" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Giris.aspx">Giriş Yap</asp:HyperLink>
        </div>
    </form>
</body>
</html>
