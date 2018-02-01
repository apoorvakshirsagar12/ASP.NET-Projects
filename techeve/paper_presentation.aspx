<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="paper_presentation.aspx.vb" Inherits="paper_presentation" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Register.ascx" TagName="Register" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width:100%">
 <hr />
 <a  href="talento.aspx">Back to Events</a>
            <table class="table1">
                <tr>
                    <td>
                       <center><h1 style="color:#372925; font-family:Lucida Calligraphy">Paper Presentation</h1></center>
                        
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
                                        General Rules
                                        </Header>
                                        <Content>
                                          <p>1.Your work should be original and in the specified format.</p>
                                        <p>2.Interested candidates are advised to mail the complete paper in IEEE format and presentation in .ppt or .pptx format to paperptecheve2015@gmail.com with < paper title> in the Subject field of the mail.</p>
                                        <p>3.	The competition is open to all students.</p>
                                        <p>4.	The registration fee per paper is Rs100/-</p>
                                        <p>5.	The participants of shortlisted candidates will be informed by E-Mail ID or by Mobile and they would have to send reply confirming their participation.</p>
                                       <p>6.	Any paper that is selected and is not presented anywhere, shall not qualify for any awards.</p>
                                       <p>7.	The selected teams have to bring a soft copy of paper in CD and 2 hard copies of paper at the time of presentation.</p>
                                       <p>8.	Decision of the judges and the event heads shall be treated as final and binding on all and cannot be contested.</p>
                                       <p>9.	Directly copying from the internet is strongly discouraged and will not be entertained.</p>
                                       <p>10.	All the candidates will get participation certificates.</p>
                                       
                                       <p>11.	The participants should come with college ID Card.</p>
                                       <p>12.	For any clarification or further details the interested candidates can contact the student coordinators</p>
                                       <p></p>
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="acc2">
                                        <Header>
                                            Team Formation
                                        </Header>
                                        <Content>
                                         <p> 1.Team can have maximum of 2 participants from B.Tech./B. E.</p>
                                         <p>2.No participants can be part of more than one team.</p>
                                         <p>3.It is not necessary that the participants forming a team should be from the same college.</p>
                                         <p>4.There is no restriction on the number of teams from the same college.</p>

                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane1">
                                        <Header>
                                            Presentation Rules
                                        </Header>
                                        <Content>
                                        
                                        <p>1.The paper submitted will have to be presented during the event.</p>
                                        <p>2.Hard copies of the same are to be submitted before presentation.</p>
                                        <p>3.The Teams will get 8-10 minutes to present their paper.</p>
                                        <p>4.It will be followed by a question and answer session.</p>
                                        <p>5.The participants will have to present their papers in MS-Power Point (ppt) format only.</p>
                                        <p>6.Violation of any rule can result in rejection of paper.</p>
                                        <p>7.The organizers reserve the right to change/update the rules of the contest at any point of time and will do their best to inform to participants of the same. However, it is ultimately the responsibility of the teams to keep themselves updated.</p>
      
                                        </Content>
                                    </cc1:AccordionPane>
                                    <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane2">
                                        <Header>
                                            Paper Format Rules
                                        </Header>
                                        <Content>
                            <p>1.The paper should be in IEEE format.</p>
                            <p>2.The front page should have title of paper on the top and the details of the team members (as mentioned in the abstract) at the bottom.</p>
                            <p>3.It should have abstract and certificate attached after front page.</p>
                            <p>4.Font style for text: Times New Roman.</p>
                            <p>5.Font size for text: 12 points.</p>
                           <p>6.Font size for headings: 18 points.</p>
                            <p>7.Font size for sub-headings: 14 points.</p>

                                        </Content>
                                    </cc1:AccordionPane>


                                     <cc1:AccordionPane runat="server" HeaderCssClass="" ContentCssClass="" ID="AccordionPane4">
                                        <Header>
                                           Areas for Presentation
                                        </Header>
                                        <Content>
                                <%-- <p><strong>1.Mechanical Engineering</strong></p>
                                 <p>a)</p>
                                 <p>b)</p>
                                 <p>c)</p>
                                 <p>d)</p>--%>

                                 <p><strong>Electrical Engineering</strong></p>
                                 <p>a)Advanced control system</p>
                                 <p>b)Renewable Energy</p>
                                 <p>c)Application of power Electronics</p>
                                 <p>d)Advance in Electrical Efficiency</p>

                                 <p><strong>Civil Engineering</strong></p>
                                 <p>a)Erecting techniques of high rise building</p>
                                 <p>b)Affordable housing</p>
                                 <p>c)Post tensioning slab</p>
                                 <p>d)Green, sustainable housing</p>
                               
                                  <p><strong>Electronics And Telecommunication Engineering</strong></p>
                                 <p>a)Analog VLSI design</p>
                                 <p>b)Wireless communication</p>
                                 <p>c)Micro Electromechanical Systems (MEMS)</p>
                                 <p>d)Image Authentication</p>

                                  <p><strong>CSE,IT & MCA</strong></p>
                                 <p>a)Recent trends and developments in IT</p>
                                 <p>b)Networking,Cloud Computing & Green Computing</p>
                                 <p>c)Open source technology</p>
                                 <p>d)Virtual Reality</p>
                                 <p>e)Image Processing</p>
                                 <p>f)High Performance Computing</p>
                                        </Content>
                                    </cc1:AccordionPane>

                                </Panes>
                            </cc1:Accordion>
                        </div>
                        <br />
                        <p>
                            <b>** Organizers reserves all the rights to make a decision and that decision will be
                                final.</b></p>
                        <p><b>Event Incharge</b></p>
                        <p>1. Pramod Solanke(E&TC) - 9011340208</p>
                        <p>2. Swapnil Puri(IT) -   7387709206</p>
                        <p>3. Pratiksha Garje(Electrical) - 9404369184</p>
                        <p>4. Kalyani Khedkar(CSE) -  7385094118</p>
                        <p>5. Pratik Nalawade(Mechanical) - 9403696495</p>
                        <p>6. Sonal Kulkarni(Civil) - 8275391576</p>
                        <p>7. Devendra Mali(E&TC) - 8554030199</p>
                        <p>8. Abhijit Khandare(MCA) - 9096333533</p>
                        
                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

