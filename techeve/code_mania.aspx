<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="code_mania.aspx.vb" Inherits="code_mania" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="noncore.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Code Mania</h1></center>
                        
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
                                           <p>Objective of this event is to elaborate developing and logical skills of participants.
Any person of any field can participate.
</p>
<p>No restriction of branch and equal opportunity for each participant. It will develop the knowledge of participant in different languages such as C and C++, JAVA and SQL.</p>
                                        </Content>
                                    </cc1:AccordionPane>


                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc1">
                                        <Header>
                                           Round 1 : APTI-QUIZ 
                                        </Header>
                                        <Content>
                                          <p>It consist of set of questions based on coding standards, syntax, wrong pattern, error code etc. Each participant will be given a question paper of 60 different questions. There will be four options for each question. 
                                          </p>

                                          <p>Time for this event will be 45 min. Participants have to find the correct answer among four options and tick the right answer on answer sheet. 1/3rd negative marking will be there. </p>
                                          <p>Only 15 candidates will be shortlisted from round one for each event.</p>
                                          <p><strong>C and C++</strong></p>
                                          <p>There will be 60 questions on C and C++to develop the interest of participants in this language. </p>
                                          <p><strong>JAVA</strong></p>
                                          <p>There will be 60 questions on JAVA to develop the interest of participants in this 	language.</p>
                                          
                                          <p><strong>SQL</strong></p>
                                          <p>There will be 60 questions on SQL to develop the interest of participants in this
Language
</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Round 2 : Blank Coding
                                            
                                        </Header>
                                        <Content>
                                         <p>That means participants will be given the three question statement and they have to develop the answer program for this. </p>
                                         <p>But the condition is that the screen will be off. Participants can’t look for the code they are writing they just have to code blind. </p>
                                         <p>The time for this will be 45 min and after that the answer will be checked. The marks will be allotted on the basis of output, syntax error and number of lines.</p>
                                         <p>Only 8 participants will be shortlisted from the second round in each event.</p>
                                        <p> Blank coding will be done in C and C++ to check there concentration in coding with C and C++/ JAVA / SQL.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            Round 3 : Advance Coder
                                        </Header>
                                        <Content>
                                           <p>In the third round, the shortlisted participants have to actually code on the given problem statement and develop a solution for it. In this round the level of coding will be advance and the concept used will be complex. </p>
                                           <p>There will be different points allotted to different problem statement. And participants have to find the solution. As per the problem statement solved points will be given.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                          Rules
                                        </Header>
                                        <Content>
                                           <p>There will be group of two participants maximum.</p>
<p>Mobile phones will put away from the participants.</p>
<p>Organizers decision will be final.</p>
<p>If any malfunctioning material found the participant will immediately be disqualified.</p>

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
                           Ravi Rathi - 8983129605 </p>
                          <%-- ravi111.rathi@gmail.com--%>

                      
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

