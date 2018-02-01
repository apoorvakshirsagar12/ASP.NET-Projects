<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="hightech_fair.aspx.vb" Inherits="hightech_fair" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="noncore.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">High Tech - Fair</h1></center>
                        
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
                                            Description
                                        </Header>
                                        <Content>
                                       <p> It will have 5 rounds </p>
		<p>1. LAN Gaming/Car Racing</p>
<p>2. Treasure Hunt</p>
<p>3. Blind Programming</p>
<p>4. Alternate Programming</p>
<p>5. Buzzer Round</p>

<br />
<p>In 1stround participant play games and winner will be selected for next round. </p>
<p>In 2nd round remaining participants  will divided into groups and hints will be given to this groups. On solving this hint they got next clue.  </p>
<p>In 3rd round groups split in individualsparticipants and each participants will have given one question to create program.</p>
<p>In 4th round   participants will have to solve or create 3 or 4 programs alternative within the specify time.</p>
<p>In 5th round remaining student will be play a Buzzer round. In this round we will select 2 ranks that is 1st, 2nd.</p>



                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                          Specifications
                                        </Header>
                                        <Content>
                                 <p> Individual entry are mandatory.</p>
<p>Taking the help form another and use of any electronic device are restricted.</p>
<p>Anyone found who will be doing cheating immediately disqualified and registration will be canceled.</p>
<p>All rights are reserved for authority/ management.</p>
<p>Fees once paid will not refundable </p>


                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                          Testing Conditions
                                        </Header>
                                        <Content>
                                 <p> Logical thinking, programming, presence of mind</p>

                                      
                                        </Content>
                                    </cc1:AccordionPane>
                                    

                                     <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                          Judging Criteria
                                        </Header>
                                        <Content>
                             <p> Participants will be judged purely on the amount of time they require to perform a given task at hand. </p>
<p>Also, in case of failure or partial success of all the participants, the portion of the task completed and time it required to do so will be taken into account. </p>
<p> Organizers reserve all the rights to make a decision and that decision will be final.</p>
<p>The scope and construct of competition is dynamic and organizers reserve the rights to 
change both at any time without prior notice to participants.</p>


                                      
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
                            1. Tushar Chatse - 9766940083</p>
                        <p>
                            2. Rupesh Gote - 8856944288 </p>
                      
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

