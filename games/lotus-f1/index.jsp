


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
    <head>
    	<!-- CSS for Common-->
        <link href="css/common.min.css" type="text/css" rel="stylesheet"/>
        <!-- CSS for Layout -->
        <link href="css/fluid_grid.min.css" type="text/css" rel="stylesheet"/>
               	
        
        <title>Angry Birds Lotus</title>        
		<meta name="description" content="Angry Birds Lotus" />	        
        <meta name="google" value="notranslate" />               	       
		<meta property="og:image" content="http://../images/ab_lotus_fb_sharing.jpg"/>
		<meta property="og:title" content="Angry Birds Lotus" />
		<meta property="og:description" content="Angry Birds Lotus" />
		<!-- <meta property="og:url" content="http://www.facebook.com/LotusRenaultGP" /> -->
				
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Cache-Control" content="Public"/>
        <meta http-equiv="Expires" content="Mon, 31 Dec 2012 12:00:00 GMT"/>
        
        <!-- Include CSS to eliminate any default margins/padding and set the height of the html element and 
             the body element to 100%, because Firefox, or any Gecko based browser, interprets percentage as 
             the percentage of the height of its parent container, which has to be set explicitly.  Fix for
             Firefox 3.6 focus border issues.  Initially, don't display flashContent div so it won't show 
             if JavaScript disabled.
        -->
        <style type="text/css" media="screen"> 
            
            object:focus { outline:none; }
            #flashContent { display:none; }
            
        </style>
               
       
        <script type="text/javascript" src="js/common.min.js"></script>
		<script type="text/javascript" src="js/ga.min.js"></script>
		
	    <!-- Box-Shadowing for IE6-9 -->
	    <script type="text/javascript" src="js/pie.min.js"> </script>		               
		<script type="text/javascript" src="js/jquery-1.7.min.js"> </script>    
        <script type="text/javascript" src="flash/swfobject.js"> </script>
        
        
        <script type="text/javascript">
		/*
			Real App ID:404282706261403
			Test App ID:177256662403483 (Allows localhost)
		*/
		window.fbAsyncInit = function() {
			FB.init({
	            appId      : '404282706261403',
	            status     : true, 
	            cookie     : true,
	            xfbml      : true,
	          });
			FB.Canvas.setSize();
		}
		
		
		function sizeChangeCallback() {
		
			FB.Canvas.setSize();
		
		}
		
		</script>
        
        <script type="text/javascript" >
		
			
			/*
				When the document has loaded
			*/
		    $(document).ready(function(e) {	
		    	
		    	
		    	$('#fb-share').click(function(e){
		    		e.preventDefault();
		    		trackEvent('links', 'share');
		    		FB.ui({
		    		method: 'feed',
		    		name: 'Play Angry Birds with Lotus F1 Team!',
		    		link: 'http://www.facebook.com/LotusRenaultGP?sk=app_404282706261403',
		    		picture: 'http://angrybirds-lotus.appspot.com/images/ab_lotus_fb_sharing.jpg',
		    		caption: "Wrooom! I'm already playing. Are you up for the challenge?",
		    		description: ""
		    		});
		    	});
		    	
		    	if (playerVersion.major < 11) {		    		
		        	$('#flashContent').show();        	
		        }
		        if (IsPhone()) {
		        	$('#flashContent').show();
		        	$('#flashContent').html('<div class=\'center error-text\'>The game does not work on mobile!</div>')
		        	trackEvent('browser', 'mobile-not-supported');
		        }
		        if (!isIEVersionSupported()) {
		        	$('#flashContent').show();
		        	$('#flashContent').html('<div class=\'center error-text\'>The browser you are using is outdated. Please update your browser.</div>')
		        	trackEvent('browser', 'ie-6-7-not-supported');
		        }
		        
     			/* Disable scrolling when mouse over game div */
		    	$('#flashObject').hover(function() {

		    		if (isFF()) {
					    
				    	document.onmousewheel = function(){ stopWheel(); } /* IE7, IE8 */
				    	if(document.addEventListener){ /* Chrome, Safari, Firefox */
				    	    document.addEventListener('DOMMouseScroll', stopWheel, false);
				    	}
				    } else {		    	    
			    	    $(document).bind('mousewheel DOMMouseScroll scroll',function(){ 
		    	        	stopWheel();
			    	        
			    	    });			    	   
		    	    }
		    	    
		    	}, function() {
					if (isFF()) {
					    				    	
				    	if(document.removeEventListener){ /* Chrome, Safari, Firefox */
				    	    document.removeEventListener('DOMMouseScroll', stopWheel, false);
				    	}
				    } else {
 			    		$(document).unbind('mousewheel DOMMouseScroll scroll'); 			    		
 			    	}
		    	    
		    	});
			});		
		    
	   
		    
	    </script>  
        <script type="text/javascript">
        var playerVersion = swfobject.getFlashPlayerVersion();
		      
		var rndValue = 0;       
        //If IE, create a random value so flash movie is refreshed when refreshing page. -->
        
        if (isIE()) {        
        	rndValue = Math.random();
        }
		
        if (playerVersion.major > 10 && !IsPhone() && isIEVersionSupported()) {
        	trackEvent('flash', 'embed');
            // For version detection, set to min. required Flash Player version, or 0 (or 0.0.0), for no version detection. 
            var swfVersionStr = "11.0.0";
            // To use express install, set to playerProductInstall.swf, otherwise the empty string. 
            var xiSwfUrlStr = "flash/playerProductInstall.swf";            
            var flashvars = {assetsUrl: "/flash/", buildNumber:"1-0-1-0.359125977464618248"};                        
            var params = {};
            params.quality = "high";
            params.bgcolor = "#ffffff";
            params.allowscriptaccess = "sameDomain";
            params.allowfullscreen = "true";
            params.wmode = "opaque";
            var attributes = {};
            attributes.id = "AngryBirdsIce";
            attributes.name = "AngryBirdsIce";
            attributes.align = "middle";
            swfobject.embedSWF(
                "flash/AngryBirdsIce.swf?version=1-0-1-0.359125977464618248&refresh=" + rndValue, "flashContent",
                "570", "380", 
                swfVersionStr, xiSwfUrlStr, 
                flashvars, params, attributes);
            // JavaScript enabled so display the flashContent div in case it is not replaced with a swf object.
            swfobject.createCSS("#flashContent", "display:block;text-align:left;");

        }
        
        </script>
        
        <script type="text/javascript" src="js/swfwheel.js"></script>
         
    </head>
    <body>
    	<!-- FB Sharing -->
    	<div id="fb-root"></div>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_US/all.js";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script> 	    	
    	<!-- Use the fluid grid for cross browser compatibility -->
        <div id="page" class="">	<!-- Page start -->
				<div id="header">
	                <div id="fb-like" class="fb-like" data-href="www.facebook.com/LotusRenaultGP" data-layout="button_count" data-action="like" data-send="false" data-width="450" data-show-faces="false" data-colorscheme="dark" data-font="arial"></div>
					<div id="logo" class="right"> </div>
					<div id="fb-like-text" class="left"> </div>
	            </div>
				 <div class="clear"> </div>
        		
