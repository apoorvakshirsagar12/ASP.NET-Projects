<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="circuit_fixer.aspx.vb" Inherits="circuit_fixer" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
  <a  href="mech_eep.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Circuit Fixer</h1></center>
                        
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
                                            RULES
                                        </Header>
                                        <Content>
                                          <p>The event is open to all students.</p>
<p>All the participants should have valid ID card of their respective institute with them along with the receipt.</p>
<p>The hardware necessary for event finals will be provided by the organizers.</p>
<p>The decision of judges will be final and binding to all.</p>
<p>Rules may be changed without prior intimation. Participants are requested to check the website for updates.</p>
<p>In case any assistance is needed during the event, the teams should approach only the organizers.</p>
<p>Participants are expected to be on time. Teams coming late may be disqualified.</p>
<p>Pin diagrams for Round 2 will be provided.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                           EVENT STRUCTURE
                                        </Header>
                                        <Content>
                                      <p>Round 1 consists of 50 marks quiz.</p>
<p>In Round 2, qualified teams have to build the circuit according to given problem statement.</p>
<p>In Round 3, viva of qualified teams will be taken by the judge or have to solve the given circuit (as per convenience).</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            TEAM AND FEE STRUCTURE
                                        </Header>
                                        <Content>
                                    <p>  Team should comprise of 2 members. Participants should be undergraduate students from recognized educational institutes/universities.</p>
<p>Registration fees is Rs 50/- per team.</p>

                                      
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
                     <%--   <p>
                            1. NITIN AVASARMOL - 8928215847</p>
                        <p>
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

