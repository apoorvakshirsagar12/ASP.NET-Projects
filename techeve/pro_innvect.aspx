<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="pro_innvect.aspx.vb" Inherits="pro_innvect" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
  <a  href="civil_etc.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Pro-Innvect</h1></center>
                      
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
                                           General Rules
                                        </Header>
                                        <Content>
                                           <p>
                                           
                                          At the very first abstract of your project should send on our official mail.
                                          </p>
                                          <p>
                                          After receiving conformation mail, prepare your project for the final presentation with model.
                                          </p>
                                          
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Specifications
                                        </Header>
                                        <Content>
                                            <p>
                                            Project should be original and innovative with respect to the implement of the project on the field. 
                                            
                                           </p>
                                           <p>
                                           
                                          Detailed report should be available with you at the time of the presentation.
                                           
                                              </p>
                                              <p>
                                              Any forgery will leads to the disqualification of your project.
                                              </p>
                                        
                                        </Content>
                                    </cc1:AccordionPane>
                                    
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            Judging Criteria
                                        </Header>
                                        <Content>
                                           <p>
                                           Judgement will be given on the basis of the idea of innovation behind the project and its usefulness on the field.
                                           </p>
                                           <p>
                                           Extra marks are allotted for the presentation of the project.
                                           </p>
                                           <p>
                                           Final decision of the judges will be enforceable to all the participants.
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

