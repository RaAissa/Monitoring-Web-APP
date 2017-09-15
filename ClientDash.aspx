<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientDash.aspx.cs" Inherits="ProjetVeille.ClientDash" %>
<%@ Register Assembly="JDash.WebForms" Namespace="JDash.WebForms" TagPrefix="jdash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"  xmlns:fb="http://ogp.me/ns/fb#">
<head id="Head1" runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title> Client</title>
     
    <link rel="stylesheet" href="css/Menu_profil.css" />
    <link rel="stylesheet" type="text/css" href="../css/sooperfish.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="../css/sooperfish-theme-large2.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="../css/sooperfish-theme-large.css" media="screen" />
    <script type="text/javascript" src="../Jquery/jquery-1.9.1.js"></script>
    <script  type="text/javascript"  src="../Jquery/jquery.collapse.js"></script>
    <script type="text/javascript" src="../Jquery/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="../Jquery/jquery.easing-sooper.js"></script>
	<script type="text/javascript" src="../Jquery/jquery.sooperfish.js"></script>


   

    <script type="text/javascript">
        $(document).ready(function () {
            $('ul.sf-menu').sooperfish();
        });
    </script>
    
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
 <script type="text/javascript">

     var anc_onglet = 'theme';
     change_onglet(anc_onglet);

        </script>
    <script type="text/javascript">


        function change_onglet(name) {
            document.getElementById('onglet_' + anc_onglet).className = 'onglet_0 onglet';
            document.getElementById('onglet_' + name).className = 'onglet_1 onglet';
            document.getElementById('contenu_onglet_' + anc_onglet).style.display = 'none';
            document.getElementById('contenu_onglet_' + name).style.display = 'block';
            anc_onglet = name;
        }

        </script>

   <style type="text/css">

     
       div#menu {
    position:absolute;
    height:55px;
 
           top: 1px;
           left: 476px;
       }

div#menu ul {
    margin: 0;
    padding: 0;
    list-style: none;
    float: left;
}


div#menu li {
    position: relative;
    z-index: 9;
    margin: 0;
    padding: 0;
    display: block;
    float: left;
}
   
div#menu li:hover>ul {
    left: -2px;
}
    
div#menu li div {
    list-style: none;
    float: left;
    position: absolute;
    top: 50px;
    left: 0;
    width: 208px;
    z-index: 11;
    visibility: hidden;
    padding: 0 0 9px 7px;
    _padding: 0 0 9px 3px;
    background: url(images/submenu-bottom.png) no-repeat 7px bottom;
    _background-image: url(images/submenu-bottom.gif);
    margin: 0 0 0 -9px;
}
div#menu li:hover>div {
    visibility: visible;
}

div#menu li.current a {}

/* menu::level1 */
div#menu a {
    position: relative;
    z-index: 10;
    height: 55px;
    display: block;
    float: left;	
    padding: 0 10px 0 10px;
   line-height: 55px;
    text-decoration: none;
}
div#menu span {
    font: normal 12px 'Lucida Sans Unicode','Lucida Grande',Helvetica,Arial,sans-serif;
    padding-top: 18px;
    color: #787878;
    font-weight:bold;
    text-transform:uppercase;
    display: block;
    cursor: pointer;
    background-repeat: no-repeat;		
}
div#menu ul a:hover span {
    color: #FFFFFF;
}

div#menu li { background: url(images/nav_separator.png) top left no-repeat; }
div#menu li.last span{
    background: url(images/nav_separator.png) top right no-repeat;
    padding: 18px 10px 16px 0;
}

/* menu::level2 */
div#menu ul ul li {
    background: url(images/nav_dropdown_sep.gif) left bottom repeat-x;
    padding: 4px 0;
    z-index: 9;	
}
div#menu ul ul {
    z-index: 12;	
    padding: 0;
    background: rgb(32,32,32) url(images/nav_dropdown_grad.png) right top no-repeat;
    margin-top:0px;
    margin-left:4px;
    margin-right:5px;
}
div#menu ul ul a {
  	width: 184px;
    padding: 0px 7px 3px 8px;
    height: auto;
    float: none;
    display: block;
    background:none;
    margin-bottom: 2px;
    z-index: -1;
}
div#menu ul ul a span {
	  padding: 0 10px 0px 10px;
    line-height: 20px;
    color: #787878;
    font-weight:normal;
    text-transform: none;
    background:none;
}
div#menu ul ul a:hover {
    background: url(images/submenu-selected-bottom.gif) no-repeat 8px bottom;
}
div#menu ul ul a:hover span {
    background: url(images/submenu-selected-top.gif) no-repeat 0px 0px;
    color: #fff;
}

