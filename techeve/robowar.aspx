<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="robowar.aspx.vb" Inherits="robowar" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
          <a  href="mech_eep.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h2 style="color:#372925; font-family:Lucida Calligraphy">Robowar</h2></center>
                        
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
                                            Problem Statement
                                        </Header>
                                        <Content>
                                            <p>It is a game played between two bots in which one bot tries to damage another bot. The opponent bot tries to resist the attacks made by the bot. In the end , the bot that does maximum damage to opposite will be declared as winner.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Specifications
                                        </Header>
                                        <Content>
                                          <p><strong>Dimensions And Fabrications</strong></p>
                                          <p>The machine should fit in a box in a dimension 650mm×650mm×650mm at any given point during the match. The external device used to control the machine or any external tank is not included in the size constraint.</p>
                                          <p>The machine should not exceed 50 kg of weight including the weight of pneumatic source/tank. All pneumatic tanks and batteries should be onboard. Weight of remote controller will not be counted.</p>
                                           <p><strong>Battery and Power</strong></p>
                                           <p>The machine can be powered electrically only. Use of an IC engine in any form is not allowed. On board batteries must be sealed, immobilized-electrolyte types ( such as gel cells , lithium, NiCad, NiMH, or dry cells)</p>
                                           <p>The electrical voltage between 2 points anywhere in the machine should not be more than 36 V DC at any point of time.</p>
                                           <p>It is suggested to have extra battery ready and charged up during competition so that on advancing to next level, you don’t have to wait or suffer due to unchanged battery. If teams don’t show up on allotted slot , they will be disqualified.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            PNEUMATICS 
                                        </Header>
                                        <Content>
                                     <p>Robots can use pressurized non-inflammable gases to actuate pneumatic devices. Maximum allowed outlet nozzle pressure is 10 bar.</p>
                                     <p>Participants must be able to indicate the used pressure with integrated or temporarily fitted pressure gauge. Also there should be provision to check the cylinder pressure on the bot.</p>
                                     <p>The maximum pressure in cylinder should not exceed the rated pressure at any point of time.</p>
                                     <p>You must have a safe way of refilling the system and determining on the board pressure.</p>
                                     <p>All pneumatic components on board a robot must be securely mounted. Care must be taken while mounting the pressure vessel and armor to ensure that if rupture it will not escape the robot. The terms pressure vessel, bottle, and source tank are used interchangeability.</p>
                                     <p>Entire pneumatic setup should be onboard, no external input (from outside the arena) can be given to the robot for functioning system.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            WEAPONS SYSTEM
                                        </Header>
                                        <Content>
                         <p>Robots can have any kind of magnetic weapons, cutter, wipers, saws, lifting devices, spinning hammers etc. as weapons with following exceptions and limitations.</p>
                         <p>Liquid projectile<br />
Any kind of inflammable liquid.<br />
Flame based weapons<br />
Any kind of explosive or intentionally ignited solid or potentially ignitable solid.<br />
Nets, tape, glue, or any other entanglement device.<br />
High power magnets or electromagnets.<br />
Radio jamming, tazers, tesla coils, or any other high-voltage devices.<br />
Tethered or un-tethered projectiles.<br />
Spinning weapons which do not come in contact with the arena at any point of time are allowed. In no case should the arena damaged by any bot. the competition will be played on a knock-out basis.
</p>
                                        </Content>
                                    </cc1:AccordionPane>


                                     <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane3">
                                        <Header>
                                            Judging Criteria
                                        </Header>
                                        <Content>
                                 <p>A robot is declared victorious if its opponent is immobilized.</p>
                                 <p>A robot will be declared immobile if it cannot display linear motion. Of at least one inch in a time period of 30 seconds. A bot with one side of its drive train disabled will not be counted out if it can demonstrate some degree of controlled movement. In case both the robots remain mobile after the end of the round then the winner will be declared subjectively.</p>
                                 <p>A robot that is deemed unsafe by the judges after the match has begun will be disqualified and therefore declared the loser. The match will be immediately halted and the opponent will be awarded a win.</p>
                                 <p>Robots cannot win by pinning or lifting their opponents. Organizers will allow pinning or lifting for a maximum of 20 seconds per pin/lift then the attacker robot will be instructed to release the opponent. </p>
                                 <p>If after being instructed to do so , the attacker is able to release but does not , their robot may be disqualified. If two robots become entangled or a crushing or gripping weapon is employed and becomes trapped within another robot, the fight should br stopped and the robots separated by the safest means.</p>
                                        </Content>
                                    </cc1:AccordionPane>


                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane4">
                                        <Header>
                                            Testing Conditions
                                        </Header>
                                        <Content>
                              <p>The organizers will test the robot on the arena</p>
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
                            1. Sumit Badwane - 7276864502</p>
                        
                        <p>
                            2. Pushkar Mungikar  - 8087887717</p>
                    
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

