<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="code_junkie.aspx.vb" Inherits="code_junkie" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="noncore.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                       <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Code Junkie</h1></center>
                        
                         <asp:Button ID="Button1" runat="server" Text="Click here to register" 
                            CssClass="RegBtn" BorderColor="#372925" BorderStyle="Double" 
                            BorderWidth="3px" />
                       <%-- <a href="downloads/ARTILLIGNCE.pdf">Click here to downlaod manual in PDF format</a>--%>

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
                                              To solve the general aptitude problems ,question in C language (Maximum questions correct scheme) and grab the chance to enter into next level – The Final.</p>
                                           
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Specifications
                                        </Header>
                                        <Content>
                                            <p>
                                             The event has two levels as follows:
                        1. Stage I
                         2. Stage II                                          
                                            
                                            </p>
                                            <p> All the participants should have valid ID card of their respective institute with them along with the Receipt.      </p>
                                            <p>Only one computer will be provided for a group in aptitude. 
Four life lines will be provided for aptitude questions which are available for only one use.
</p>
                                            <p>Consecutive three right answers will increase the level of hardness thereby increasing the marks for questions. Wrong answer in the progress will decrease level and score also.</p>
                                            <p>For wrong answer there will be a negative score. </p>
                                            <p>Co-coordinators decision will be final.The decision of judges will be final and binding to all.</p>
                                            <p>Rules may be changed without prior intimation. Participants are requested to check the website for updates In case any assistance is needed during the event, the teams should approach only the organizers.
Participants are expected to be on time.
</p>
                                          
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            Event Structure
                                        </Header>
                                        <Content>
                                            <p><strong>
                                               1.Aptitude Test </strong>
                                            </p>
                                            <p>
                                               Aptitude tests consist of set of question related to every technical aspect of C language. Aptitude is held in central computer lab. It is to be given on computer application. 
                                            </p>
                                            <p>
                                               There will be no limit on questions . Participant has to solve maximum questions correctly in the fixed Total time limit and will be considered for next level. You will be given the three to four lifelines which are only one time usable for the aptitude questions.
                                            </p>


                                            <p><strong>
                                               1. The Final </strong>
                                            </p>
                                            <p>
                                               Total time for it will be about 35 min.There will be limit on questions and each question will have fixed time quantum. Participant who solved maximum accurate question will be the winner. If the teams give correct answer they earn 10 point and if team failed to give correct answer within time, 5 point deducted from their score. Depending on scores Winner will be declared.
                                            </p>
                                                                                         
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            Team and Fee Structure
                                        </Header>
                                        <Content>
                                            <p>
                                             Each Team should have at max. 2 and min.1 students.
                                            </p>
                                            <p>
                                              Judgement will be given after combining the performance in the both the rounds.
                                            </p>
                                            <p>
                                              Fees: The registration fees is Rs.50/- per team
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
                            1. Krishna  Sontakke  - 9579491969 - sontakke.krishna123@gmail.com</p>
                        <p>
                            2. Shrikant Davange  - 8793585698 - shrikantdavange123@gmail.com</p>
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

