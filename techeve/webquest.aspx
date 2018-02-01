<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="webquest.aspx.vb" Inherits="webquest" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="noncore.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                       <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Web Quest 2.0</h1></center>
                        
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
                         <p>
                            <b>Description</b>
                        </p>
                        <p>
                           WebQuest 2.0 is an online, technically-oriented treasure hunt. To test participants’ technical skills and programming knowledge along with their grasp of concepts related to the World Wide Web is the aim of this competition. 
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
                                            Problem Statement
                                        </Header>
                                        <Content>
                                            <p>
                                               The Participants have to solve a basic technical puzzle to clear the pre-qualifier round..</p>
                                               <p>In the qualifying round, participants will be provided with a more intense, technically challenging programming task which takes them through the Web of sites to solve it.</p>
                                           
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Specifications
                                        </Header>
                                        <Content>
                                            <p>
                                             The competition will take place in three phases: pre-qualifiers, qualifiers and finals.                                            
                                            
                                            </p>
                                            <p>The participants will be allowed to use the internet to any extent during all the phases. Except in the case to collaborate or take help from other person. </p>
                                           
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            Testing Conditions
                                        </Header>
                                        <Content>
                                            <p>
                                                The participants will be tested for their basic technical know-how and ability to find, extract and interpret information from the World Wide Web in real-time. 
                                            </p>
                                            <p>
                                                This competition is NOT a coding competition and coding abilities will not be tested herein. 
                                            </p>
                                              
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            Judging Criteria
                                        </Header>
                                        <Content>
                                            <p>
                                              Participants will be judged purely on the amount of time they require to perform a given task at hand. 
                                            </p>
                                            <p>
                                              Also, in case of failure or partial success of all the participants, the portion of the task completed and time it required to do so will be taken into account.
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
                            1. Sushant Joshi  -09423744555 - sushant.or.j@gmail.com</p>
                        <p>
                            2. Harsh Gandhi  - 08087670998 - gandhiharsh20@gmail.com</p>
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

