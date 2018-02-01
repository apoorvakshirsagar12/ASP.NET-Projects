<%@ Page Title="" Language="VB" MasterPageFile="~/staff_master.master" AutoEventWireup="false" CodeFile="report.aspx.vb" Inherits="report" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 10px;
            width: 418px;
        }
        .style2
        {
            height: 10px;
            width: 109px;
        }
        .style3
        {
            width: 109px;
        }
        .style4
        {
            height: 271px;
            width: 702px;
        }
        .style5
        {
            width: 418px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- <center><asp:Label ID="Label2" runat="server" Text="Staff Name : "></asp:Label>
    <asp:Label ID="lblstaffname" runat="server"></asp:Label>
    <br />
    <br />

     <asp:Label ID="Label9" runat="server" Text="Select Department : "></asp:Label>
     <asp:DropDownList ID="ddldept" runat="server" AutoPostBack="True">
   <asp:ListItem Value="CS">Computer Science &amp; Engg</asp:ListItem>
                  <asp:ListItem Value="IT">Information Technology</asp:ListItem>
                  <asp:ListItem Value="ET">Electronics &amp; Telecommunication</asp:ListItem>
                  <asp:ListItem Value="EE">Electrical Engineering</asp:ListItem>
                  <asp:ListItem Value="CE">Civil Engineering</asp:ListItem>
                  <asp:ListItem Value="ME">Mechanical Engineering</asp:ListItem>
                  <asp:ListItem>MCA</asp:ListItem>
    </asp:DropDownList>


    &nbsp;<br /><br/>
        <asp:Label ID="Label1" runat="server" Text="Select Degree : "></asp:Label>
    <asp:RadioButton ID="rbug" runat="server" Text="UG" AutoPostBack="True" />
    <asp:RadioButton ID="rbpg" runat="server" Text="PG" AutoPostBack="True" />
    <br/>
    <br/>
    <asp:Label ID="Label3" runat="server" Text="Select Courses : "></asp:Label>
    <asp:DropDownList ID="ddlcourses" runat="server" AutoPostBack="True">
    <asp:ListItem>None</asp:ListItem>
    </asp:DropDownList>
 <asp:Label ID="Label4" runat="server" Text="Class : "></asp:Label>
 <asp:Label ID="lblclass" runat="server"></asp:Label>
 <br /><br/>

 <asp:Label ID="Label6" runat="server" Text="Select Date : "></asp:Label>
 <br />
  <asp:Label ID="Label7" runat="server" Text="From : "></asp:Label>
<asp:ImageButton ID="imgbtnCalendar" runat="server" ImageUrl="images/cal.jpg" 
        Height="19px" Width="22px" />
<ajax:CalendarExtender ID="calfrom" TargetControlID="txtfrom" 
        PopupButtonID="imgbtnCalendar" runat="server" Format="dd/MM/yyyy" />
<asp:TextBox ID="txtfrom" runat="server" readonly=true/> 

<asp:Label ID="Label8" runat="server" Text="To : "></asp:Label>
<asp:ImageButton ID="imgbtn" runat="server" ImageUrl="images/cal.jpg" 
        Height="19px" Width="22px" />
<ajax:CalendarExtender ID="calto" TargetControlID="txtto" PopupButtonID="imgbtn" 
        runat="server" Format="dd/MM/yyyy" />
<asp:TextBox ID="txtto" runat="server" readonly=true/> 
    <br /></br>

    <asp:Button ID="btndisplayreport" runat="server" Text="Display Report" />
     <asp:Button ID="btnprintreport" runat="server" Text="Print Report" />
     <br />
     <br />--%>


    <br/> 
    &nbsp;&nbsp;&nbsp; 
    <table border="1"
              style="margin-bottom: 0px;" class="style4">
              <tr>
                  <td class="style2">
                      <asp:Label ID="lblname" runat="server" Font-Size="Large" Text="Staff Name :"></asp:Label>
                  </td>
                  <td class="style1">
                      &nbsp; <asp:Label 
                          ID="lblstaffname" runat="server" Width="271px"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style3">
                      <asp:Label ID="lbldept" runat="server" Font-Size="Large" Text="Department :"></asp:Label>
                  </td>
                  <td align="left" class="style5">
             
                      &nbsp;<asp:DropDownList ID="ddldept" runat="server" AutoPostBack="True" Height="50px" 
                          Width="269px">
   <asp:ListItem Value="CS">Computer Science &amp; Engg</asp:ListItem>
                  <asp:ListItem Value="IT">Information Technology</asp:ListItem>
                  <asp:ListItem Value="ET">Electronics &amp; Telecommunication</asp:ListItem>
                  <asp:ListItem Value="EE">Electrical Engineering</asp:ListItem>
                  <asp:ListItem Value="CE">Civil Engineering</asp:ListItem>
                  <asp:ListItem Value="ME">Mechanical Engineering</asp:ListItem>
                  <asp:ListItem>MCA</asp:ListItem>
    </asp:DropDownList></td>
              </tr>
             
                 
              
              
              <tr>
                  <td class="style3">
                      <asp:Label ID="lblid" runat="server" Font-Size="Large" Text="Select Degree :"></asp:Label>
                  </td>
                  <td class="style5">
                      &nbsp;&nbsp;
                      &nbsp;<asp:RadioButton ID="rbug" runat="server" Text="UG" AutoPostBack="True" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="rbpg" runat="server" Text="PG" AutoPostBack="True" />
                  </td>
              </tr>
              <tr>
                  <td class="style3">
                      <asp:Label ID="lblpasswd" runat="server" Font-Size="Large" 
                          Text="Select Courses :" Width="122px"></asp:Label>
                  </td>
                  <td class="style5">
                      &nbsp;<asp:DropDownList ID="ddlcourses" runat="server" AutoPostBack="True" 
                          Height="26px" Width="273px">
    <asp:ListItem>None</asp:ListItem>
    </asp:DropDownList>
                  </td>
              </tr>
               <tr>
                  <td class="style3">
                      <asp:Label ID="Label4" runat="server" Text="Class : "></asp:Label>
                      </td>
 <td class="style5">&nbsp;&nbsp; <asp:Label ID="lblclass" runat="server"></asp:Label>
                  </td>
                  
                     
              </tr>
              <tr>
                  <td class="style3">
                      <asp:Label ID="Label6" runat="server" Text="Select Date : "></asp:Label>
                  </td>
                  <td class="style5">
                     &nbsp;&nbsp;
                     <asp:Label ID="Label7" runat="server" Text="From : "></asp:Label>
<asp:ImageButton ID="imgbtnCalendar" runat="server" ImageUrl="images/cal.jpg" 
        Height="19px" Width="24px" />
<ajax:CalendarExtender ID="calfrom" TargetControlID="txtfrom" 
        PopupButtonID="imgbtnCalendar" runat="server" Format="dd/MM/yyyy" />
<asp:TextBox ID="txtfrom" runat="server" readonly=true/> 

&nbsp;&nbsp;&nbsp; <asp:Label ID="Label8" runat="server" Text="To : "></asp:Label>
<asp:ImageButton ID="imgbtn" runat="server" ImageUrl="images/cal.jpg" 
        Height="19px" Width="22px" />
<ajax:CalendarExtender ID="calto" TargetControlID="txtto" PopupButtonID="imgbtn" 
        runat="server" Format="dd/MM/yyyy" />
<asp:TextBox ID="txtto" runat="server" readonly=true/> 
                  </td>
              </tr>
              
          </table>
          <br/><br/>
          &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btndisplayreport" runat="server" Text="Display Report" 
            Height="30px" Width="164px" />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="btnprintreport" runat="server" Text="Print Report" Height="30px" 
            Width="164px" />
     <br/><br/>
     &nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label5" runat="server" Text="Total Lectures Conducted : " 
            Font-Size="Large" Height="25px"></asp:Label>
    &nbsp;
    <asp:Label ID="lbltotallec" runat="server" Font-Size="Large" Height="25px"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Height="27px">
    </asp:Panel>
</asp:Content>

