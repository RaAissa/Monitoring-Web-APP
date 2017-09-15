<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HtmlDashletEditor.ascx.cs" Inherits="ProjetVeille.JDash.Dashlets.HtmlDashletEditor" %>
<jdash:DashletTitleEditor ID="DashletTitleEditor1" runat="server" />
<jdash:DashletStylesList ID="DashletStylesList1" runat="server" />
<p>
    &nbsp;</p>
<div class="item">
    <span>Rss Url</span>
    <asp:TextBox ID="ctlRss" text="http://www.eurosport.fr/rss.xml" runat="server" Width="196px"></asp:TextBox>
</div>
<div class="item h">
    <span>Limit feeds</span>
    <asp:TextBox ID="ctlInterval" runat="server" Width="43px">1</asp:TextBox>
</div>
<p>
    &nbsp;</p>
<div class="item h">
    <span>Detailed View</span>
    <asp:CheckBox ID="ctlDesc" runat="server" />
</div>