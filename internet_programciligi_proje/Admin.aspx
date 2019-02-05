<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="internet_programciligi_proje.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	</head>
<body>
	  
    <form id="form1" runat="server" style="background-image:url(images/704532.jpg);">>

        <div>
			
            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Anasayfa.aspx">Anasayfa</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Konu"></asp:Label>
&nbsp;<asp:TextBox ID="konu" runat="server" Width="295px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="konu" ErrorMessage="Bu alanı boş bırakmayın."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="İçerik"></asp:Label>
&nbsp;<br />
            <asp:TextBox ID="icerik" runat="server" Height="191px" TextMode="MultiLine" Width="349px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="icerik" ErrorMessage="Bu alanı boş bırakmayın."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Paylaş" />
        </div>
    </form>
	<p>
		&nbsp;</p>
	
           
		
</body>
</html>
