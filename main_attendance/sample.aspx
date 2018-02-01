<%@ Page Language="VB" AutoEventWireup="false" CodeFile="sample.aspx.vb" Inherits="sample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

    <table border="1" align="center" 
              style="height: 325px; width: 616px; margin-bottom: 0px;">
              <tr>
                  <td class="style11">
                      <asp:Label ID="lblname" runat="server" Font-Size="Large" Text="Staff Name :"></asp:Label>
                  </td>
                  <td width="443" class="style2">
                      &nbsp; <asp:Label 
                          ID="lblstaffname" runat="server" Width="271px"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style12">
                      <asp:Label ID="lbldept" runat="server" Font-Size="Large" Text="Department :"></asp:Label>
                  </td>
                  <td align="left" class="style10">
             
                      &nbsp;<asp:DropDownList ID="ddldept" runat="server" AutoPostBack="True" Height="16px" 
                          Width="271px">
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
                  <td class="style13">
                      <asp:Label ID="lblid" runat="server" Font-Size="Large" Text="Select Degree :"></asp:Label>
                  </td>
                  <td class="style9">
                      &nbsp;&nbsp;
                      &nbsp;<asp:RadioButton ID="rbug" runat="server" Text="UG" AutoPostBack="True" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="rbpg" runat="server" Text="PG" AutoPostBack="True" />
                  </td>
              </tr>
              <tr>
                  <td class="style14">
                      <asp:Label ID="lblpasswd" runat="server" Font-Size="Large" Text="Select Courses :"></asp:Label>
                  </td>
                  <td class="style8">
                      &nbsp;<asp:DropDownList ID="ddlcourses" runat="server" AutoPostBack="True" 
                          Height="16px" Width="273px">
    <asp:ListItem>None</asp:ListItem>
    </asp:DropDownList>
                  </td>
              </tr>
               <tr>
                  <td class="style15">
                      <asp:Label ID="Label4" runat="server" Text="Class : "></asp:Label>
                      </td>
 <td class="style5">&nbsp;&nbsp; <asp:Label ID="lblclass" runat="server"></asp:Label>
                  </td>
                  
                     
              </tr>
              <tr>
                  <td class="style15">
                      <asp:Label ID="Label6" runat="server" Text="Select Date : "></asp:Label>
                  </td>
                  <td class="style5">
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
                  </td>
              </tr>
              
          </table>
    </div>
    </form>
</body>
</html>
