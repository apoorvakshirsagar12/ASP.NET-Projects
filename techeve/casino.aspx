<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="casino.aspx.vb" Inherits="casino" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="noncore.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">C Casino</h1></center>
                                                
                        
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
                                            <p>The C Casino is a multiple choice question based event. </p>
                                             <p>The idea of this event is taken from the Gaming Industry. </p>
                                             <p>To test participants’ technical skills and programming knowledge along with their grasp of concepts related to the core C Programming language is the aim of this competition. </p>
                                            <p>The participant will feel the like Casino which deals with Gaming Industry.</p>
                                        </Content>
                                    </cc1:AccordionPane>

                                       <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            Problem Statement
                                        </Header>
                                        <Content>
                                        <p>The Participants have to solve a basic technical question based on the C Programming Language and earn maximum points to win.</p>
                                        </Content>
                                    </cc1:AccordionPane>

                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Specifications
                                        </Header>
                                        <Content>
                                          <p>The competition will takes place in only one round. </p>
<p>The participants will be not allowed to take any kind of help because this is a single player game. </p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">

                                        <Header>
                                           Testing Conditions
                                        </Header>
                                        <Content>
                                         <p>The participants will be tested for their basic technical knowledge of C Programming language i.e. concepts, syntax and semantics.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    

                                     <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane3">
                                        <Header>
                                            Judging Criteria
                                        </Header>
                                        <Content>
                               <p>Participants will be judged purely on the amount of time they require to perform a given task at hand. </p>
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
                            1. Krishna Sandur  -  9404582285 - sandur.kishor@gmail.com </p>
                      
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

