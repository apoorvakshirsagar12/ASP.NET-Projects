<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="technothon.aspx.vb" Inherits="technothon" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
  <a  href="civil_etc.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Technothon</h1></center>
                        
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
                                            <p>To solve the general aptitude problems on electronic, electrical and some mathematical tricks as well as to give the correct answer by pressing buzzer first and to find the bugs in the circuit, remove them and fix it.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Specifications
                                        </Header>
                                        <Content>
                                           <p>The event is divided into two groups as follows: <br />
         1. Junior group (1st and 2nd year)<br />
         2. Senior group (3rd and 4th year)
</p>
                                    <p>All the participants should have valid ID card of their respective institute with them along with the Receipt.</p>
                                           <p>Only one question paper will be provided for a group in aptitude.
Co-coordinators decision will be final. 
</p>
                                        <p>The decision of judges will be final and binding to all.
Rules may be changed without prior intimation</p>
                                <p>Participants are requested to check the website for updates In case any assistance is needed during the event, the teams should approach only the organizers.
Participants are expected to be on time.
</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            Event Structure
                                        </Header>
                                        <Content>
                                         <p>
                                                <strong>Round 1 : Tech-Apti</strong></p>
                                                <p>APTITUDE TEST :</p>
                                                <p>Aptitude tests consist of set of question related to every technical aspect of electronics, electrical and some mathematical tricks. Aptitude is held in our institute.</p>
                                           
                                           <p>COMPONENT IDENTIFICATION :</p>
                                           <p>It consist of identification of  electrical and electronics component within 5 to 10 second.Top 10 teamsselected  from aptitude test and component identification.</p>
                                            <p>There will be a sectional cut-off for section A & section B.</p>
                                            <p>&nbsp</p>

                                            <p>
                                                <strong>Round 2 : Buzzer Round</strong></p>
                                                <p>In this round total 15 questions will be provided to teams.</p>
                                                <p>The team who knows the answer should press the buzzer quickly and 10 second will be provided to this team to tell the answer.</p>
                                                <p>If the teams give correct answer they earn 10 point and if team failed to give correct answer within time, 5 point deducted from their score.</p>
                                                <p>Depending on score5 team will be selected for round 3rd.</p>

                                            <p>&nbsp</p>

                                            <p>
                                                <strong>Round 3 : Tech-Bug (Circuit Debugger)</strong></p>
                                             <p>A built non-working circuit will be provided to team. The challenge is to search the bugs in the circuit, remove them and fix it.</p>
                                             <p>There would be 2-3 faults, some of them would be connection errors and some would beconceptual errors.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            Testing Condition
                                        </Header>
                                        <Content>
                         <p>Dc power supply will be provided to participants along with all necessary components.</p>
                                        </Content>
                                    </cc1:AccordionPane>


                                     <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane3">
                                        <Header>
                                            Judging Criteria
                                        </Header>
                                        <Content>
                                 <p>All the hardware output of 3rd round will be checked by judges and its associated coordinates.</p>
                                 <p>Team should require to show their outputs either to the judges or to respective coordinates.</p>
                                 <p>The team who shows their output first, will be declared as winner.</p>
                                        </Content>
                                    </cc1:AccordionPane>


                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane4">
                                        <Header>
                                            Team and Fee Structure
                                        </Header>
                                        <Content>
                                 <p>Each Team should have at max. 2 and min.1 students.</p>
                                 <p>Fees: The registration fees is Rs.50/- per team</p>
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
                            1. Nitin Avasarmol - 8928215847</p>
                        <p>
                            2. Rahul Mahajan - 8275932842 </p>
                       
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

