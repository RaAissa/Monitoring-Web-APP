<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Essai.aspx.cs" Inherits="ProjetVeille.Essai" %>

<html>
<head>

    <title>A very basic Superfish menu example</title>
		<meta http-equiv="content-type" content="text/html;charset=utf-8">
		<link rel="stylesheet" type="text/css" href="../css/sooperfish.css" media="screen">
		<link rel="stylesheet" type="text/css" href="../css/sooperfish-theme-large2.css" media="screen">
		<script type="text/javascript" src="../Jquery/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="../Jquery/jquery.easing-sooper.js"></script>
		<script type="text/javascript" src="../Jquery/jquery.sooperfish.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            $('ul.sf-menu').sooperfish();
        });
    </script>
</head>

<body >
    
    <form id="form1" runat="server">
        
 More script and css style
: <a href="http://www.htmldrive.net/" title="HTML DRIVE - Free DHMTL Scripts,Jquery plugins,Javascript,CSS,CSS3,Html5 Library">www.htmldrive.net </a>
<br>
<br>

  <ul class="sf-menu" id="nav">
    <li class="current">
      <a href="#a">Fruits by Color</a>
      <ul>
        <li>
          <a href="#aa">All fruits with drawings and photos</a>
        </li>
        <li class="current">
          <a href="#ab">Red Fruits</a>
          <ul>
            <li class="current"><a href="#">Red Apples</a></li>
            <li><a href="#aba">Red Grapes</a></li>
            <li><a href="#abc">Cherries</a></li>
            <li><a href="#abb">Strawberries</a>
              <ul>
                <li class="current"><a href="#">Dutch Strawberries</a></li>
                <li><a href="#aba">French Strawberries</a></li>
                <li><a href="#abb">German Strawberries</a></li>
                <li><a href="#abc">American Strawberries</a></li>
                <li><a href="#abd">Scandinavian Strawberries</a></li>
              </ul>
            </li>
            <li><a href="#abd">Berries</a></li>
            <li><a href="#abd">Cherry Tomatoes</a></li>
          </ul>
        </li>
        <li>
          <a href="#">Yellow Fruits</a>
          <ul>
            <li><a href="#">Bananas</a></li>
            <li><a href="#">Lemons</a></li>
            <li><a href="#">Mangos</a></li>
            <li><a href="#">Dragon Fruit</a></li>
            <li><a href="#">Tangerine</a></li>
          </ul>
        </li>
        <li>
          <a href="#">Green Fruits</a>
          <ul>
            <li><a href="#">Green apples</a></li>
            <li><a href="#">Kiwis</a></li>
            <li><a href="#">Melons</a></li>
            <li><a href="#">Pears</a></li>
            <li><a href="#">Unripe bananas</a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li>
      <a href="#">Singularity</a>
    </li>
    <li>
      <a href="#">Widgets</a>
      <ul>
        <li>
          <a href="#">Things</a>
          <ul>
            <li><a href="#">Red things</a></li>
            <li><a href="#">Blue things</a></li>
            <li><a href="#">Green things</a></li>
            <li><a href="#">Yellow things</a></li>
            <li><a href="#">Black things</a></li>
          </ul>
        </li>
        <li><a href="#">Stuff</a></li>
        <li>
          <a href="#">Others</a>
          <ul>
            <li><a href="#">Really white others</a></li>
            <li><a href="#">Broken white others</a></li>
            <li><a href="#">Silver others</a></li>
            <li><a href="#">Grey others</a></li>
            <li><a href="#">Ash others</a></li>
            <li><a href="#">Anthracite others</a></li>
            <li><a href="#">Really black others</a></li>
            <li><a href="#">Galactic void others</a></li>
          </ul>
        </li>
        <li>
          <a href="#">Misc</a>
          <ul>
            <li><a href="#">Cyan others</a></li>
            <li><a href="#">Magenta others</a></li>
            <li><a href="#">Yellow others</a></li>
            <li><a href="#">Black others</a></li>
            <li><a href="#">White others</a></li>
            <li><a href="#">Cyan others</a></li>
            <li><a href="#">Magenta others</a></li>
            <li><a href="#">Yellow others</a></li>
            <li><a href="#">Black others</a></li>
            <li><a href="#">White others</a></li>
            <li><a href="#">Cyan others</a></li>
            <li><a href="#">Magenta others</a></li>
            <li><a href="#">Yellow others</a></li>
            <li><a href="#">Black others</a></li>
            <li><a href="#">White others</a></li>
            <li><a href="#">Cyan others</a></li>
            <li><a href="#">Magenta others</a></li>
            <li><a href="#">Yellow others</a></li>
            <li><a href="#">Black others</a></li>
            <li><a href="#">White others</a></li>
            <li><a href="#">Cyan others</a></li>
            <li><a href="#">Magenta others</a></li>
            <li><a href="#">Yellow others</a></li>
            <li><a href="#">Black others</a></li>
            <li><a href="#">White others</a></li>
            <li><a href="#">White others</a></li>
            <li><a href="#">White others</a></li>
          </ul>
        </li>
        <li><a href="#">Unique thing</a></li>
      </ul>
    </li>
    <li>
      <a href="#">Contact</a>
    </li>	
  </ul>

   
    </form>
</body>
</html>