<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="thedo_surf.aspx.vb" Inherits="thedo_surf" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
  <a  href="civil_etc.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Thedo-Surf</h1></center>
                       
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
                                            Problem Statement
                                        </Header>
                                        <Content>
                                            <p>
                                              All the problem statements will be given on spot.</p>
                                           
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            General Rules
                                        </Header>
                                        <Content>
                                           <p>3 rounds will be there.</p>
   <p>1st consist the technical aptitude test purely based on the surveying. it will be of 30 marks with the negative marking system of 1/3 ratio for each question.
According to merit only 10 teams will be proceed for next round.</p>
 <p>2nd round consist the on field problem solving on the levelling of the land.</p>
 <p>5 teams will be selected for the final round.</p>
 <p>Final round will consist of the on field problem solving on theodolite traversing.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            Judging Criteria
                                        </Header>
                                        <Content>
                                            <p>
                                                Judgement will be given on the basis of the accuracy and the quickness of the calculations and the solving of the problems.
                                            </p>
                                            <p>
                                                Final decision will be given after considering all the aspects and it will be enforceable for the all participants.
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
                       <%-- <p>
                            1. adnan - 9209301088 - <a href="mailto:adnan@wings.org.in">adnan@wings.org.in</a></p>
                        <p>
                            2. sumit - 9421413556 - <a href="mailto:sumit@wings.org.in">sumit@wings.org.in</a></p>--%>
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

