<%@ Page Title="" Language="VB" MasterPageFile="~/single_master.master" AutoEventWireup="false" CodeFile="mech_eep.aspx.vb" Inherits="mech_eep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<hr />
<a  href="event_info.aspx">Back to Event Categories</a>
<center><h1 style="color:#372925; font-family:Lucida Calligraphy">Castello Modello and Electronics</h1></center>
<div class="container" style="width:70%; min-height:700px; margin-left:15%">
<br />
 				<section id="grid" class="grid clearfix">
				                              
                <a href="deckstro.aspx" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img src="event-images/deckstro.jpg" width="153px" height="268px" />
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h3>Deckstro</h3>
														
						</figcaption>
					</figure>
				</a>
				 <a href="plannifica.aspx" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img src="event-images/civil1.jpg" width="153px" height="268px" />
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h3>Plannifica</h3>
														
						</figcaption>
					</figure>
				</a>
			<a href="pro_innvect.aspx" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img src="event-images/civil2.jpg" width="153px" height="268px" />
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h3>Pro Innvect</h3>
														
						</figcaption>
					</figure>
				</a>
				<a href="thedo_surf.aspx" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img src="event-images/civil3.png" width="153px" height="268px" />
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h3>Thedo Surf</h3>
														
						</figcaption>
					</figure>
				</a>
				
				<a href="technothon.aspx" data-path-hover="m 0,0 0,47.7775 c 24.580441,3.12569 55.897012,-8.199417 90,-8.199417 34.10299,0 65.41956,11.325107 90,8.199417 L 180,0 z">
					<figure>
						<img src="event-images/technothon.jpg" width="153px" height="268px" />
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<figcaption>
							<h3>Technothon</h3>
														
						</figcaption>
					</figure>
				</a>

								               
			</section>
           
			<%--<section class="related">
				<p>If you enjoyed these effects you might also like:</p>
				<div><a href="http://tympanus.net/Tutorials/CaptionHoverEffects/"><h4>Caption Hover Effects</h4></a></div>
				<div><a href="http://tympanus.net/Development/AnimatedSVGIcons/"><h4>Animated SVG Icons</h4></a></div>
			</section>--%>
		</div><!-- /container -->
       
		<script>
		    (function () {

		        function init() {
		            var speed = 330,
						easing = mina.backout;

		            [ ].slice.call(document.querySelectorAll('#grid > a')).forEach(function (el) {
		                var s = Snap(el.querySelector('svg')), path = s.select('path'),
							pathConfig = {
							    from: path.attr('d'),
							    to: el.getAttribute('data-path-hover')
							};

		                el.addEventListener('mouseenter', function () {
		                    path.animate({ 'path': pathConfig.to }, speed, easing);
		                });

		                el.addEventListener('mouseleave', function () {
		                    path.animate({ 'path': pathConfig.from }, speed, easing);
		                });
		            });
		        }

		        init();

		    })();
		</script>  

</asp:Content>

