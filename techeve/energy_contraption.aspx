<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="energy_contraption.aspx.vb" Inherits="energy_contraption" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
  <a  href="mech_eep.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Energy Contraption</h1></center>
                        
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
                                         <p>Being derived from word contrivance +trap + invention a contraption is chain of different in which one step are triggered the next step on leading to completion of final goal. </p>
                                         <p>Prove your mettle by just putting your basics of physics math chemistry in action. </p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                          Allocation of Points
                                        </Header>
                                        <Content>
                                    <p>Light sound and wind energy 10 points.</p>
<p>Mechanical energy electronic component semiconductor devises 20 points</p>
<p>Electrical energy chemical hydraulic and magnetic energy. 30 points.</p>


                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                           Rules
                                        </Header>
                                        <Content>
                                 <p> Entire contraption must be between 6*6 feet area.</p>
<p> Each team can have maximum of 4 members</p>
<p> Any team falling to build there contraption within the time will be disqualified.</p>
<p> The steps of contraption should not have the explosive chemicals such team will be disqualified.</p>
<p> Maximum time allowed for trial is 20 minutes.</p>
<p> Items that are available in the venue are 220-230 V AC supply.</p>
<p> Tools of the contraption should be brought by participant themselves</p>
<p> Judge decision will be final decision.</p>
<p> All the participants should carry valid ID card of their respective institute along with the receipt.</p>

                                      
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
                     <%--   <p>
                            1. NITIN AVASARMOL - 8928215847</p>
                        <p>
                            2. RAHUL MAHAJAN - 8275932842 </p>
                        <p>
                            3. GANESH PARDESHI  - 8888144030</p>
                        <p>
                            4. SHUBHAM PARDESHI - 8624885333</p>--%>
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

