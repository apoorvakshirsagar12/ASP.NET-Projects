<%@ Page Title="" Language="VB" MasterPageFile="~/event_master.master" AutoEventWireup="false" CodeFile="feedback.aspx.vb" Inherits="feedback" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<hr />

    <h1 style="color:#372925; font-family:Lucida Calligraphy">Feedback</h1>
    <asp:Label ID="lblerror" runat="server" Text="" ForeColor="black">
    </asp:Label>
  
  <div class="dynamiclabel">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="name" Display="None" ErrorMessage="Enter Name !" ValidationGroup="reg"></asp:RequiredFieldValidator>
                                               
                           <cc1:validatorcalloutextender id="RequiredFieldValidator1_ValidatorCalloutExtender"
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator1">
                                                        </cc1:validatorcalloutextender>
    <asp:TextBox ID="name" placeholder="Name" runat="server" BorderColor="Brown" BorderStyle=Solid BorderWidth="1px"></asp:TextBox>
  
    <label for="name"> Name</label>
  </div>

  <div class="dynamiclabel">  
 
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="email" Display="None" 
                                ErrorMessage="Enter Valid Email Address !" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="reg"></asp:RegularExpressionValidator>
                            <cc1:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                                runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
                            </cc1:ValidatorCalloutExtender>
     
     <asp:TextBox ID="email" placeholder="E-mail" runat="server"  BorderColor="Brown" BorderStyle=Solid BorderWidth="1px"></asp:TextBox>
    
        <label for="email">Email Address (Optional) </label>
  </div>

  <div class="dynamiclabel">
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="feedback" Display="None" ErrorMessage="Enter Feedback !" ValidationGroup="reg"></asp:RequiredFieldValidator>
                                                
                           <cc1:validatorcalloutextender id="Validatorcalloutextender1"
                                runat="server" enabled="True" targetcontrolid="RequiredFieldValidator2">
                                                        </cc1:validatorcalloutextender>
      <asp:TextBox ID="feedback" placeholder="Feedback" runat="server" TextMode="MultiLine"  BorderColor="Brown" BorderStyle=Solid BorderWidth="1px"></asp:TextBox>
          
     <label for="feedback">Feedback</label>
  </div>

  <div class="dynamiclabel">
  <div style="Width:350px">
  <center>
      <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="submitBtn" 
          ValidationGroup="reg" Height="30px" Width="90px"/>
  </center>
  </div>
  </div>

  </div>
</asp:Content>

