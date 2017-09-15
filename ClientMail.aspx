<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientMail.aspx.cs" Inherits="ProjetVeille.ClientMail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>Mail</title>
    <link rel="stylesheet" href="css/Menu_profil.css" />
    <script type="text/javascript" src="../Jquery/jquery-1.9.1.js"></script>
    
    <style type="text/css">
        
         body {

          background-color: #EBEBEA;
    background-image: url('../images/page-bg.jpg');
    background-repeat: repeat-x;
        width:1347px;
        margin:0 0;
        position:relative;
           top: 0px;
           left: 0px;
           height: 800px;
       }
      
        #banner {background-color: rgba(0, 0, 0, 0.3);  
          
            height:50px;
         
            background-size: cover;
          
            border-radius:  0 0 10px 10px;
          opacity:70;
          border:1px solid white;
       }

          #content {
           
                  height: auto !important;
    margin: 0 auto -60px;
    min-height: 100%;
              
        }


      #footer {
          height: 33px;
          position: relative;
          text-align: center;
          border: 1px solid white;
          font-weight: 700;
        background-color: rgba(0,0,0,0.3);
          top: 973px;
          width: 100%;
      }

        #Mail {
         position:absolute;
         top: 103px; 
         left: 365px; 
         width: 539px;
         background :rgba(0,0,0,0.8);
         padding-left:10px;
         border : 1px solid #000;
         border-radius : 3px 3px 3px 3px;
         color:white;
        }
        .menuheader {
    border-bottom: 1px solid #999999;
    color: #fff;
    font-family: arial;
    font-size: 12px;
    font-weight: bold;
    margin-bottom: 10px;
    margin-top: 10px;
    padding: 4px 10px;
    text-decoration: none;
    text-transform: uppercase;
}

    </style>
    <script type="text/javascript"  >
        function mainmenu() {
            $(" #nav ul ").css({ display: "none" }); // Opera Fix

            $(" #nav li").hover(function () {
                $(this).find('ul:first').css({ visibility: "visible", display: "block" }).show(400);
            }
            , function () {
                $(this).find('ul:first').css({ visibility: "hidden" });
            });
        }

        $(document).ready(function () {
            mainmenu();
        });
        </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div id="banner">
            <div style="position : absolute;width: 53px; height: 46px; margin-left: 10px; margin-top: 8px; top: -8px; left: 13px;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/rss.png" style="margin-left: 0px; margin-top: 6px;position:absolute; top: -2px; left: -5px; width: 55px; height: 49px;" />
        </div>

        <div style="background-color: #222222;color:#fff;position:absolute; margin-top:0px auto;top: 11px; width: 364px; height: 32px; right: 888px; bottom: 322px;">
            <p style="margin:0px auto auto auto;
            width: 264px;
           height: 24px;position:absolute;font-size:20px; width: 350px; height: 25px;   top: 4px; left: 10px;font-family:'Sketch Rockwell'"> Outil de veille Informationelle</p>
        </div>
           
            
            
</div>
            

    <div style="position:absolute; top: -1px; left: 977px; width: 290px; height: 48px; margin-right: 8px; margin-left: 0px; margin-top: 2px;">
        <asp:Label ID="Label1" runat="server" style="color:white;position:absolute; top: 13px; left: 57px; height: 17px; right: 161px;" Text="Bienvenue" Font-Bold="True" Font-Size="Medium"></asp:Label>

          <asp:LoginName ID="LoginName1" runat="server" style="position:absolute; top: 14px; left: 184px; width: 64px; height: 22px;" Font-Bold="True" Font-Size="Large" ForeColor="#FF6A00" />
         

        
        <ul id="nav" style="position :absolute; top: 14px; left: 41px; height: 25px; margin-left: 5px; margin-top: 0px; margin-bottom: 4px; width: 200px;">
                <li><a href="#"><img  align="right" src="images/1366043775_options.png" style="position:absolute; top: -1px; left: 166px; height: 27px;" /></a>&nbsp;
                    <ul>
                        <li><a href="javascript:showDiv()" ><b>Modifier le profil</b></a></li>
                        <li><a href="#">
                            <b><asp:LoginStatus ID="LoginStatus2" runat="server" /></b>  </a></li>
                       
                    </ul>
                </li>
                
            </ul>


      </div>
    
   
       
    <div id="content">
    
           
        <div id="Mail" >
   <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
    <p class="menuheader">
                
               
        Remplissez le Formulaire suivant</p>
    <p>
        De:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
            ControlToValidate="YourEmail" ValidationGroup="save" /><br />
        <asp:TextBox ID="YourEmail" runat="server" Width="250px" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="YourEmail" Display="Dynamic" SetFocusOnError="true" Text="Exemple: username@gmail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="save" />
        <br />
        <br />
          A:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
            ControlToValidate="HisEmail" ValidationGroup="save" /><br />
        <asp:TextBox ID="HisEmail" runat="server" Width="250px" />
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
            SetFocusOnError="true" Text="Exemple: username@gmail.com" ControlToValidate="YourEmail"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
            ValidationGroup="save" /><br />
        
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
            ControlToValidate="Comments" ValidationGroup="save" /><br />
        <asp:TextBox ID="Comments" runat="server" 
                TextMode="MultiLine" Rows="10" Width="400px" Text="Inserez un commentaire"/>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Envoyer" 
                    OnClick="Button1_Click" ValidationGroup="save" />
    </p>
</asp:Panel>
<p>
    <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
</p>  
        
        </div>
        
        
        </div>
            
        
        
        
        
        
              

        <div id="footer">
            
 <p id="para"> <%: DateTime.Now.Year %> &nbsp;Tous les droits sont reservés</p>
        </div>
    </div>
    </form>
</body>
</html>
