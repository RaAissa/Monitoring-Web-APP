<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageDashboards.aspx.cs" Inherits="ProjetVeille.ManageDashboards" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="dashTitle" runat="server"></asp:TextBox>
    <asp:Button ID="createBtn" runat="server" Text="Create Dashboard" OnClick="createBtn_Click" /><br />
    <asp:Label ID="Label1" Text="Dashboards" runat="server" /><br />
    <asp:Repeater runat="server" id="listRepeater">
       <ItemTemplate>
          <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" Text='<%# Eval("title") %>' NavigateUrl='<%# string.Format("/DisplayDashboard.aspx?id={0}", Eval("Id")) %>'></asp:HyperLink> <br />
       </ItemTemplate>
    </asp:Repeater>
    </div>
    </form>
</body>
</html>
