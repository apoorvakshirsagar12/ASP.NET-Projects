<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="roborace.aspx.vb" Inherits="roborace" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
  <a  href="mech_eep.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Robo Race</h1></center>
                        
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
                                            TASK    
                                        </Header>
                                        <Content>
                                            <p>Design a machine wired or wireless which is able to traverse the given path in minimum time.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Rules
                                        </Header>
                                        <Content>
                                        <p>There will be breath-taking hurdles in the arena which the machine has to overcome.</p>
                                        <p>There will be checkpoints at regular intervals on the track. The machine will placed to nearest checkpoint which the machine has surpassed in case of machine falling off the track or any penalty.</p>
                                        <p>Details about penalty and checkpoints will be given to the participants at the time of event.</p>
                                        <p>Maximum 3 members would be allowed on track. The machine should not damage the track else the team will be disqualified.</p>
                                        <p>Judges decision will be final and binding to all.</p>
                                        <p>Participants are expected to be disciplined and should not argue with the organizers and coordinators.</p>
                                        <p>Participants should not indulge in any sort of malpractices else it can lead to disqualification of the team.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                        Design constraints
                                        </Header>
                                        <Content>
                                       <p>The machine should fit in a box 30*25 cm (L*B) at any instant of a game.</p>
                                       <p>Weight of the machine should not exceed 5 kg.</p>
                                       <p>Voltage at any point in the machine should not exceed 24V DC at any instant of game.</p>
                                       <p>Track width is 28 cm.</p>
                                       <p>For any round some portion of the track will be on ground.</p>
                                       <p>Hurdles will include inclination, slopes, marbles, switches, mud, oil etc.</p>


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
                            1. Ganesh Shendge - 7798669315</p>
                      <%--  <p>
                            2. RAHUL MAHAJAN - 8275932842 </p>
                        <p>
                            3. GANESH PARDESHI  - 8888144030</p>
                        <p>
                            4. SHUBHAM PARDESHI - 8624885333</p>--%>
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

