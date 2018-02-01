<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="lan_gaming.aspx.vb" Inherits="lan_gaming" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="noncore.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">LAN Gaming</h1></center>
                        
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
                                            <p>
                                             It is said that Best Friends now Are Bitter Enemies in the past.Come here Play game on our LAN and make your rivals. ...Now your friends to remember in the future. 

                                             </p>
                                           
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Specifications  
                                        </Header>
                                        <Content>
                                           
                                           <p><strong> Games in LAN Fest</strong></p>
                                           <p>1. NFS Most Wanted</p>
                                           <p>2. Candy Crush</p>
                                           <p>3. Cricket </p>
                                           <p>4. Counter Strike</p>

                                           <p><strong>NFS</strong></p>
                                           <p>It will be played by individual person
                                Match will be played between 5 players
                                </p>
                                <p>Circuits will be decided by Coordinators
                                    Winner will qualify for next Round.
                                </p>
                                <p>Rounds will be decided on no. of participants
                                    Fees: 50 Rs for each player
                                </p>

                                           <p><strong>Candy Crush</strong></p>
                                           <p>It will be played by individual person 
Match will be played between 5 players
</p>
<p>Winner will be decided on highest score achieved by player in a particular level</p>
<p>Winner will qualify for next Round.
Rounds will be decided on no. of participants
</p>
<p><strong>Cricket</strong></p>
<p>It will be played by individual person</p>
<p>It will be a 5 over match </p>
<p>Two players will play against Computer.</p>
<p>The player who score more runs will qualify for next round.</p>      
<p>Rounds will be decided on no. of participants</p>

<p><strong>Counter Strike</strong></p>
<p>Each Team will have five members</p>
<p>First Round will be Knife Round. </p>
<p>Winner of knife round will get the option to choose their team (Terrorists or Counter Terrorists) or the map of their own.</p>
<p>The other team will choose the map or side whichever option is not selected by their opponents.</p>      
<p>Winning team will qualify for next round.</p>

                                          
                                        </Content>
                                    </cc1:AccordionPane>
                                    
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            Judging Criteria
                                        </Header>
                                        <Content>
                                            <p>
                                            It will be judged by Coordinators.
                                            </p>
                                            
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
                            1. Mukesh Dongre  - 9175694990</p>
                        <p>
                            2. Raunak Khandelwal - 9028047505 </p>
                       
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