div#menu ul ul li.last { background: none; }
div#menu ul ul li {
    width: 100%;
}



/* lava lamp */
div#menu li.back {
}
div#menu li.back .left {
}
    



      .list {
    text-shadow: #666666;
    display: inline-block;
    font-family: arial;
    margin: 2px;
    padding: 2px;
    text-decoration: none;
    text-shadow: 1px 1px 0 #FFFFFF;
    width: 210px;
}
.list:hover {
    background-color: #e9efef;
   
}
   h2 {
  margin: 10px 0;
  color: #000;
  font-size: 16px;
  text-shadow: 1px 1px 2px #fff;
  font-family :Arial;
}
    
h3 {
     width: 248px;
  margin: 0;

  background-image: linear-gradient(bottom, rgb(255,140,0) 14%, rgb(255,165,0) 57%);
  background-image: -o-linear-gradient(bottom, rgb(255,140,0) 14%, rgb(255,165,0) 57%);
  background-image: -moz-linear-gradient(bottom, rgb(255,140,0) 14%, rgb(255,165,0) 57%);
  background-image: -webkit-linear-gradient(bottom, rgb(255,140,0) 14%, rgb(255,165,0) 57%);
  background-image: -ms-linear-gradient(bottom, rgb(255,140,0) 14%, rgb(255,165,0) 57%);

 
    border: 1px solid #DCDCDC;
    display: inline-block;
    width: 225px;
}

h3 a {
  display: block;
  padding: 0px;
  padding-left: 12px;
  margin: 0;
  color: #fff;
  text-decoration: none;
  font-weight: normal;
  border-bottom: 0px solid rgba(128, 10, 85, 0.5);
  text-shadow: 1px 1px 1px rgb(0,0,0);
  font-family :'Times New Roman';
   
}

h3.open  { background: rgb(255,215,0);width:468px }
h3.open a {
            background-position: 1px -25px;
        }
h3 + div { padding: 10px; }
    
    
       
      #fade ,#fade1{
    background:#000;
    position:fixed;
    width:100%;
    height:100%;
    filter:alpha(opacity = 80);
    opacity:.80;
    -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=80)"; /*--Transparence sous IE 8--*/
   left:0;
    top:0;
    z-index:10;
}

    
#hideshow , #hideshow1{
    position:absolute;
    width:100%;
    height:100%;
    top:0;
    left:0;
}
.popup_block {
    background:#ddd;
    padding:5px 8px;
   
    float:left;
    width:500px;
    position:fixed;
    top:20%;
    left:50%;
   margin:0 0 0 -250px;
    z-index:100;
    height:auto;
}
.popup_block .popup {
    float:left;
    width:100%;
    background:#fff;
    margin:10px 0;
    padding:10px 0;
    border:1px solid #bbb;
    height : auto;
}

.popup h3 {
    
    padding:1px 5px;
    border-bottom:1px solid #bbb;
    font-size:1.5em;
    font-weight:normal;
}
.popup p {
   padding:5px 10px;
    margin:5px 0;
}
.popup img.cntrl {
    position:absolute;
    right:-10px;
    top:-15px;
}

