﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gallery.aspx.vb" Inherits="gallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>

 <%-- <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">--%>

  <title>Tech'eve 2015</title>
        <link rel="stylesheet" type="text/css" href="gallery-css/demo.css" />
		<link rel="stylesheet" type="text/css" href="gallery-css/elastislide.css" />
		<link rel="stylesheet" type="text/css" href="gallery-css/custom.css" />
         <link href="event.css" rel="stylesheet" type="text/css" />   
    <link href="SpinMenu/spin.css" rel="stylesheet" type="text/css" />
      <link href="all_events-css/event_master.css" rel="stylesheet" type="text/css" />
         <link href="IconMenu/iconmenu.css" rel="stylesheet" type="text/css" />
          <link rel="shortcut icon" href="img/logo.png" />
     
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

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


<%-- scripts for making background image move--%>
   <style type="text/css">

		@keyframes animatedBackground {
			from { background-position: 0 0; }
			to { background-position: 100% 0; }
		}
		@-webkit-keyframes animatedBackground {
			from { background-position: 0 0; }
			to { background-position: 100% 0; }
		}
		@-ms-keyframes animatedBackground {
			from { background-position: 0 0; }
			to { background-position: 100% 0; }
		}
		@-moz-keyframes animatedBackground {
			from { background-position: 0 0; }
			to { background-position: 100% 0; }
		}

	  html
        {
             background-image:url(img/content_bg2.jpg);
              background-repeat:repeat;
        }
	  body	
	  {
	     background-image:url(img/BD2.png);
	     background-position: 0px 0px;
		 background-repeat:repeat;
			animation: animatedBackground 10s linear infinite;
			-ms-animation: animatedBackground 10s linear infinite;
			-moz-animation: animatedBackground 10s linear infinite;
			-webkit-animation: animatedBackground 10s linear infinite;
			 background-size:cover auto;
		}
	</style>

   <!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
      

      	<script src="gallery-js/modernizr.custom.17475.js"></script>

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
       <%--  <script>
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


    <div id="parent">
    <div id="header">
    
      
       <div id="subscribe"  style="float:right; margin-top:50px">
        
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

         <div class="evebanner">
               <a href="home.aspx">  <img src="img/banner2.png" width="250" height="100"  /></a>
            </div>
        
       
        </div>
        <hr />
    <div id="content">
     <div id="info">
     		<div class="container demo-4">
                
			<!-- Codrops top bar -->
         

            <div class="main">
				<header class="clearfix">	
					<center><h1 style="color:#372925; font-family:Lucida Calligraphy">Photo Gallery</h1></center>
					
				</header>

				<div class="gallery">
					<!-- Elastislide Carousel -->
					<ul id="carousel" class="elastislide-list">
						<li data-preview="gallery-images/large/2.jpg"><a href="#"><img src="gallery-images/small/2.jpg" alt="image04" /></a></li>
						<li data-preview="gallery-images/large/3.jpg"><a href="#"><img src="gallery-images/small/3.jpg" alt="image05" /></a></li>
						<li data-preview="gallery-images/large/4.jpg"><a href="#"><img src="gallery-images/small/4.jpg" alt="image06" /></a></li>
						<li data-preview="gallery-images/large/5.jpg"><a href="#"><img src="gallery-images/small/5.jpg" alt="image07" /></a></li>
						<li data-preview="gallery-images/large/6.jpg"><a href="#"><img src="gallery-images/small/6.jpg" alt="image11" /></a></li>
						<li data-preview="gallery-images/large/7.jpg"><a href="#"><img src="gallery-images/small/7.jpg" alt="image12" /></a></li>
						<li data-preview="gallery-images/large/8.jpg"><a href="#"><img src="gallery-images/small/8.jpg" alt="image13" /></a></li>
						<li data-preview="gallery-images/large/10.jpg"><a href="#"><img src="gallery-images/small/10.jpg" alt="image14" /></a></li>
						<li data-preview="gallery-images/large/11.jpg"><a href="#"><img src="gallery-images/small/11.jpg" alt="image15" /></a></li>
						<li data-preview="gallery-images/large/12.jpg"><a href="#"><img src="gallery-images/small/12.jpg" alt="image16" /></a></li>
						<li data-preview="gallery-images/large/13.jpg"><a href="#"><img src="gallery-images/small/13.jpg" alt="image17" /></a></li>
						<li data-preview="gallery-images/large/14.jpg"><a href="#"><img src="gallery-images/small/14.jpg" alt="image18" /></a></li>
						<li data-preview="gallery-images/large/15.png"><a href="#"><img src="gallery-images/small/15.png" alt="image19" /></a></li>
						<li data-preview="gallery-images/large/99.jpg"><a href="#"><img src="gallery-images/small/99.jpg" alt="image20" /></a></li>
						
					
					</ul>
					<!-- End Elastislide Carousel -->

					<div class="image-preview">
						<img id="preview" src="gallery-images/large/4.jpg" />
					</div>
				</div>


			</div>
		</div>

     
     </div>
     </div>
     <br /><br />

     <div id="footer">
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
         <div style="float:right; font-size:small; min-height:30px">
        
         Copyright &copy; Government College Of Engineering, Aurangabad.
         
        </div>
    </div>
      
          </div>

   

     
   

		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript" src="gallery-js/jquerypp.custom.js"></script>
		<script type="text/javascript" src="gallery-js/jquery.elastislide.js"></script>
		<script type="text/javascript">

		    // example how to integrate with a previewer

		    var current = 0,
				$preview = $('#preview'),
				$carouselEl = $('#carousel'),
				$carouselItems = $carouselEl.children(),
				carousel = $carouselEl.elastislide({
				    current: current,
				    minItems: 4,
				    onClick: function (el, pos, evt) {

				        changeImage(el, pos);
				        evt.preventDefault();

				    },
				    onReady: function () {

				        changeImage($carouselItems.eq(current), current);

				    }
				});

		    function changeImage(el, pos) {

		        $preview.attr('src', el.data('preview'));
		        $carouselItems.removeClass('current-img');
		        el.addClass('current-img');
		        carousel.setCurrent(pos);

		    }

		</script>
		
    </body>
</html>
