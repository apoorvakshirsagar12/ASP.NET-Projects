<%@ Page Language="VB" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<title>Tech'eve 2015</title>
 
   <link rel="stylesheet" type="text/css" href="box-css/component.css" />
     <link rel="stylesheet" type="text/css" href="article-css/component.css" />
     <link rel="shortcut icon" href="img/logo.png" />
    <link href="animate.css" rel="stylesheet" type="text/css" />
   
     <link href="IconMenu/iconmenu.css" rel="stylesheet" type="text/css" />
       <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="IconMenu/iconmenu.js"></script>
    <link href="all_events-css/event_master.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="event.css" />
<link rel="stylesheet" type="text/css" href="SpinMenu/spin.css" />


          <!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->


  <%--scripts for icon menus--%>

        <script src="IconMenu/iconmenu.js">

            /***********************************************
            * DD Icon Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
            * This notice MUST stay intact for legal use
            * Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
            ***********************************************/

</script>
<script>

    ddiconmenu.docinit({ // initialize an Icon Menu
        menuid: 'myiconmenu', //main menu ID
        easing: "easeOutBack",
        dur: 500 //<--no comma after last setting
    })

</script>

<style>
*
{
    margin:0px;
    padding:0px;
    text-decoration:none;
   
}
</style>	

<script src="box-js/modernizr.custom.js"></script>

  <%-- scripts for all codrops effects--%>
<script type="text/javascript">
    var _gaq = _gaq || [];

    _gaq.push(['_setAccount', 'UA-7243260-2']);
    _gaq.push(['_trackPageview']);
    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
</script>


<%-- scripts for making background image move--%>
<style type="text/css">
       @media screen and (max-width: 27em) 
{
    
       @-ms-keyframes animatedBackground {
			from { background-position: 0 0; }
			to { background-position: 0 0; }
		}
		@-webkit-keyframes animatedBackground {
			from { background-position: 0 0; }
			to { background-position: 0 0; }
		}
		
		@-moz-keyframes animatedBackground {
			from { background-position: 0 0; }
			to { background-position: 0 0; }
		}
		 @keyframes animatedBackground {
			from { background-position: 0 0; }
			to { background-position: 0 0; }
		}
   
    	
      html
        {
             background-image:url(img/content_bg2.jpg);
        }
	body	
	{
	     background-image: none;
	     background-position: 0px 0px;
		 background-repeat: repeat;
			animation:none;
			-ms-animation:none;
			-moz-animation: none;
			-webkit-animation:none;
			 background-size:cover auto;
		} 
		}
	.banner1
    {
    z-index : 1000;
	margin:0 auto;
	padding: 0 1.25em;
	width: 100%;
	text-align: center;
	position: absolute;
	top: 10%;
	left: 15%;
	-webkit-transform: translateX(-50%) translateY(-50%);
	transform: translateX(-50%) translateY(-50%);
    }
    
    
    
    .newbanner
    {
    z-index : 1000;
	margin-left:30%;
	padding: 0 1.25em;
	width: 30%;
	text-align: center;
	position: absolute;
	top: 20%;
	left: 15%;
	-webkit-transform: translateX(-50%) translateY(-50%);
	transform: translateX(-50%) translateY(-50%);
    }
    

    
    .down-links
    {
      text-decoration:none;
    z-index: 1000;
    margin: 0 auto;
	padding: 0 1.25em;
	width: 100%;
	text-align: center;
	position: absolute;
	top: 95%;
	left: 12%;
	 color:Silver;
	-webkit-transform: translateX(-50%) translateY(-50%);
	transform: translateX(-50%) translateY(-50%);
	
    }
    
	</style>

     <%--<script>
         (function (i, s, o, g, r, a, m) {
             i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                 (i[r].q = i[r].q || []).push(arguments)
             }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
         })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

         ga('create', 'UA-58269580-1', 'auto');
         ga('send', 'pageview');

</script>--%>
</head>
<body>
          
<div id="container" class="container intro-effect-push">
			<header class="header">
    <div class="container">
   <div id="boxgallery" class="boxgallery" data-effect="effect-1">
					<div class="panel"><img src="images/a6.jpg" alt="Image 2"/></div>
				<div class="panel"><img src="images/a2.jpg" alt="Image 2"/></div>
				<div class="panel"><img src="images/a9.jpg" alt="Image 2"/></div>
                <div class="panel"><img src="images/a10.jpg" alt="Image1"/></div>
                    	
			</div>
            </div>



            <div class="banner1">
       <img src="img/banner.png" width="350" height="150"  />
      
            </div>
        


         <b>
             <div class="down-links">
               <a href="about_us.aspx" style="color:Silver">About Us</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="contact_us.aspx" style="color:Silver">Contact Us</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="feedback.aspx" style="color:Silver">Feedback</a>
            </div>
            </b>

                <div class="title">
                <img src="img/logo.png" width="100" height="100" ></img>
                <br />
                <img src="images/date1.jpg"></img>
                
                </div>
                
          
			</header>
			<button class="trigger" data-info="Click Here"><img src="img/arrow.png" width="50" height="50" /></button>
            
          <div id="lmenu">
                                  <ul id="myiconmenu" class="iconmenu"> 
                          
           <li style=" background-color :white"><img src="img/downarrow.gif"/></li>
          
  <li><a class="icon-home icon-1x" href="home.aspx"  rel="[title]" title="Home"></a></li>
  <li><a class="icon-trophy icon-1x" href="event_info.aspx"  rel="[title]" title="Events"></a></li>
   <li><a class="icon-camera icon-1x" href="gallery.aspx"  rel="[title]" title="Gallery"></a></li>
  <li><a class="icon-list icon-1x" href="about_us.aspx"  rel="[title]" title="About Us"></a></li>
  <li><a class="icon-phone icon-1x" href="contact_us.aspx" rel="[title]" title="Contact Us"></a></li>
  <li><a class="icon-inbox icon-1x"  href="feedback.aspx" rel="[title]" title="Feedback"></a></li>
  <li><a class="icon-question icon-1x" href="geca_roadmap.aspx"  onclick="openMap();" rel="[title]" title="How To Reach GECA"></a></li>
