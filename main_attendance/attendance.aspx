<%@ Page Title="" Language="VB" MasterPageFile="~/sample.master" AutoEventWireup="false" CodeFile="attendance.aspx.vb" Inherits="attendance" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 1023px">
       <br />
        <br />
        <br />
        <br />
      
    <asp:Label ID="lblerror" runat="server" ForeColor="Red" Visible="False" 
            Width="40px" CssClass="lblcenter"></asp:Label>    <br />
        <br />
       

                
        <asp:Label ID="lblattendance" runat="server" Text="Attendance Sheet" 
            Font-Size="Large" CssClass="lblcenter"></asp:Label>
            <br />
            <div id="table1">
          <table align="center">
              <tr>
                  <td >
                      <asp:Label ID="lblcourse" runat="server" Font-Size="Large" Text="Course Name :"></asp:Label>
                  </td>
                  <td >
                     <asp:DropDownList ID="ddlcoursename" runat="server" Height="24px" 
                          Width="275px" AutoPostBack="True">
                      </asp:DropDownList>
                  </td>
              </tr>
               <tr>

              <td >
                      
                        
                      <asp:Label ID="lblyear" runat="server" Font-Size="Large" 
                          Text="Year :" Visible="False"></asp:Label>
                      
                        
                  </td>
                  <td >
                     
                      <asp:Label ID="lblyearans" runat="server" Font-Size="Large" 
                          Text="year" Visible="False"></asp:Label>
                  </td>
             </tr>
              <tr>
                  <td>
                      <asp:Label ID="lbllec" runat="server" Font-Size="Large" 
                          Text="Total Lectures Conducted :" Visible="False"></asp:Label>
                  </td>
                  <td >
             
                    <asp:Label ID="lbllecans" runat="server" Font-Size="Large" 
                          Text="count" Visible="False"></asp:Label>
                  </td>
              </tr>
             
                 
              
              
              <tr>
                  <td  >
                      <asp:Label ID="lbldate" runat="server" Font-Size="Large" 
                          Text=" Last Lecture Conducted on :" Visible="False"></asp:Label>
                        
                  </td>
                  <td  >
                      <asp:Label ID="lbldateans" runat="server" Font-Size="Large" 
                          Text="date" Visible="False"></asp:Label>
                  </td>
              </tr>
            
             <tr>
                  <td>
                      <asp:Label ID="lblcal" runat="server" Font-Size="Large" 
                          Text="Select Date :" Visible="False"></asp:Label>
                        
                   </td>
                  <td>

                      <asp:Calendar ID="Calendar" runat="server" BackColor="White" 
                          BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                          Font-Size="10pt" ForeColor="Black" Height="139px" NextPrevFormat="FullMonth" 
                          TitleFormat="Month" Width="277px" Visible="False">
                          <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                              ForeColor="#333333" Height="10pt" />
                          <DayStyle Width="14%" />
                          <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                          <OtherMonthDayStyle ForeColor="#999999" />
                          <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                          <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                              Font-Size="8pt" ForeColor="#333333" Width="1%" />
                          <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                              ForeColor="White" Height="14pt" />
                          <TodayDayStyle BackColor="#CCCC99" />
                      </asp:Calendar>

                </td>
              </tr>
            <tr>
                  <td >
                     
                  </td>
                  <td >
                    
                      <br />
                      <asp:Button ID="btnshow" runat="server" Font-Size="Medium" Height="30px" 
                          Text="View/Add Attendance" Visible="False" Width="172px" />
                  </td>
              </tr>
              
          </table>
          </div>
       
  </div>
</asp:Content>

