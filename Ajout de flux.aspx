<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajout de flux.aspx.cs" Inherits="ProjetVeille.Ajout_de_flux" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <asp:TextBox ID="txtURL" runat="server" Width="300px" /> <asp:Button ID="btnGO" Text="GO" runat="server" OnClick="btnGO_Click" />
    <br />
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" XPath="(rss/channel/item)[position()=1]"></asp:XmlDataSource>
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333">
      <ItemTemplate>
        <b><a href='<%# XPath("link") %>'><%# XPath("title") %></a></b><br />
        <span style="color:Red; font-size:10px;"><%# XPath("pubDate") %> </span><br />
        <span style="width:50%;">
          <%# XPath("description") %>
        </span><br /><br />
      </ItemTemplate>
      <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
      <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
      <AlternatingItemStyle BackColor="White" />
      <ItemStyle BackColor="#EFF3FB" />
      <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    </asp:DataList>









    </div>
    </form>
</body>
</html>