</ul>               
        </div>

		
              <article class="content"> 
             
                 <div id=header style="margin-top:30px; min-height:80px;width:76%; margin-bottom:25px">
                <div id="subscribe">
        
        <p id="socialicons3">

<a href="http://www.linkedin.com">
<img border="0" src="img/linkedin.png" height="35px" width="35px"/></a>

<a href="http://www.facebook.com/TechEve">
<img border="0" src="img/facebook.png" height="35px" width="35px"/></a>

<a href="http://www.twitter.com/tech_eve">
<img border="0" src="img/twitter.png" height="35px" width="35px"/></a>

<a href="http://www.youtube.com">
<img border="0" src="img/youtube.png" height="35px" width="35px" /></a>
</p>
</div>
           
           <div class="evelogo">
               <a href="home.aspx"> <img src="img/logo.png" width="100" height="100"  /></a>
            </div>

       <div class="newbanner">
               <a href="home.aspx"> <img src="img/banner2.png" width="250" height="100"  /></a>
            </div>
           
            </div>
              
             
          <div  style="margin-top:0px;width:76%">
         
            <hr />
            <br />
                <table id="home-content">
                <tr>
                <td align="justify"> 

                <h1>                    Tech'eve ~ 2015</h1>
                                <p><br />
                                    The journey continues with 'Wings' becoming Tech'Eve from this year onwards. This national technology festival of Government College of Engineering, Aurangabad
                                    brings you huge, unbound skies of competitions. May it be a geek mind that loves playing
                                    with computers or a designer mind interested in gears and links, competitions at
                                    Tech'Eve are designed to test your power to soar. A crowd pulling event with more than
                                    10000 students participating will showcase the energies of the students from various
                                    parts of the nation.<br />
                                </p></td>
                                <td>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</td>
                <td>
              <h1>                    Events</h1>
                        <div class="evecontainer">
                       <img src="img/trophy.jpg" height="150" width="150">
                        <div class="textbox">
                        <p class="text" style="color:white"> <a href="event_info.aspx" style="color:white;margin:10px">Click Here for <br /> &nbsp; Events</a></p>
                        </div>
                        </div>

                </td>
                </tr>

                <tr>
                <td align="justify" colspan="3">
              <h1>     News and Updates</h1>
                   <p style=" min-height:150px"><br/>

                        Updates will be flashed soon..
                           
                        </p>

                </td>
             
                </tr>
                
                </table>

                <asp:Panel ID="Panel1" runat="server" BackColor="#372925" CssClass="footer1" BorderColor="Silver" BorderWidth="3px" BorderStyle="Groove">
            <table>
                <tr>
                    <td>
                        <ul>
                            <li><a href="home.aspx">Home</a></li>
                            <li><a href="noncore.aspx">Computer Logiques</a></li>  
                              <li><a href="contact_us.aspx">Contact Us</a></li>                        
                           
                         </ul>
                    </td>
                    <td>
                        <ul>
                            <li><a href="event_info.aspx">Events</a></li>
                            <li><a href="mech_eep.aspx">Robo Compitizione</a></li>
                           <li><a href="about_us.aspx">About Us</a></li>
                        </ul>
                    </td>
                    <td>
                        <ul>
                         <li><a href="gallery.aspx">Gallery</a></li>
                            <li><a href="talento.aspx">Talent Arena</a></li>
                           <li><a href="geca_roadmap.aspx" onclick="openMap();">How to reach GECA</a></li>
                            
                    </td>
                    <td>
                        <ul>
                              <li><a href="feedback.aspx">Feedback</a></li>
                          
                            <li><a href="civil_etc.aspx">Castello Modello & Electronics</a></li>
                            
                        </ul>
                    </td>
                </tr>
               
            </table>
        </asp:Panel>
               
                <asp:Panel ID="Panel2" runat="server" BackColor="#eddea3" CssClass="footer1" BorderColor="Silver" BorderWidth="3px" BorderStyle="Groove">
            <table>
                <tr>
                    <td>
                    Designed By:&nbsp;&nbsp; Apoorva Kshirsagar,&nbsp;Aditi Sharma,&nbsp;Shilpa Birajdar,&nbsp;Pratibha Barsale & Diksha Jaiswal
                 
                    </td>
                        
                </tr>
               
            </table>
        </asp:Panel>
       <div style="float:right; font-size:small">
        
         Copyright &copy; Government College Of Engineering, Aurangabad.
         
        </div>

                
                </p>

                    </div>
        
			</article>
		
		</div><!-- /container -->
    
		<script src="article-js/classie.js"></script>
             
            <script src="box-js/classie.js"></script>
		<script src="box-js/boxesFx.js"></script>
		<script>
		    new BoxesFx(document.getElementById('boxgallery'));
		</script>
        	<script>
        	    (function () {

        	        // detect if IE : from http://stackoverflow.com/a/16657946		
        	        var ie = (function () {
        	            var undef, rv = -1; // Return value assumes failure.
        	            var ua = window.navigator.userAgent;
        	            var msie = ua.indexOf('MSIE ');
        	            var trident = ua.indexOf('Trident/');

        	            if (msie > 0) {
        	                // IE 10 or older => return version number
        	                rv = parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
        	            } else if (trident > 0) {
        	                // IE 11 (or newer) => return version number
        	                var rvNum = ua.indexOf('rv:');
        	                rv = parseInt(ua.substring(rvNum + 3, ua.indexOf('.', rvNum)), 10);
        	            }

        	            return ((rv > -1) ? rv : undef);
        	        } ());


        	        // disable/enable scroll (mousewheel and keys) from http://stackoverflow.com/a/4770179					
        	        // left: 37, up: 38, right: 39, down: 40,
        	        // spacebar: 32, pageup: 33, pagedown: 34, end: 35, home: 36
        	        var keys = [32, 37, 38, 39, 40], wheelIter = 0;

        	        function preventDefault(e) {
        	            e = e || window.event;
        	            if (e.preventDefault)
        	                e.preventDefault();
        	            e.returnValue = false;
        	        }

        	        function keydown(e) {
        	            for (var i = keys.length; i--; ) {
        	                if (e.keyCode === keys[i]) {
        	                    preventDefault(e);
        	                    return;
        	                }
        	            }
        	        }

        	        function touchmove(e) {
        	            preventDefault(e);
        	        }

        	        function wheel(e) {
        	            // for IE 
        	            //if( ie ) {
        	            //preventDefault(e);
        	            //}
        	        }

        	        function disable_scroll() {
        	            window.onmousewheel = document.onmousewheel = wheel;
        	            document.onkeydown = keydown;
        	            document.body.ontouchmove = touchmove;
        	        }

        	        function enable_scroll() {
        	            window.onmousewheel = document.onmousewheel = document.onkeydown = document.body.ontouchmove = null;
        	        }

        	        var docElem = window.document.documentElement,
					scrollVal,
					isRevealed,
					noscroll,
					isAnimating,
					container = document.getElementById('container'),
					trigger = container.querySelector('button.trigger');

        	        function scrollY() {
        	            return window.pageYOffset || docElem.scrollTop;
        	        }

        	        function scrollPage() {
        	            scrollVal = scrollY();

        	            if (noscroll && !ie) {
        	                if (scrollVal < 0) return false;
        	                // keep it that way
        	                window.scrollTo(0, 0);
        	            }

        	            if (classie.has(container, 'notrans')) {
        	                classie.remove(container, 'notrans');
        	                return false;
        	            }

        	            if (isAnimating) {
        	                return false;
        	            }

        	            if (scrollVal <= 0 && isRevealed) {
        	                toggle(0);
        	            }
        	            else if (scrollVal > 0 && !isRevealed) {
        	                toggle(1);
        	            }
        	        }

        	        function toggle(reveal) {
        	            isAnimating = true;

        	            if (reveal) {
        	                classie.add(container, 'modify');
        	            }
        	            else {
        	                noscroll = true;
        	                disable_scroll();
        	                classie.remove(container, 'modify');
        	            }

        	            // simulating the end of the transition:
        	            setTimeout(function () {
        	                isRevealed = !isRevealed;
        	                isAnimating = false;
        	                if (reveal) {
        	                    noscroll = false;
        	                    enable_scroll();
        	                }
        	            }, 1200);
        	        }

        	        // refreshing the page...
        	        var pageScroll = scrollY();
        	        noscroll = pageScroll === 0;

        	        disable_scroll();

        	        if (pageScroll) {
        	            isRevealed = true;
        	            classie.add(container, 'notrans');
        	            classie.add(container, 'modify');
        	        }

        	        window.addEventListener('scroll', scrollPage);
        	        trigger.addEventListener('click', function () { toggle('reveal'); });
        	    })();
		</script>
         <script src="box-js/classie.js"></script>
		<script src="box-js/boxesFx.js"></script>
		<script>
		    new BoxesFx(document.getElementById('boxgallery'));
		</script>
</body>
</html>