.menuheader {
    border-bottom: 1px solid #999999;
    color: #191B28;
    font-family: arial;
    font-size: 12px;
    font-weight: bold;
    margin-bottom: 10px;
    margin-top: 10px;
    padding: 4px 10px;
    text-decoration: none;
    text-transform: uppercase;
}
     

        
        h1 {
            font-size:xx-large;
        }
        h2  {
        text-decoration:underline;
        }

         
      body {

          background-color: #EBEBEA;
    background-image: url('../images/page-bg.jpg');
    background-repeat: repeat-x;
        width:100%;
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

     .onglet
        {
                display:inline-block;
                margin-left:3px;
                margin-right:3px;
                padding:3px;
                cursor:pointer;
                 border-top-left-radius: 10px;
    border-top-right-radius: 10px;
     background: none repeat scroll 0 0 #D6CFBD;
    border: 1px solid #4F4026;
    color: #333333;
    margin: 0 5px 0 5px;
    padding: 5px 8px;
    
        }
        .onglet_0
        {
                background:#bbbbbb;
                border-bottom:1px solid black;
        }
        .onglet_1
        {
                background:#dddddd;
                border-bottom:0px solid black;
               padding-bottom: 6px;
               z-index:3;
        }
        .contenu_onglet
        {
                background-color:#dddddd;
                border:1px solid black;
                margin-top:-1px;
                padding:5px;
                display:none;
                width:480px;
                margin-left:5px
        }
        ul
        {
                margin-top:0px;
                margin-bottom:0px;
                margin-left:-10px
        }
      #contenu_onglet_ajout {
          height: 150px;
      }


      #Button1 {
    background-color: #ECE9E2;
    border: 1px solid #BBBBBB;
    border-radius: 2px 2px 2px 2px;
    clear: both;
    color: #63605A;
    cursor: pointer;
    font-family: arial;
    font-size: 11px;
    padding: 5px;
    text-decoration: none;
    text-transform: uppercase;
    bottom:30px;
    left:225px;
}
          #Button1:hover {
             background-color: #c1bfbe;
          }

      .onglet_1, .onglet_0, #Label2, #Label3 {
          font-weight: 700;
          font-size: 12px;
      }
       #para {
           margin: 0px auto auto auto;
           width: 264px;
           height: 24px;
       }
       </style>
    
    <script type="text/javascript">

        function hideDiv() {
            if (document.getElementById) { // DOM3 = IE5, NS6
                document.getElementById('hideshow').style.visibility = 'hidden';
            } else {
                if (document.layers) { // Netscape 4
                    document.hideshow.visibility = 'hidden';
                } else { // IE 4
                    document.all.hideshow.style.visibility = 'hidden';
                }
            }
        }

        function showDiv() {
            if (document.getElementById) { // DOM3 = IE5, NS6
                document.getElementById('hideshow').style.visibility = 'visible';
            } else {
                if (document.layers) { // Netscape 4
                    document.hideshow.visibility = 'visible';
                } else { // IE 4
                    document.all.hideshow.style.visibility = 'visible';
                }
            }
        }

        function hideDiv1() {
            if (document.getElementById) { // DOM3 = IE5, NS6
                document.getElementById('hideshow1').style.visibility = 'hidden';
            } else {
                if (document.layers) { // Netscape 4
                    document.hideshow.visibility = 'hidden';
                } else { // IE 4
                    document.all.hideshow.style.visibility = 'hidden';
                }
            }
        }

        function showDiv1() {
            if (document.getElementById) { // DOM3 = IE5, NS6
                document.getElementById('hideshow1').style.visibility = 'visible';
            } else {
                if (document.layers) { // Netscape 4
                    document.hideshow.visibility = 'visible';
                } else { // IE 4
                    document.all.hideshow.style.visibility = 'visible';
                }
            }
        }


    </script>

</head>
<body>
    <form id="form1" runat="server">

         
         <div id="hideshow" style="visibility: hidden;">
    <div id="fade1"></div>
    <div class="popup_block">
        <div class="popup">
            
            <a href="javascript:hideDiv()">
                <img src="images/icon_close.png" class="cntrl" alt="" />
            </a>
            <div class="menuheader">Modifier son profil</div>
            
            <asp:ChangePassword ID="ChangePassword1" runat="server">
                <ChangePasswordTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr>
                                        <td align="left" colspan="2">Modifier votre mot de passe</td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Mot de passe&nbsp;:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Un mot de passe est requis." ToolTip="Un mot de passe est requis." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">Nouveau mot de passe&nbsp;:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ErrorMessage="Un nouveau mot de passe est requis." ToolTip="Un nouveau mot de passe est requis." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirmer le nouveau mot de passe&nbsp;:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="La confirmation du nouveau mot de passe est requise." ToolTip="La confirmation du nouveau mot de passe est requise." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="La valeur de Confirmer le nouveau mot de passe doit correspondre à l'entrée Nouveau mot de passe." ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" Text="Modifier le mot de passe" ValidationGroup="ChangePassword1" />
                                        </td>
                                        <td>
                                            <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annuler" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ChangePasswordTemplate>
            </asp:ChangePassword>
       
            
        </div>
       
    </div>
