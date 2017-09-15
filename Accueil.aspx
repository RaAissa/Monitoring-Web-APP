<%@ Page Title="" Language="C#" MasterPageFile="~/AccueilMaster.Master" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="ProjetVeille.Accueil" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <style type="text/css">

        #Ban {

            border-radius: 2px 2px 2px 2px;
            text-align:center;
            font-weight:700;
            background-color:#ff6a00;
           
        }
        #Tab {
            border:1px solid white;
            background:rgba(0,0,0,0.1);
            border-radius:2px 2px 2px 2px;
        }



    </style>








    <asp:Login ID="Login1"  style="position:absolute; top: -62px; left: 5px; width: 389px; height: 178px;" runat="server" DestinationPageUrl="~/Client.aspx">
        <LayoutTemplate>
            <table id="Tab" cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td  id="Ban" align="left" colspan="2" >Se connecter</td>
                            </tr>
                            <tr >
                                <td align="left" >
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nom d&#39;utilisateur&nbsp;:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Un nom d'utilisateur est requis." ToolTip="Un nom d'utilisateur est requis." ValidationGroup="Login1"><asp:Image id="image1" runat="server"  ImageUrl="~/images/bouton-erreur-icone-3840-16.png" /></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Mot de passe&nbsp;:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Un mot de passe est requis." ToolTip="Un mot de passe est requis." ValidationGroup="Login1"><asp:Image id="image" runat="server"  ImageUrl="~/images/bouton-erreur-icone-3840-16.png" /></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Mémoriser le mot de passe." />
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Se connecter" ValidationGroup="Login1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:Login>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table style="width: 100%; height: 747px;">
    <tr>
        <td style="width: 609px; border-right:solid #ff6a00 2px; height: 375px;">
            <h2 style="position:absolute; top: 148px; left: 137px; height: 61px; width: 421px;">Recherchez un  théme dans notre base de données :<br />
            </h2>


            <asp:Label ID="Label2" runat="server" Text="Saisissez un mot clé:" style="position:absolute; top: 260px; left: 141px; width: 136px; height: 21px;"></asp:Label>


            <asp:TextBox ID="TextBox1" runat="server" style="position:absolute; top: 257px; left: 289px; height: 16px; width: 148px;" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>


            <asp:ImageButton ID="ImageButton1" title="recherche" runat="server" style="position:absolute; top: 254px; left: 460px; width: 29px; height: 29px;" ImageUrl="~/images/1365949507_document_search.png" />

            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
                        <div align="left" bgcolor="#ff6a00">
                        
                        <div style="position:absolute;margin-top:0px; top: 324px; left: 39px;">
			<div class="box_skitter box_skitter_large" > 
				<ul>
					<li><a href="Untitled-1.html">
                        <img src="Images/Capture.PNG"  class="cube"  /></a><div class="label_text"><p>cube</p></div></li>
					<li><a href="#cubeRandom"><img src="images/2.jpg" class="cubeRandom" /></a><div class="label_text"><p>cubeRandom</p></div></li>
					<li><a href="#block"><img src="images/4.jpg" class="block" /></a><div class="label_text"><p>block</p></div></li>
					<li><a href="#cubeStop"><img src="images/4.jpg" class="cubeStop" /></a><div class="label_text"><p>cubeStop</p></div></li>
					
				</ul>
                

			</div>
            <MARQUEE WIDTH="400px" height="30px" BGCOLOR="#ff6a00" style="font-size:18px; margin-left: 129px;">
                      soyez  les bienvenue dans  notre outil de  veille  
             </MARQUEE>
            
                		    
				</div>
                



        </td>
        <td style="height: 500px; width:600px;">
            <br /><style>

    .Com {
    
        min-width: 194px;
    padding: 7px 20px;
    text-align: center;
        font-family: 'Freight Sans Bold';
    font-weight: normal !important;
    text-rendering: optimizelegibility;
        margin-bottom: 10px;
    margin-top: 10px;   
     font-weight: bold;   
      font-size: 19px;
    line-height: 126%;  
    
     background-color:#4169e1;
          /* -moz-linear-gradient(center top , #67AE55, #578843) repeat scroll 0 0 #69A74E*/;
    border-color: #3B6E22 #3B6E22 #2C5115;
    box-shadow: 0 1px 1px #A4E388 inset;    border: 1px solid;
    border-radius: 5px 5px 5px 5px;
    color: #FFFFFF;
    cursor: pointer;
    display: inline-block;
    letter-spacing: 1px;
    position: relative;
    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.5);
    }

                      .Com:hover {
                          background-color: #4180e1;
                      }

