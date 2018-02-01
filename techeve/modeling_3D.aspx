<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="modeling_3D.aspx.vb" Inherits="modeling_3D" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="mech_eep.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h2 style="color:#372925; font-family:Lucida Calligraphy">3D Modelling</h2></center>
                       
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
                       <br />
                        <br />
                        <div class="accordion">
                            <cc1:Accordion ID="Accordion1" runat="server" HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
                                ContentCssClass="accordionContent" FadeTransitions="false" FramesPerSecond="40"
                                TransitionDuration="250" AutoSize="None" RequireOpenedPane="false" SuppressHeaderPostbacks="true"
                                SelectedIndex="0">
                                <Panes>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc1">
                                        <Header>
                                            Task
                                        </Header>
                                        <Content>
                                          <p>1. To convert Orthographic views into Isometric views and then to develop a Isometric model from obtained isometric view with the help of given material.</p>
                                          <p>2. To develop a Mechanism to perform a given task.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Rules
                                        </Header>
                                        <Content>
                                          <p>Thermocol sheets (for 2nd round) will be provided by organizers. Participants should bring other materials by their own. ( Drafter, Scale, Cutting and pasting material, Decorative Materials etc.)</p>
                                        <p>All the stuff required for 3rd round will be provided by organizers.</p>
                                        <p>Participants should perform the given task within time. No extra time will be given.</p>
                                        <p>Participant must bring the event receipt and college ID card.</p>
                                        <p>Maximum three members will be allowed in each team.</p>
                                        <p>Entry fees : Rs.100 per team.</p>
                                        
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            Instructions
                                        </Header>
                                        <Content>
                                          <p><strong>Round 1</strong></p>
                                          <p>This round will be consist of  aptitude test which will be based on the knowledge of Engineering graphics. This round will be the selection criteria for next round.</p>
                                        
                                        <p><strong>Round 2</strong></p>
                                        <p>In this round orthographic views of an object will be given to participants and they have to convert these views into isometric views. Further they have to develop isometric model from obtained views with the help of thermocol sheets.</p>
                                        <p>Participants can make their models attractive by using decorative materials. Participant team which will develop best model in this round will be awarded with prize.</p>

                                         <p><strong>Round 3</strong></p>
                                         <p>In this round participants have to develop mechanism to perform the given task. All the required materials (like wooden sheets, aluminum bars, nut bolts, motors,etc)  for making the mechanism will be provided by organizers.</p>
                                        </Content>

                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            Judging Criteria
                                        </Header>
                                        <Content>

                                          <p><strong>Round 1</strong></p>
                                          <p>Participants will be shortlisted for next round on the basis of obtained marks in the aptitude test. No negative marking.</p>

                                          <p><strong>Round 2</strong></p>
                                          <p>Participants will be shortlisted for 3rd round on the basis of model design, presentation and dimensional accuracy.</p>
                                          
                                          <p><strong>Round 3</strong></p>
                                          <p>Winner through this round will be decided on the basis of working of mechanism, time taken to develop the mechanism, etc. </p>
                                        
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
                            1. Rohitkumar Patil - 9028957211 </p>
                        <p>
                            2. Manish Vitekar - 8087210890 </p>
                       
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

