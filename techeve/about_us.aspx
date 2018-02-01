<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="about_us.aspx.vb" Inherits="about_us" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<hr/>

<div style="width:100%; min-height:700px">
<center><h1 style="color:#372925; font-family:Lucida Calligraphy">About Us</h1></center>
        
    <div class="rbroundbox">
        <div class="rbtop">
            <div>
            </div>
        </div>
        <div class="rbcontent">
        <div class="font-color" style=" text-align:justify">

            <p>
                <b>THE INSTITUTION</b></p>
            <p>
                An Autonomous institute of Government of Maharashtra.
            </p>
            <p>
                Graded 'A' amongst the colleges located in the state of Maharashtra by the Directorate
                of Technical Education
            </p>
            <p>
                1st in INDIA according to TQIP audit report 9.5 / 10. · Approved by AICTE (All
                Indian Council of Technical Education)
            </p>
            <p>
                The premier technical institute in Marathwada region of Maharashtra State
            </p>
            <p>
                Established in 1960 & has earned well repute in a relatively short period of time.
            </p>
            <p>
               Already celebrated Glorious Golden Jubilee Year. Area of 30 acres with magnificent
                ashlars masonry buildings.
            </p>
            <p>
               Situated in the heart of the Maharashtra, Aurangabad the fastest growing industrial
                hub in Asia.
            </p>
            
            <br />
            <div class="accordion">
                            <cc1:Accordion ID="Accordion1" runat="server" HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
                                ContentCssClass="accordionContent" FadeTransitions="false" FramesPerSecond="40"
                                TransitionDuration="250" AutoSize="None" RequireOpenedPane="false" SuppressHeaderPostbacks="true"
                                SelectedIndex="0">
                                <Panes>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc1">
                                        <Header>
                                           OBJECTIVES
                                        </Header>
                                        <Content>
                                         <p>
                To impart technical & other essential education of high standard and to produce
                Cultured Engineers.
            </p>
            <p>
                To correlate theoretical knowledge with industrial applications and to promote
                better Industry- Institute Interaction.
            </p>
            <p>
                To grow and set up a centre of excellence in the field of technical education
            </p>
                                        </Content>
                                    </cc1:AccordionPane>
                                       <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            MISSION
                                        </Header>
                                        <Content>
                                            <p>
                “In Pursuit of Global Competitiveness”
            </p>
            <p>
                &nbsp;</p>
            <p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            VISION
                                        </Header>
                                        <Content>
                                            <p>
                To promote and contribute towards development of technologies and innovation appropriate
                to sustainable economic growth
            </p>
            <p>
                To develop entrepreneurship amongst the students so as to generate employment
            </p>
            <p>
                To transform institution into a centre of excellence
            </p>
            <p>
                To develop the institution through sustainable revenue generation.
            </p>
            <p>
                &nbsp;</p>
            <p>
                                        </Content>
                                    </cc1:AccordionPane>

                                 
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            ABOUT TECH'EVE
                                        </Header>
                                        <Content>
                                      <p>
                Tech'eve, National Technical festival of Government College of Engineering, Aurangabad
                brings you huge, unbound skies of competitions. May it be a mind that loves playing
                with computers or a designer mind interested in gears and links, competitions at
                Tech'eve are designed to test your power to soar. A crowd pulling event with more than
                10000 students participating will showcase the energies of the students from various
                parts of the nation. The lecture series and exhibitions at  Tech'eve will be a delicious
                food for tech lovers of all ages and fields.
            </p>
            <p>
                Tech'eve is the annual technical extravaganza of the government college of engineering,
                Aurangabad. It is recognized as a premier event of its kind in the youth demographic.
                Tech'eve has established itself on the youth circuit, especially from Marathwada,
                a celebration featuring the technological advancements of the society of the rapidly
                developing world. With the demography of progressive minded youth attendees and
                with a comprehensive publicity and marketing campaign that truly yields positive
                results for our sponsors, investment in Tech'eve is truly a rewarding business investment.
                With 30 events scheduled for three days. Tech'eve being a national level technical event, our sponsors will get the
                benefit of getting their brand reach to their consumers spread throughout the country
                'Tech'eve' has established itself as a Greatest Technical Competition organised in
                the Marathwada region.</p>
            <p>
                Being at Aurangabad which is look upon as the 'Fastly Emerging Industrial Hub of
                India' we organise this event taking into consideration the needs of industries.
                We endeavour to provide competent technology solutions to the industries through
                this event. All our competitions are planned with this vision in minds.
            </p>
                                        </Content>
                                    </cc1:AccordionPane>
                                </Panes>
                            </cc1:Accordion>
                        </div>
            
          
        </div>
        <!-- /rbcontent -->
        <div class="rbbot">
            <div>
            </div>
        </div>
    </div>
    </div>
    </div>
</asp:Content>

