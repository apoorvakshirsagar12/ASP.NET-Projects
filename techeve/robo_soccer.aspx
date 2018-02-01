<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="robo_soccer.aspx.vb" Inherits="robo_soccer" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="mech_eep.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Robo Soccer</h1></center>
                        
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
                                          <p>A team of 4 make a bot to play soccer in between 2 teams.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                             Description 
                                        </Header>
                                        <Content>
                                       <p>  A workshop will be taken on basic of Robotics.</p>
                                         <p> Each participant team have to pay Rs1600 only.</p>
<p> The Robo so made can de used in various events in future by the team.</p>
<p> In this event the robot will be playing FOOT BALL game in the arena.</p>
<p> On the basis of goal scored within given time limit the winner will be decided.</p>
<p> For a draw match Penalty shoots will be taken</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                          Rules
                                      
                                        </Header>
                                        <Content>
                                   <p>   Time required for the event in total: 2 days</p>
 <p>  Time required for each round and number of rounds:</p>
 <p>  Required location:Volley Ball Court</p>
 <p>  Props and material you will require</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            Testing Condition
                                        </Header>
                                        <Content>
                         <p>Control of the operator,accuracy & speed to score a goal.</p>
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
                            1. Rajesh Rathod - 8149223224</p>
                        <p>
                            2. Sumit Birajdar  - 9422221827 </p>
                        <p>
                            3. Ajay borade   - 7798593363</p>
                      
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

