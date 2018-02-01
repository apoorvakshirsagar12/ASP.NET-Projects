<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="googler.aspx.vb" Inherits="googler" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="talento.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Googler</h1></center>
                        
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
                                           <p>Objective of this event is to elaborate typing and logical skills of participants.</p>
                                           <p>Any person of any field can participate. No restriction of branch and equal opportunity for each participant.</p>

                                        </Content>
                                    </cc1:AccordionPane>


                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc1">
                                        <Header>
                                           Round 1 : APTI-QUIZ 
                                        </Header>
                                        <Content>
                                           <p>It consist of set of questions like G.K. questions, image questions, puzzles,etc.
Each participant will be given a computer with full internet access and 20 ques. to be solved within 15 min. </p>
<p>Participants have to search for answers on internet and note down on answer sheet.</p>
<p>Only 20 candidates will be shortlisted from round one.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Round 2 :  EXTEMPORE 
                                            
                                        </Header>
                                        <Content>
                                      <p> Participant have to lift a chit. Participant has to search for the topic given to her/him for 5 min. on internet.</p>
<p>Just after searching, without any preparation, participant has to give a speech for 3 min on related topic.</p>
<p>On the basis of speech given, judges will choose 10 participants for final round.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            Round 3 : FASTEST FINGER FIRST
                                        </Header>
                                        <Content>
                                        <p>The organizer will announce a question. Participants have to listen question and search for solution on internet.</p>
<p>Fastest correct answer giving participant will get a point. Such type of 10 questions will be announced by the organizer.</p>
<p>According to the points, winner will be declared. In case of tie, scores from first round will be considered.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                           Rules
                                        </Header>
                                        <Content>
                                          <p>Single participant is allowed. No group entry.</p>
<p>Copy paste technique is not allowed. Participants have to type each and every word.</p>
<p>Organizers decision will be final.</p>

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
                            1. Bhargav Deshpande - 7276565921 </p>
                       <%-- <p>
                            2. Arun Chate - 9922249167 </p>
                        <p>
                            3. Nitish Hurduke - 8983174817 </p>
                        <p>
                            4. Amol Navale - 9423874912 </p>--%>
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