.box{
                          border-color: #BDC7D8;
                          border-radius: 5px 5px 5px 5px;
                          margin: 0;
                          width: 377px;
                          font-size: 18px;
                          padding: 8px 10px;
                      }

                 




</style>
            <asp:CreateUserWizard ID="CreateUserWizard1" style="position:absolute; top: 307px; left: 829px; width: 271px; height: 341px; margin-left: 0px;" runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser1">
                <CreateUserButtonStyle BorderColor="Gray" ForeColor="" CssClass="Com " />
                <WizardSteps>
                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" >
                        <ContentTemplate>
                            <table style="height: 298px; width: 357px;">
                                <tr>
                                    <td align="left" style="text-decoration:underline;text-justify:auto; height: 63px;" colspan="2"><h2 style="position:absolute; top: -1px; left: 3px; height: 62px; width: 352px; margin-top: 0px; margin-bottom: 2px;">Inscrivez-vous pour obtenir votre nouveau compte:</h2></td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nom d&#39;utilisateur&nbsp;:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Un nom d'utilisateur est requis." ToolTip="Un nom d'utilisateur est requis." ValidationGroup="CreateUserWizard1"> <asp:image id="image" runat="server"  ImageUrl="~/images/bouton-erreur-icone-3840-16.png" /></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Mot de passe&nbsp;:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Un mot de passe est requis." ToolTip="Un mot de passe est requis." ValidationGroup="CreateUserWizard1"> <asp:Image id="image2" runat="server"  ImageUrl="~/images/bouton-erreur-icone-3840-16.png" /></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirmer le mot de passe&nbsp;:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="La confirmation du mot de passe est requise." ToolTip="La confirmation du mot de passe est requise." ValidationGroup="CreateUserWizard1"> <asp:Image id="image3" runat="server"  ImageUrl="~/images/bouton-erreur-icone-3840-16.png" /></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">Adresse de messagerie&nbsp;:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="Une adresse de messagerie est requise." ToolTip="Une adresse de messagerie est requise." ValidationGroup="CreateUserWizard1"> <asp:Image id="image4" runat="server"  ImageUrl="~/image/bouton-erreur-icone-3840-16.png" />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Static" ErrorMessage="L'adresse E-mail n'est pas valide." EnableClientScript="False" runat="server"/>
                                        </asp:RequiredFieldValidator></td></tr><tr>
                                    <td align="left">
                                        <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Question de sécurité&nbsp;:</asp:Label></td><td>
                                        <asp:TextBox ID="Question" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Une question de sécurité est requise." ToolTip="Une question de sécurité est requise." ValidationGroup="CreateUserWizard1"> <asp:image id="image5" runat="server"  ImageUrl="~/images/bouton-erreur-icone-3840-16.png" /></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Réponse de sécurité&nbsp;:</asp:Label></td><td>
                                        <asp:TextBox ID="Answer" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Une réponse de sécurité est requise." ToolTip="Une réponse de sécurité est requise." ValidationGroup="CreateUserWizard1"> <asp:Image id="image6" runat="server"  ImageUrl="~/images/bouton-erreur-icone-3840-16.png" /></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="2" style="color:Red;">
                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="Le mot de passe et le mot de passe de confirmation doivent correspondre." ValidationGroup="CreateUserWizard1"></asp:CompareValidator></td></tr><tr>
                                    <td align="left" colspan="2" style="color:Red;">
                                        
                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"> </asp:Literal></td></tr></table></ContentTemplate></asp:CreateUserWizardStep><asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
                </WizardSteps>
            </asp:CreateUserWizard>
        </td>

        
    

    </tr>
</table>


</asp:Content>