</div>
        
         <div id="hideshow1" style="visibility: hidden;">
    <div id="Div2"></div>
             <div id="fade"></div>
    <div class="popup_block" >
        <div class="popup">
            
            <a href="javascript:hideDiv1()">
                <img src="images/icon_close.png" class="cntrl" alt="" />
            </a>
         
            <div class="systeme_onglets">
        <div class="onglets">
            <span class="onglet_1 onglet" id="onglet_theme" onclick="javascript:change_onglet('theme');">Thèmes prédéfinis</span>
            <span class="onglet_0 onglet" id="onglet_ajout"  onclick="javascript:change_onglet('ajout');">Ajouter un profil</span>
        </div>
        <div class="contenu_onglets" >
            <div class="contenu_onglet" id="contenu_onglet_theme" style="display: block";>
               <div class="col c1">
      

      <div class="menuheader" style="width:auto;"> Ajouter un flux à mes favoris</div>
      <div id="accordion-example" data-collapse="accordion">

        <h3>Sport</h3>
        <div><span class="list">
<img alt="" style="height:21px;width:21px;margin-right:10px;border:none; vertical-align:-5px;" src="http://www.eurosport.fr/favicon.ico"   />
Eurosport.fr</span>
            <span class="list">
<img alt="" style="height:21px;width:21px;margin-right:10px;border:none; vertical-align:-5px;" src="http://www.football365.fr/favicon.ico"   />
football365.fr</span>
       
                <span class="list">
<img alt="" style="height:21px;width:21px;margin-right:10px;border:none; vertical-align:-5px;" src="http://cdn-football.ladmedia.fr/includes/cobrand/default/img/icon-favicon.ico"              />
Football.fr</span>
                
  </div>

        <h3>Art - Culture - Mode</h3>
        <div><span class="list">
<img alt="" style="height:21px;width:21px;margin-right:10px;border:none; vertical-align:-5px;" src="http://www.gqmagazine.fr/favicon.ico" />
 <a href="index.php?flow=170" >GQ magazine</a></span>
  </div>    
          
            <h3>Cinéma</h3>
        <div><span class="list">
<img alt="" style="height:21px;width:21px;margin-right:10px;border:none; vertical-align:-5px;" src="http://www.allocine.fr/skin/allocine.ico"  />
          <a href="index.php?flow=170" >GQ magazine</a></span>
</div>



          <h3>Musique</h3>
        <div><span class="list">
<img alt="" style="height:21px;width:21px;margin-right:10px;border:none; vertical-align:-5px;" src="http://www.telerama.fr/favicon.ico"   />
<a href="index.php?flow=170" >GQ magazine</a></span>
</div>

          <h3>Auto</h3>
        <div><span class="list">
<img alt="" style="height:21px;width:21px;margin-right:10px;border:none; vertical-align:-5px;" src="http://news.autoplus.fr/favicon.ico "  />
Auto Plus</span></div>


          <h3>Santé</h3>
        <div><span class="list">
<img alt="" style="height:21px;width:21px;margin-right:10px;border:none; vertical-align:-5px;" src="http://medias.doctissimo.fr/html/doc/pinned-site/img/favicon16.ico" />
<a href="index.php?flow=4" style="width:200px;line-height: 27px;height: 27px;text-decoration:none;">Doctissimo</a></span>
</div>

          <h3>Science</h3>
        <div><span class="list">
<img alt="" style="height:21px;width:21px;margin-right:10px;border:none; vertical-align:-5px;" src="http://www.techno-science.net/favicon.ico" />
            <a href="index.php?flow=69" >Techno-science.net</a></span>
</div>


          <h3>People</h3>
        <div><span class="list">
<img alt="" style="height:21px;width:21px;margin-right:10px;border:none; vertical-align:-5px;" src="http://www.parismatch.com/includes/cobrand/img/favicon.ico" />
            <a href="index.php?flow=166" >Paris Match</a></span>
</div>


          <h3>Jeux Videos</h3>
        <div><span class="list">
