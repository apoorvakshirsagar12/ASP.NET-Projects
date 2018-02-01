<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="spell_brain.aspx.vb" Inherits="spell_brain" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
  <a  href="talento.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Spell UR Brain</h1></center>
                        
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
                                           Rules
                                        </Header>
                                        <Content>
                                           <p>Entries Expected: Group of 2 persons (150 max groups)</p>
                                           <p>Entry Fees: RS.25 per person</p>
                                           <p>Single entries are also allowed there groups will be made at the start of competition.</p>
                                        </Content>
                                    </cc1:AccordionPane>


                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc1">
                                        <Header>
                                           Round 1 : START TO THINK  
                                        </Header>
                                        <Content>
                                           <p><strong>LOGO GUESSING</strong></p>
                                           <p>Guess the logos in given Time.</p>

                                            <p><strong>SPELL THE WORDS</strong></p>
                                           <p>Write appropriate spelling of pronounced words in given time.No single mistake is considerable.</p>
                                           
                                             <p><strong>VISUAL CLUES</strong></p>
                                             <p>Guess the event what it called from visual clues (picture or videos).</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Round 2 : CLASH OF WORDS
                                            
                                        </Header>
                                        <Content>
                                           <p>Task related to vocabulary</p>
                                             <p><strong>MAGIC OF WORDS</strong></p>
                                              <p><strong>CRACK IT</strong></p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            Round 3 : FACE OFF
                                        </Header>
                                        <Content>
                                           <p>Checking your GK and presence of mind.</p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                           Round 4 : BRAIN-TEASERS
                                        </Header>
                                        <Content>
                                           <p>Surprise Round</p>
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
                            1. Amol Solanke - 9404525831 </p>
                        <p>
                            2. Arun Chate - 9922249167 </p>
                       
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

