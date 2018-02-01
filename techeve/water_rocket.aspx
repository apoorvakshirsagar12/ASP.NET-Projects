<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="water_rocket.aspx.vb" Inherits="water_rocket" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
  <a  href="mech_eep.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                       <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Water Rocket</h1></center>
                        
                        <asp:Button ID="Button1" runat="server" Text="Click here to register" 
                            CssClass="RegBtn" BorderColor="#372925" BorderStyle="Double" 
                            BorderWidth="3px" />
                        <%--<a href="downloads/ARTILLIGNCE.pdf">Click here to downlaod manual in PDF format</a>--%>
                        <cc1:ModalPopupExtender ID="Button1_ModalPopupExtender" runat="server" DynamicServicePath=""
                            Enabled="True" PopupControlID="Panel1" TargetControlID="Button1" BackgroundCssClass="modalBackground"
                            CancelControlID="ImageButton1">
                        </cc1:ModalPopupExtender>
                        <asp:Panel ID="Panel1" runat="server" CssClass="pnl" Style="display: none;">
                            <asp:ImageButton ID="ImageButton1" ImageUrl="images/x.png" runat="server" Style="float: right" />
                            <br />
                            <uc1:Register ID="Register1" runat="server" />
                        </asp:Panel>
                        
                        <br /><br />
                        <div class="accordion">
                            <cc1:Accordion ID="Accordion1" runat="server" HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
                                ContentCssClass="accordionContent" FadeTransitions="false" FramesPerSecond="40"
                                TransitionDuration="250" AutoSize="None" RequireOpenedPane="false" SuppressHeaderPostbacks="true"
                                SelectedIndex="0">
                                <Panes>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc1">
                                        <Header>
                                           Introduction
                                        </Header>
                                        <Content>
                                           <p>As we all have a desire to fly is heights to touch the skies. Hence it is the better opportunity to make your desire come true. We all know about NEWTON’S IIIrd law of motion. Now let’s put them together to focus to force a rocket into air with water and air as forcing elements and taste thrills of flight.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Event Strategy
                                        </Header>
                                        <Content>
                                          <p>The range & accuracy of flight of the rocket will be tested. Points will be awarded based on both the factors.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                           Aim
                                        </Header>
                                        <Content>
                                         <p>Design a single stage water rocket using a plastic container preferably soft drink bottle that uses a combination of pressurized air & water for propulsion to achieve either maximum range and/or accuracy. </p>
                                         <p>Water rockets consist of three major parts the nose, body fins&nozzle. The nose and fins are the guidance system for your rocket that can increase aerodynamic stability to achieve better flight. They also add character and style to your rocket.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                           Model Specification
                                        </Header>
                                        <Content>
                       <p> Volume of bottle should be less than 2litre.</p> <p>
Pressure should be less than 40psi.</p> <p>
Only water should be used as a propellant. No other gas than air is allowed to be pressurized and provide thrust to the rocket.</p> <p>
Only pressurized air & water assembly should be used for launching.</p> <p>
No other potential, kinetic, or any other form of energy will be permitted for the launch</p> <p>
Launch pad will be provided and participants can bring their own launching pad also.</p> <p>
The launcher remain must stationary on the ground while and after launching of the rocket.</p> <p>
Water rocket and any of its components should be handmade .Readymade models are strictly not allowed.</p> <p>
Your model can of any shape or size and can be made of any material but it should not damage the arena or hurt any person</p> <p>
The organizers reserve all rights to change any or all of the above rules </p> <p>
Do not use mineral water bottles as they cannot with stand pressure. Used of soft drink bottle should be preferred.</p>


                                        </Content>
                                    </cc1:AccordionPane>


                                     <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane3">
                                        <Header>
                                            Team Structure
                                        </Header>
                                        <Content>
                                <p>A team can consist of maximum 3 members.</p>
                                        </Content>
                                    </cc1:AccordionPane>


                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane4">
                                        <Header>
                                            Competition
                                        </Header>
                                        <Content>
                                <p>The competition will consist of 2 rounds.</p>
                                <p><strong>First Round</strong></p>
                                <p>The task is to cover the maximum horizontal distance.</p>
<p>The place where the rocket tip fall will be considered for measuring distance from the launcher.</p>
<p>Two trials will be given to the participants and the better of the two horizontal distances (in meters) will be considered as Round 1 score.</p>
<p>Maximum of 15/20 teams (as per no. of participants) or team who cross the specific distance will qualify for the next round.</p>

                                <p><strong>Second Round</strong></p>
                                <p>This round’s scoring depends on the accuracy to hit the target.</p>
                                <p>2 trials will be given to the participants & average of these two trials will be considered as the Second Round score.</p>
                                <p>It’s a do or dies situation</p>


                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane5">
                                        <Header>
                                            Declaration of winner
                                        </Header>
                                        <Content>
                               <p>The team with maximum (1st round+ 2nd round) score will win.</p>


                                        </Content>
                                    </cc1:AccordionPane>

                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane6">
                                        <Header>
                                            Disqualification
                                        </Header>
                                        <Content>
                              <p>If any part of rocket detached during the flight.</p>
<p>If any rocket is found to be dangerous to launch by the organizers & judges.</p>
<p>If any rocket blasts before the launch.</p>
<p>If any design rule not abided by the participants may lead to disqualification.</p>
<p>The organizers reserve all rights to change above rules as they deem fit. Change in rules, if any will be instantly notify to participants.</p>
<p>In case of any discrepancy decision of the judges (organizers) shall be treated as final & binding on all.
</p>

                                        </Content>
                                    </cc1:AccordionPane>

                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane7">
                                        <Header>
                                            RULES & REGULATIONS
                                        </Header>
                                        <Content>
                             <p> Maximum number of participants per team is 3.</p>
<p>The range will be, the distance taken from the launcher to the point where the rocket hits the ground.</p>
<p>The angle & pressure at which the rocket is to be launched will be decided by the participant.</p>
<p>The working fluid allowed in the rocket will be water (only), & bicycle pump/compressor are provided at the venue of the competition.</p>
<p>The rocket should be purely mechanical. Any type of motors or chemicals will not be entertained.</p>
<p>The optimum amount of water to be put into the rocket is left to the participant.</p>
<p>The pressure should not exceed 40psi.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                </Panes>
                            </cc1:Accordion>
                        </div>
                        <br />
                        <p>
                            <b>** Organizers reserves all the rights to make a decision and that decision will be
                                final.</b></p>
                        <p>
                            <b>Event Incharge</b></p>
                        <p>
                            1. NITIN AVASARMOL - 8928215847</p>
                        <p>
                            2. RAHUL MAHAJAN - 8275932842 </p>
                        <p>
                            3. GANESH PARDESHI  - 8888144030</p>
                        <p>
                            4. SHUBHAM PARDESHI - 8624885333</p>
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

