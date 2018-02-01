<%@ Page Title="" Language="VB" MasterPageFile="~/staff_master.master" AutoEventWireup="false" CodeFile="stud_info.aspx.vb" Inherits="stud_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style= "background-color:White; height: 1411px;" >

    <br />
        <br />
        <br />
        <br />
        <br />
        <br />
<table border="0" align="center" 
              style="height: 138px; width: 616px; margin-bottom: 0px;">
              <tr>
                  <td>
                      <asp:Label ID="lbldept" runat="server" Font-Size="Large" Text="Department :"></asp:Label>
                  </td>
                  <td align="left">
             
                      &nbsp;
             
                      <asp:DropDownList ID="ddldept" runat="server" Height="24px" Width="277px" 
                          AutoPostBack="True">
                      </asp:DropDownList>
                  </td>
              </tr>
              
              <tr>
                  <td class="style15">
                      <asp:Label ID="Label3" runat="server" Font-Size="Large" 
                          Text="Select Degree : "></asp:Label>
                  </td>
                  <td class="style5">
                  <asp:RadioButton ID="rbug" runat="server" Text="UG" GroupName="rbdegree" 
                          Checked="true" AutoPostBack="True"></asp:RadioButton>
                      &nbsp;<asp:RadioButton ID="rbpg" runat="server" Text="PG" GroupName="rbdegree" 
                          AutoPostBack="True"></asp:RadioButton>

                  </td>
              </tr>

               <tr>
                  <td class="style12">
                      <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Select Course :"></asp:Label>
                  </td>
                  <td align="left" class="style10">
             
                      &nbsp;
             
                      <asp:DropDownList ID="ddlcourse" runat="server" Height="24px" Width="277px" 
                          AutoPostBack="True">

                        <asp:ListItem>None</asp:ListItem>
                      </asp:DropDownList>

                      </td>
                      </tr>
          </table>



          </br>
          </br>
<asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>


<table border="1" align="center" 
              style="height: 138px; width: 616px; margin-bottom: 0px;">

             <tr>
                  <td class="style11">
                      <asp:Label ID="lblname" runat="server" Font-Size="Large" Text="Student Enrollment No. :"></asp:Label>
                  </td>
                  <td width="443" class="style2">
                      &nbsp;<asp:TextBox ID="txtstudid" runat="server" Height="20px" Width="276px" 
                          BorderColor="Silver"></asp:TextBox>
                  </td>
              </tr>

              <tr>
                  <td class="style11">
                      <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Student Name :"></asp:Label>
                  </td>
                  <td width="443" class="style2">
                      &nbsp;<asp:TextBox ID="txtstudname" runat="server" Height="20px" Width="276px" 
                          BorderColor="Silver"></asp:TextBox>
                  </td>
              </tr>




              <tr>
                  <td>
                      <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Class :"></asp:Label>
                  </td>
                  <td align="left">
             
                      &nbsp;
             
                      <asp:DropDownList ID="ddlclass" runat="server" Height="24px" Width="277px">
                          <asp:ListItem>None</asp:ListItem>
                          
                         
                      </asp:DropDownList>
                  </td>
              </tr>


              <tr>
                  <td>
                      <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Semester :"></asp:Label>
                  </td>
                  <td align="left">
             
                      &nbsp;
             
                      <asp:DropDownList ID="ddlsem" runat="server" Height="24px" Width="277px">
                          <asp:ListItem>None</asp:ListItem>
                          
                         
                      </asp:DropDownList>
                  </td>
              </tr>
              
               <tr>
                  <td class="style11">
                      <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Annual Year :"></asp:Label>
                  </td>
                  <td width="443" class="style2">
                      &nbsp;<asp:TextBox ID="txtannualyear" runat="server" Height="20px" Width="276px" 
                          BorderColor="Silver"></asp:TextBox>
                  </td>
              </tr>
            
          </table>

          
    <br />
    </br>
    <asp:GridView ID="GridView1" CssClass="listing" 
      BorderStyle="Solid" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" 
      OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" 
            Caption="Courses" CaptionAlign="Top" Width="959px" 
            CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <columns>
            <%-- <asp:BoundField DataField="course_code" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                    <asp:BoundField DataField="course_name" HeaderText="fullName" SortExpression="fullName" />
                    <asp:BoundField DataField="sys_date" HeaderText="emailAddress" SortExpression="emailAddress" />
                    <asp:BoundField DataField="dept_name" HeaderText="userPassword" SortExpression="userPassword" />--%>
            
            <asp:BoundField DataField="stud_id" HeaderText="Student ID" SortExpression="stud_id"/>
            <asp:BoundField DataField="stud_name" HeaderText="Student Name" 
                  SortExpression="stud_name" />
           
            <asp:BoundField DataField="semester" HeaderText="Semester" 
                  SortExpression="semester"  ItemStyle-HorizontalAlign=Center />
                  <asp:BoundField DataField="class" HeaderText="Class" 
                  SortExpression="class"  ItemStyle-HorizontalAlign=Center />
                  <asp:BoundField DataField="annual_year" HeaderText="Annual Year" 
                  SortExpression="annual_year"  ItemStyle-HorizontalAlign=Center />
          

             <asp:TemplateField>
              <ItemTemplate >
                <asp:Button ID="btnEdit" runat="server" CommandName="EditR" Text="Edit" 
                      CommandArgument='<%# Eval("stud_id") %>' />        
                <asp:Button ID="btnDelete" runat="server" CommandName="DeleteR" Text="Delete" 
                      CommandArgument='<%# Eval("stud_id") %>' />        
               
              </ItemTemplate>
            </asp:TemplateField>

          </columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        </center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:attendanceConnectionString %>" >
         
      </asp:SqlDataSource>

          
</asp:Content>

