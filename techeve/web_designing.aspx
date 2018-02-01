<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="web_designing.aspx.vb" Inherits="web_designing" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="noncore.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                        <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Web Designing</h1></center>
                      
                                              
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

                                <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                           Description
                                        </Header>
                                        <Content>
                                       <p>Web designing aims to provide a platform for exploring the creativity of  students in Web Designing Field and to appreciate the innovative ideas and technical skills. It is an event which  focuses on creating static and dynamic web pages according to the topic provided within specified time limit. </p>

                                        </Content>
                                    </cc1:AccordionPane>
                                     <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Specifications
                                        </Header>
                                        <Content>
                                            <p>
                                             The event has two rounds as follows:
                         <br>1. Round I    <br>2. Round II                                          
                                            
                                            
                                            <p> All the participants should have valid ID card of their respective institute with them along with the Receipt.      </p>
                                            <p>Only one computer with reliable internet connection(for specific amount of time) and required softwares will be provided for each team for developing the website. </p>
                                            <p>Co-coordinators decision will be final.The decision of judges will be final and binding to all.</p>
                                            <p>Rules may be changed without prior intimation. Participants are requested to check the website for updates In case any assistance is needed during the event, the teams should approach only the organizers.
Participants are expected to be on time.
</p>
                                          
                                        </Content>
                                    </cc1:AccordionPane>

                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc1">
                                        <Header>
                                           Event Structure
                                        </Header>
                                        <Content>
                                       
<p>There are two rounds</p>
<p><b>Round I. Aptitude Test - 1 Hour </b></p>
 It consists of set of questions based on general web development topics. There will be four options for each question. There will be no negative marking.
<p><b>Round II. Designing of Webpages - 2 Hours</b> </p>
 All shortlisted teams of Round I will be given a topic and they will have to design the website on respective topic using static and dynamic contents. Internet access will be provided to participants to gather the data on related topic but teams are not allowed to download the syntax or any other code of templates of website.


                                        </Content>
                                    </cc1:AccordionPane>
                                    
                                       
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane4">
                                        <Header>
                                            Team and Fee Structure
                                        </Header>
                                        <Content>
                                         <p> The Event allows a team of two members</p>
                                 <p>Entey Fees: 100 per team</p>
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
                            1. Apoorva Kshirsagar - 7843021031</p>
                        <p>
                            2. Anuja Ekhar - 7721865150</p>
                        <p>
                            3. Archana Singh - 8983224185</p>
                        <p>
                            4. Nutan Patil - 9158896379</p>
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

