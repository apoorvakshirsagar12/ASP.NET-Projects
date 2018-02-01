
<%@ Page Title="" Language="VB" MasterPageFile="~/sample.master"  AutoEventWireup="false" CodeFile="staff.aspx.vb" Inherits="staff" %>

<script runat="server">

   
   </script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server" >
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style= "background-color:White; height: 1411px;" >

    <asp:Label ID="lblyear" runat="server" Text="Select Year"></asp:Label>&nbsp; &nbsp; &nbsp; 
<asp:DropDownList ID="ddlannualyear" runat="server" AutoPostBack="True" 
        Height="20px">
</asp:DropDownList> 
      <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>    
      
      <br />
       
    
        <br /> 
       
        <asp:Label ID="lblchgpass" runat="server" Text="Staff Information" Font-Size="Large"></asp:Label></br>
       
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Course Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcoursename" runat="server" ReadOnly="True" Width="200px" 
                        BorderColor="#999999"></asp:TextBox>
                    
                    </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Course Code"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="txtcode" runat="server" ReadOnly="True" Width="200px" 
                        BorderColor="#999999"></asp:TextBox>

                    </td>
            </tr>
        
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdept" runat="server" ReadOnly="True" Width="199px" 
                        BorderColor="#999999"></asp:TextBox>
                </td>
            </tr>

              <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Degree"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddldegree" runat="server" Enabled="false" Height="16px" 
                        Width="100px">
                        <asp:ListItem>UG</asp:ListItem>
                        <asp:ListItem>PG</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Class"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlclass" runat="server" Enabled="false"  Height="16px" 
                        Width="100px">
                        
                    </asp:DropDownList>
               
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Semester"></asp:Label>
                </td>
                <td >
                    <asp:DropDownList ID="ddlsem" runat="server" Enabled="false"  Height="16px" 
                        Width="100px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Type"></asp:Label>
                </td>
                <td >
                    <asp:DropDownList ID="ddltype" runat="server" Enabled="false"  Height="16px" 
                        Width="100px">
                        <asp:ListItem Value="t">Theory</asp:ListItem>
                        <asp:ListItem Value="p">Practical</asp:ListItem>
                        
                    </asp:DropDownList>
                </td>
            </tr>
      
      <%-- <asp:BoundField DataField="course_code" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                    <asp:BoundField DataField="course_name" HeaderText="fullName" SortExpression="fullName" />
                    <asp:BoundField DataField="sys_date" HeaderText="emailAddress" SortExpression="emailAddress" />
                    <asp:BoundField DataField="dept_name" HeaderText="userPassword" SortExpression="userPassword" />--%>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Staff Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtstaffname" runat="server" Width="193px"  ReadOnly=true 
                        BorderColor="#999999"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Staff Aadhaar No."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtaadhaar" runat="server" Width="193px"  ReadOnly=true
                        BorderColor="#999999"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td >
                </td>
                <td >
                    <br />
                   
                    <asp:Button ID="btnupdate" runat="server" 
                        CommandArgument='<%# Eval("course_code") %>' CommandName="UpdateR" 
                        Enabled="False" Text="Update" Width="94px" />
                    <asp:Button ID="btncancle" runat="server" Enabled="False" Text="Cancel" 
                        Width="72px" />
                    </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <center>
        <asp:GridView ID="GridView1" CssClass="listing" 
      BorderStyle="Solid" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" 
     OnRowUpdating="GridView1_RowUpdating" 
            Caption="Staff Information" CaptionAlign="Top" Width="959px" 
            CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <columns>
            <%-- <asp:BoundField DataField="course_code" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                    <asp:BoundField DataField="course_name" HeaderText="fullName" SortExpression="fullName" />
                    <asp:BoundField DataField="sys_date" HeaderText="emailAddress" SortExpression="emailAddress" />
                    <asp:BoundField DataField="dept_name" HeaderText="userPassword" SortExpression="userPassword" />--%>
            
            <asp:BoundField DataField="ccode" HeaderText="Course Code" SortExpression="ccode"/>
            <asp:BoundField DataField="course_name" HeaderText="Course Name" 
                  SortExpression="course_name"  ItemStyle-HorizontalAlign=Center />
             <asp:BoundField DataField="staff_name" HeaderText="Staff Name" 
                  SortExpression="staff_name"  ItemStyle-HorizontalAlign=Center />
                   <asp:BoundField DataField="unique_id" HeaderText="Aadhaar No." 
                  SortExpression="unique_id"  ItemStyle-HorizontalAlign=Center />

            <asp:BoundField DataField="semester" HeaderText="Semester" 
                  SortExpression="semester"  ItemStyle-HorizontalAlign=Center />
                  <asp:BoundField DataField="class" HeaderText="Class" 
                  SortExpression="class"  ItemStyle-HorizontalAlign=Center />
            <asp:BoundField DataField="course_type" HeaderText="Course Type" 
                  SortExpression="course_type"  ItemStyle-HorizontalAlign=Center />
          
             <asp:TemplateField>
              <ItemTemplate >
                <asp:Button ID="btnEdit" runat="server" CommandName="EditR" Text="Edit" 
                      CommandArgument='<%# Eval("course_code") %>' />        
               
               
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
    </div>

</asp:Content>

