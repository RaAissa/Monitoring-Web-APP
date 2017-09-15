<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayDashboard.aspx.cs" Inherits="ProjetVeille.DisplayDashboard" %>

<%@ Register Assembly="JDash.WebForms" Namespace="JDash.WebForms" TagPrefix="jdash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       <jdash:ResourceManager ID="ResourceManager1" runat="server" />
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          <ContentTemplate>
             <asp:Repeater runat="server" id="modulesList" OnItemCommand="modulesList_ItemCommand">
                <ItemTemplate>
                   <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("title") %>' CommandArgument='<%# Eval("id") %>'></asp:LinkButton>
                </ItemTemplate>
             </asp:Repeater>
          </ContentTemplate>
       </asp:UpdatePanel>
       <jdash:DashboardView ID="myDashboard" UserDesignMode="full" runat="server" />





    </div>
    </form>
</body>
</html>
