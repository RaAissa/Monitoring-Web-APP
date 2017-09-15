
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HtmlDashlet.ascx.cs" Inherits="ProjetVeille.JDash.Dashlets.HtmlDashlet" %>


<script type="text/javascript">

    function hideDiv2() {
        if (document.getElementById) { // DOM3 = IE5, NS6
            document.getElementById('hideshow2').style.visibility = 'hidden';
        } else {
            if (document.layers) { // Netscape 4
                document.hideshow.visibility = 'hidden';
            } else { // IE 4
                document.all.hideshow.style.visibility = 'hidden';
            }
        }
    }

    function showDiv2() {
        if (document.getElementById) { // DOM3 = IE5, NS6
            document.getElementById('hideshow2').style.visibility = 'visible';
        } else {
            if (document.layers) { // Netscape 4
                document.hideshow.visibility = 'visible';
            } else { // IE 4
                document.all.hideshow.style.visibility = 'visible';
            }
        }
    }
    function hideDiv3() {
        if (document.getElementById) { // DOM3 = IE5, NS6
            document.getElementById('hideshow3').style.visibility = 'hidden';
        } else {
            if (document.layers) { // Netscape 4
                document.hideshow.visibility = 'hidden';
            } else { // IE 4
                document.all.hideshow.style.visibility = 'hidden';
            }
        }
    }

    function showDiv3() {
        if (document.getElementById) { // DOM3 = IE5, NS6
            document.getElementById('hideshow3').style.visibility = 'visible';
        } else {
            if (document.layers) { // Netscape 4
                document.hideshow.visibility = 'visible';
            } else { // IE 4
                document.all.hideshow.style.visibility = 'visible';
            }
        }
    }
</script>

 

<style type="text/css">
  
     #fade2{
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

    
#hideshow2{
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

</style>





<p>
    <asp:Timer ID="waitTimer" runat="server" Enabled="false" Interval="1000" OnTick="Timer1_Tick">
    </asp:Timer>

<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
    <asp:View ID="loadingview" runat="server">
    </asp:View>
    <asp:View ID="loadedview" runat="server">
        <asp:Repeater ID="ctlRep" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
            <HeaderTemplate>

                <ul class="rssList">
                </ul>
            </HeaderTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
            <ItemTemplate>
                <li>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("link") %>' Target="_blank" Text='<%# Eval("title") %>'></asp:HyperLink>
                    <p>
                        <asp:Literal ID="description" runat="server" Mode="PassThrough"></asp:Literal>
                        
                    </p>
                <script>function fbs_click()
{u=location.href;t=document.title;window.open
('http://www.facebook.com/sharer.php?u=<%# Eval("link") %>'+
encodeURIComponent(u)+'&t='+encodeURIComponent(t),
'sharer','toolbar=0,status=0,width=626,height=436');return false;}</script>
<a href="http://www.facebook.com/share.php?u=<%# Eval("link") %>" target="_blank" onclick="return fbs_click()" target="_blank"> <img src= "http://b.static.ak.fbcdn.net/images/share/
facebook_share_icon.gif?8:26981" alt="" /></a>
                    <iframe src="//www.facebook.com/plugins/like.php?href=<%# Eval("link") %>&amp;send=true&amp;layout=button_count&amp;width=130&amp;show_faces=false&amp;font&amp;colorscheme=light&amp;action=like&amp;height=35" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:130px; height:21px;" allowTransparency="true"></iframe>
                   <iframe allowtransparency="true" frameborder="0" scrolling="no"  src="http://platform.twitter.com/widgets/tweet_button.html?url=<%# Eval("link") %>" style="width:130px; height:20px;"></iframe>
                   <a href="ClientMail.aspx"><span>
                       <img src="../../Images/email.png" /></span></a>
                      </br>
                    </br>
              
                 
                 


                </li>
            </ItemTemplate>
        </asp:Repeater>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </asp:View>
</asp:MultiView>