<img alt="" style="height:21px;width:21px;margin-right:10px;border:none; vertical-align:-5px;" src="rss_grey.png" />
            <a href="index.php?flow=449" >Jeux Video.com</a></span>
 </div>
     </div>

    
    </div>
            </div>
            <div class="contenu_onglet" id="contenu_onglet_ajout">
                <div class="menuheader">
                    Remplissez les champs
                </div>

                <asp:TextBox ID="dashTitle" runat="server"></asp:TextBox>
    <asp:Button ID="createBtn" runat="server" Text="Creer le profil" OnClick="createBtn_Click" /><br />
    
            </div>
        </div>
    </div>
            
            
                       
       
            
        </div>
       </div>
    </div>




    
       
        <div id="banner">
            <div style="position : absolute;width: 53px; height: 46px; margin-left: 10px; margin-top: 8px; top: -8px; left: 13px;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/rss.png" style="margin-left: 0px; margin-top: 6px;position:absolute; top: -2px; left: -5px; width: 55px; height: 49px;" />
        </div>

        <div style="background-color: #222222;color:#fff;position:absolute; margin-top:0px auto;top: 11px; width: 364px; height: 32px; right: 896px; bottom: 446px;">
            <p style="margin:0px auto auto auto;
            width: 264px;
           height: 24px;position:absolute;font-size:20px; width: 350px; height: 25px;   top: 4px; left: 10px;font-family:'Sketch Rockwell'"> Outil de veille Informationelle</p>
        </div>

           <div style="position:absolute; top: 6px; left: 502px; width: 446px; height: 20px;">
             <ul class="sf-menu" id="nave">
    <li class="current">
      <a href="#a">Mes Profils</a>
      <ul>
        <li>
          <asp:Repeater runat="server" ID="listRepeater">
                                <ItemTemplate>
                                                                            
                                    <asp:HyperLink ID="HyperLink1" runat="server"  Text='<%# Eval("title") %>' NavigateUrl='<%# string.Format("/ClientDash.aspx?id={0}", Eval("Id")) %>'></asp:HyperLink>
                                    <br />

                                </ItemTemplate>
                            </asp:Repeater>
        </li>
        </ul>
    </li>
    <li>
      <a href="javascript:showDiv1()">Ajouter un profil</a>
    </li>
  </ul>
</div>
            

    <div style="position:absolute; top: -1px; left: 977px; width: 290px; height: 48px; margin-right: 8px; margin-left: 0px; margin-top: 2px;">
        <asp:Label ID="Label1" runat="server" style="color:white;position:absolute; top: 13px; left: 57px; height: 17px; right: 161px;" Text="Bienvenue" Font-Bold="True" Font-Size="Medium"></asp:Label>

          <asp:LoginName ID="LoginName1" runat="server" style="position:absolute; top: 14px; left: 184px; width: 64px; height: 22px;" Font-Bold="True" Font-Size="Large" ForeColor="#FF6A00" />
         


        <ul id="nav" style="position:absolute; top: 14px; left: 41px; height: 25px; margin-left: 5px; margin-top: 0px; margin-bottom: 4px; width: 200px;">
                <li><a href="#"><img  align="right" src="images/1366043775_options.png" style="position:absolute; top: -1px; left: 166px; height: 27px;" /></a>&nbsp;
                    <ul>
                        <li><a href="javascript:showDiv()" ><b>Modifier le profil</b></a></li>
                        <li><a href="#">
                            <b><asp:LoginStatus ID="LoginStatus2" runat="server" /></b>  </a></li>
                       
                    </ul>
                </li>
                
            </ul>
        


      </div>
    
    </div>

         <div style="height: 90px">

              <ul class="sf-menu" id="nave1">
    <li class="current">
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
    </li>
    <li>
      <asp:LinkButton ID="deleteDashboardBtn" runat="server" Visible="true" OnClick="deleteDashboardBtn_Click" >Supprimer le dashboard</asp:LinkButton>

             
    </li>
  </ul>
    </div>


    <div id="content">
    
        
        <jdash:DashboardView ID="myDashboard" UserDesignMode="full" runat="server" />
      
        
         </div>
            
        <div id="footer">
            
 <p id="para"> <%: DateTime.Now.Year %> &nbsp;Tous les droits sont reservés</p>
        </div>

    
    </form>
</body>
</html>