<!-- Social Sharing -->	

<!-- Flash Wrapper -->
<div id="flashObject">
	<!-- Flash content-->	
	<div id="flashContent">
		<!-- Flash start -->		
		<div id="install-flash-div" class="error-text">
			To view this page ensure that Adobe Flash Player version  11.0.0 or greater is installed. <br /> 
			<a href="http://get.adobe.com/flashplayer/" target="_blank">http://get.adobe.com/flashplayer/</a>
		</div>
		
		<script type="text/javascript">
			trackEvent('flash', 'prompt-install');
		</script>
</div>


	<!-- Flash End -->
	<noscript>
	<div id="install-flash-div" class="error-text">
			To view this page ensure that Javascript in enabled in your browser.
	</div>
</noscript>
</div>
<!-- Wrapper End -->
<div class="clear"></div>


                 
                 <!-- Links -->
    	   		 <div id="links" class="left">
    	   		 	<a class="fb-share center" id="fb-share" href="#" target="_blank"></a>
    	   		 
    	   		 	<a class="link-fb-game left" id="link-fb-game" onclick="trackEvent('links','fb-game');" href="http://facebook.angrybirds.com" target="_blank"></a>
	    	   		<a class="link-team-lotus left" id="link-team-lotus" onclick="trackEvent('links','team-lotus');" href="http://www.lotusf1team.com/" target="_blank"></a>
	    	   		<a class="link-space left" id="link-space" onclick="trackEvent('links','ab-space');" href="http://space.angrybirds.com/" target="_blank"></a>
    	   		 </div>
	   		 	 <div class="clear"> </div>
                 
   				 

			</div>	<!-- page end -->
			<!-- Footer -->
			 <div id="footer" class="left">    	   		 	   		 	 	   		 	 
     <div id="legaltext" class="left small-text">                 
     © 2012 Rovio Entertainment Ltd. Angry Birds. <a class="" onclick="trackEvent('links','eula');" href="http://www.rovio.com/eula/" target="_blank">EULA</a> <a class="" onclick="trackEvent('links','privacy-policy');" href="http://www.rovio.com/Privacy/" target="_blank">Privacy Policy</a>
	 </div>
	 <a class="link-rovio" href="http://www.rovio.com/" onclick="trackEvent('links','rovio');" target="_blank"></a>
</div>
   	   		   
   </body>
</html>
