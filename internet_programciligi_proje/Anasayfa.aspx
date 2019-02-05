<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="internet_programciligi_proje.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image:url(images/704532.jpg);">
        <div>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin.aspx">Panel</asp:HyperLink>
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="gonderi_id" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <asp:Label ID="gonderiLabel" runat="server" Text='<%# Eval("gonderi") %>' />
                    <br />
                    <asp:Label ID="gonderenLabel" runat="server" Text='<%# Eval("gonderen") %>' /> Tarafından
                    <br />
                    <asp:Label ID="tarihLabel" runat="server" Text='<%# Eval("tarih") %>' /> Tarihinde gönderildi.
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [gonderiler]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
