<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="virtual_campus.aspx.vb" Inherits="virtual_campus" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="talento.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Virtual Campus</h1></center>
                        
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
                                      <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane3">
                                        <Header>
                                           Objective
                                        </Header>
                                        <Content>
                                          <p>To carve the personality of the students for global campus through this event and create an awareness about how the process works.</p>

                                        </Content>
                                    </cc1:AccordionPane>


                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc1">
                                        <Header>
                                           Round 1 : Screening
                                        </Header>
                                        <Content>
                                          <p> It will contain an aptitude and general knowledge test. There will be 50 questions from which 30 questions are from GK and rest of from aptitude.</p>
                                          <p>Question level will be medium. Time allotted will be 1 hours. </p>
                                          <p>There will be no negative marking. 40% students from all entries will be selected for second round.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Round 2 : Group Discussion
                                            
                                        </Header>
                                        <Content>
                                     <p>Selected students will be divided into groups. Each group will get subject and they have to follow discussion on the given subject with in allotted time limit.</p>
                                     <p>The time limit for GD will be decided on number of participants who cleared screening test. 50% students from participant of second round will be selected for third round.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            Round 3 : Extempore
                                        </Header>
                                        <Content>
                                        <p>Selected students for third round will undergo an extempore test. In this test, there will be number of chits on which various subjects for extempore are written. </p>
                                        <p>Student will pick up a chit and he will get 2 minutes time to think on the chosen subject. </p>
                                        <p>Student will get 5 minutes time to speak on that particular topic. 50% students from participant of second round will be selected for fourth round.</p>

                                        </Content>
                                    </cc1:AccordionPane>

                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane4">
                                        <Header>
                                            Round 4 : Personal Interview
                                        </Header>
                                        <Content>
                                       <p>The selected candidates will be interviewed by the judges and according to the defined criteria they will be evaluated. The criteria for the interview will be displayed after third round.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                           Rules
                                        </Header>
                                        <Content>
                                    <p>Single participant is allowed. No group entry.</p>
<p>Organizers hold the rights to change the rules in certain circumstances. </p>
<p>Organizers and judge’s decision will be final.</p>
<p>General Instruction for improve candidates performance will be given before every round.</p>


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
                            1. Swapnil Puri - 7387709206</p>
                           <%-- dau700@gmail.com 
                      --%>
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

