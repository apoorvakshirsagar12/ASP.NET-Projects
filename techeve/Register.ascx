<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Register.ascx.vb" Inherits="Register" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
     <cc1:ModalPopupExtender ID="mdlPopup" runat="server" TargetControlID="pnlPopup" PopupControlID="pnlPopup"
        BackgroundCssClass="modalBackground" />
    <asp:Panel ID="pnlPopup" runat="server" CssClass="updateProgress" Style="display: none">
        <div align="center" style="margin-top: 13px;">
            <span class="updateProgressMessage">
                <img src="images/6-1.gif" alt="Loading" />
                Loading ...</span>
        </div>
    </asp:Panel>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
            
                <table style="background-color:Black; color:White; border: 9px double Gray">
               
                 <center> <asp:Label ID="lblerror" runat="server" Text="hhhhhh" widht="100px" ForeColor="#CC0000"> </asp:Label></center>
              
                
                    <tr>
                        <td>
                            Group Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtgroupname" Display="None" ErrorMessage="Enter Group Name !" ValidationGroup="reg"></asp:RequiredFieldValidator>
                              <cc1:validatorcalloutextender id="RequiredFieldValidator1_ValidatorCalloutExtender"
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator1">
                                                        </cc1:validatorcalloutextender>                   
                           
                            
                        </td>
                        <td>
                            <asp:TextBox ID="txtgroupname" runat="server" CssClass="txt" MaxLength="500"></asp:TextBox>
                            <cc1:textboxwatermarkextender id="txtGroupName_TextBoxWatermarkExtender" runat="server"
                                enabled="True" targetcontrolid="txtGroupName" watermarktext="Enter Group Name">
                                                        </cc1:textboxwatermarkextender>
                        </td>
                       
                    </tr>
                    <tr>
                        <td>
                            Group Lead Name
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtgroupleadname"
                                Display="None" ErrorMessage="Enter Group Lead Name !" ValidationGroup="reg"></asp:RequiredFieldValidator>
                            <cc1:validatorcalloutextender id="RequiredFieldValidator2_ValidatorCalloutExtender"
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator2">
                                                        </cc1:validatorcalloutextender>
                        </td>
                        <td>
                            <asp:TextBox ID="txtgroupleadname" runat="server"  CssClass="txt" 
                                MaxLength="500"></asp:TextBox>
                            <cc1:textboxwatermarkextender id="txtgroupleadname_TextBoxWatermarkExtender" runat="server"
                                enabled="True" targetcontrolid="txtgroupleadname" 
                                watermarktext="Enter Group Lead Name">
                                                        </cc1:textboxwatermarkextender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Number of Participants
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtparticipants" Display="None" 
                                ErrorMessage="Enter Number of participants !" ValidationGroup="reg"></asp:RequiredFieldValidator>
                            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender2" 
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator3">
                            </cc1:ValidatorCalloutExtender>
                            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator3_validatorcalloutextender" 
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator3">
                            </cc1:ValidatorCalloutExtender>
                        </td>
                        <td>
                            <asp:TextBox ID="txtparticipants" runat="server"  CssClass="txt" 
                                MaxLength="2"></asp:TextBox>
                            <cc1:FilteredTextBoxExtender ID="txtparticipants_FilteredTextBoxExtender" 
                                runat="server" Enabled="True" FilterType="Numbers"
                                TargetControlID="txtparticipants">
                            </cc1:FilteredTextBoxExtender>
                            <cc1:textboxwatermarkextender id="txtparticipants_TextBoxWatermarkExtender" runat="server"
                                enabled="True" targetcontrolid="txtparticipants" 
                                watermarktext="Total participants">
                                                        </cc1:textboxwatermarkextender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Event Name
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="ddleventname" Display="None" 
                                ErrorMessage="Select Event Name !" InitialValue="Select" ValidationGroup="reg"></asp:RequiredFieldValidator>
                            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator4_validatorcalloutextender" 
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator4">
                            </cc1:ValidatorCalloutExtender>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddleventname" runat="server" CssClass="txt">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Code Junkie</asp:ListItem>
                                <asp:ListItem>Web Quest 2.0</asp:ListItem>
                                <asp:ListItem>Web Designing</asp:ListItem>
                                <asp:ListItem>Lan Fest</asp:ListItem>
                                <asp:ListItem>3D Modeling</asp:ListItem>
                                <asp:ListItem>Roborace</asp:ListItem>
                                <asp:ListItem>Robowar</asp:ListItem>
                                <asp:ListItem>Water Rocket</asp:ListItem>
                                <asp:ListItem>Jugaad</asp:ListItem>
                                <asp:ListItem>Circut Fixer</asp:ListItem>
                                <asp:ListItem>Robo Soccer</asp:ListItem>
                                <asp:ListItem>Contraption</asp:ListItem>
                                <asp:ListItem>HightechFair</asp:ListItem>
                                <asp:ListItem>New Casino</asp:ListItem>
                                <asp:ListItem>New Ladder</asp:ListItem>
                                <asp:ListItem>Ring Master</asp:ListItem>
                                <asp:ListItem>Deckstro</asp:ListItem>
                                <asp:ListItem>Plannifica</asp:ListItem>
                                <asp:ListItem>Pro-Innvect</asp:ListItem>
                                <asp:ListItem>Thedo Surf</asp:ListItem>
                                <asp:ListItem>Code Mania</asp:ListItem>
                                <asp:ListItem>Virtual Campus</asp:ListItem>
                                <asp:ListItem>Googler</asp:ListItem>
                                <asp:ListItem>Grid Solving</asp:ListItem>
                                <asp:ListItem>Pick and Place</asp:ListItem>
                                <asp:ListItem>Technothon</asp:ListItem>
                                <asp:ListItem>Spell UR Brain</asp:ListItem>
                                
                               
                                
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email Address
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtemailaddress" Display="None" 
                                ErrorMessage="Enter Email Address !" ValidationGroup="reg"></asp:RequiredFieldValidator>
                            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator5_validatorcalloutextender" 
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator5">
                            </cc1:ValidatorCalloutExtender>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtemailaddress" Display="None" 
                                ErrorMessage="Enter Valid Email Address !" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="reg"></asp:RegularExpressionValidator>
                            <cc1:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                                runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
                            </cc1:ValidatorCalloutExtender>
                        </td>
                        <td>
                            <asp:TextBox ID="txtemailaddress" runat="server"  CssClass="txt" 
                                MaxLength="500"></asp:TextBox>
                            <cc1:textboxwatermarkextender id="txtEmailAddress_TextBoxWatermarkExtender" runat="server"
                                enabled="True" targetcontrolid="txtEmailAddress" 
                                watermarktext="Enter Email Address">
                                                        </cc1:textboxwatermarkextender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contact Number
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtcontact" Display="None" 
                                ErrorMessage="Enter Contact Number !" ValidationGroup="reg"></asp:RequiredFieldValidator>
                            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator6_validatorcalloutextender" 
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator6">
                            </cc1:ValidatorCalloutExtender>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcontact" runat="server"  CssClass="txt" 
                                MaxLength="10"></asp:TextBox>
                            <cc1:FilteredTextBoxExtender ID="txtcontact_FilteredTextBoxExtender" 
                                runat="server" Enabled="True" FilterType="Numbers" 
                                TargetControlID="txtcontact">
                            </cc1:FilteredTextBoxExtender>
                            <cc1:textboxwatermarkextender id="txtcontact_TextBoxWatermarkExtender" runat="server"
                                enabled="True" targetcontrolid="txtcontact" 
                                watermarktext="Enter Contact Number">
                                                        </cc1:textboxwatermarkextender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            College Name
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtcollegename" Display="None" 
                                ErrorMessage="Enter College Name !" ValidationGroup="reg"></asp:RequiredFieldValidator>
                            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator7_validatorcalloutextender" 
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator7">
                            </cc1:ValidatorCalloutExtender>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcollegename" runat="server"  CssClass="txt" MaxLength="500"></asp:TextBox>
                            <cc1:textboxwatermarkextender id="txtCollegeName_TextBoxWatermarkExtender" runat="server"
                                enabled="True" targetcontrolid="txtCollegeName" 
                                watermarktext="Enter College Name">
                                                        </cc1:textboxwatermarkextender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            City
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtcity" Display="None" ErrorMessage="Enter City Name !" ValidationGroup="reg"></asp:RequiredFieldValidator>
                            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator8_validatorcalloutextender" 
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator8">
                            </cc1:ValidatorCalloutExtender>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server"  CssClass="txt" MaxLength="500"></asp:TextBox>
                            <cc1:textboxwatermarkextender id="txtCity_TextBoxWatermarkExtender" runat="server"
                                enabled="True" targetcontrolid="txtCity" watermarktext="Enter Your City">
                                                        </cc1:textboxwatermarkextender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            State
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtstate" Display="None" ErrorMessage="Enter State Name !" ValidationGroup="reg"></asp:RequiredFieldValidator>
                            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator9_validatorcalloutextender" 
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator9">
                            </cc1:ValidatorCalloutExtender>
                        </td>
                        <td>
                            <asp:TextBox ID="txtstate" runat="server"  CssClass="txt" MaxLength="500"></asp:TextBox>
                            <cc1:textboxwatermarkextender id="txtState_TextBoxWatermarkExtender" runat="server"
                                enabled="True" targetcontrolid="txtState" 
                                watermarktext="Enter Your State Name">
                                                        </cc1:textboxwatermarkextender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                        <%--OnClick="btnSubmit_Click" needs to add here--%>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="submitBtn" ValidationGroup="reg"/>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
            <p>
                <strong>
                    <asp:Label ID="lblMsg" runat="server" BackColor="Black" ForeColor="White" 
                    BorderStyle="Double" BorderColor="#999999" BorderWidth="3px" Height="70px" 
                    Width="250px"></asp:Label></strong></p>
            </asp:View>
        </asp:MultiView>
    </ContentTemplate>
</asp:UpdatePanel>

