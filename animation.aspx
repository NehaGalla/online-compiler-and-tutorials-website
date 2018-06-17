<%@ Page Language="C#" AutoEventWireup="true" CodeFile="animation.aspx.cs" Inherits="animation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/normalize.css"/>
        <link rel="stylesheet" href="css/splitText.css" />
        <link rel="stylesheet" href="css/main.css"/>
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
       <script src="js/TweenMax.min.js"></script>
       
       <link href='http://fonts.googleapis.com/css?family=Wendy+One|Anton' rel='stylesheet' type='text/css'/>
</head>
<body>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>')</script>
        <script src="js/plugins.js"></script>
        <script src="js/example.js"></script>
		<script src="js/SplitTextPlugin.js" type="text/javascript"></script>
        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
       <script type="text/javascript">

		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-39008730-1']);
		  _gaq.push(['_trackPageview']);
		
		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();
		
		</script>
    <form id="form1" runat="server">
    <div id="blockOrange">
        		<p class="splitText" id="splitOnlyWords">SPLIT SOME WORDS ONLY - NO ANIMATION!</p>
        		<p class="splitText" id="splitOnlyLetters">SPLIT SOME LETTERS ONLY - NO ANIMATION!</p>
        		<p class="splitText" id="splitOnlyLines">SPLIT SOME LINES ONLY - NO ANIMATION BECAUSE THIS MIGHT BE USEFUL TO PEOPLE</p>
        		<div class="controls">
	        		<div class="back"></div>
	        		<div class="arrowleft" title="undo"></div>
	        		<div class='play'></div>
	        		<div class="next"></div>
        		</div>
        	</div>
    </form>
</body>
</html>
