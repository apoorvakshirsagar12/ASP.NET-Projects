<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="grid_solving.aspx.vb" Inherits="grid_solving" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="civil_etc.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                     <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Grid Solving</h1></center>
                        
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
                                            Problem Statement
                                        </Header>
                                        <Content>
                                            <p>
                                               The objective of this contest is for a robot to follow a black line on a white background, without losing the line,
                                                and navigating several 90 degree turns. </p>

                                            <p>
                                               The robot to complete the course in the shortest period of time while accurately tracking the course line from start to finish wins.
                                            </p>
                                            
                                           
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Specifications
                                        </Header>
                                        <Content>
                                            <p>Robot should fit in the cube of 25*25*25 cm3 dimension.</p>
                                            <p>Max 2 kg weight limit.</p>
                                            <p>Arena specification will be display on Tech’Eve website.</p>
                                            <p>24V DC supply.</p>
                                           
                                        </Content>
                                    </cc1:AccordionPane>
                                    
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            Judging Criteria
                                        </Header>
                                        <Content>
                                            <p>
                                                Once a robot has crossed the starting line it must remain fully autonomous, or it will be disqualified
                                            </p>
                                            <p>
                                               Any robot that loses the line course must reacquire the line at the point where it was lost, or at any earlier checkpoint.
                                            </p>
                                            <p>
                                               The decisions of all officials regarding these rules and the conduct of the event shall be final.
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
                            1. Umesh Nagalkar- 8237462374 </p>
                        <p>
                            2. Sumit Chavan - 9890922406 </p>
                          
                           
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

