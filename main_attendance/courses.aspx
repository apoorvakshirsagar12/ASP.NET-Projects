<%@ Page Title="" Language="VB" MasterPageFile="~/sample.master" AutoEventWireup="false" CodeFile="courses.aspx.vb" Inherits="courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Button ID="btnimport" runat="server" Height="31px" Text="Import File" 
          Width="97px" />
    <br/>
    <br/>
    <asp:Label ID="lblyear" runat="server" Text="Select Year"></asp:Label>&nbsp; &nbsp; &nbsp; 
<asp:DropDownList ID="ddlannualyear" runat="server" AutoPostBack="True" 
        Height="20px">
</asp:DropDownList> 
      <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
<br />
<br />
    
    <table height="200" border="1" style="width: 599px">
        <tr>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="Course Code"></asp:Label>
            </td>
            <td class="style6">
          &nbsp;&nbsp;
                <asp:TextBox ID="txtcode" runat="server" Height="24px" ReadOnly="True" 
              Width="206px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="Label2" runat="server" Text="System date"></asp:Label>
            </td>
            <td class="style8">
          &nbsp;&nbsp;
                <asp:TextBox ID="txtdate" Height="24px" runat="server" ReadOnly="True" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
            </td>
            <td class="style11">
          &nbsp;&nbsp;
                <asp:TextBox ID="txtdept" Height="24px" runat="server" ReadOnly="True" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="Label7" runat="server" Text="Degree"></asp:Label>
            </td>
            <td class="style11">
          &nbsp;&nbsp;
                <asp:DropDownList ID="ddldegree" runat="server" Width="81px" Height="24px" Enabled="False" 
              AutoPostBack="True">
                    <asp:ListItem>UG</asp:ListItem>
                    <asp:ListItem>PG</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <b><asp:Label ID="Label4" runat="server" Text="Course Name"></asp:Label></b>
            </td>
            <td class="style1">
          &nbsp;&nbsp;
                <asp:TextBox ID="txtname" Height="24px" runat="server" ReadOnly="True" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                Class</td>
            <td class="style11">
          &nbsp;&nbsp;
                <asp:DropDownList ID="ddlclass" Height="24px" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="Label6" runat="server" Text="Semester"></asp:Label>
            </td>
            <td class="style13">
          &nbsp;&nbsp;
                <asp:DropDownList ID="ddlsem" Height="24px" runat="server" Enabled="False">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style14">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
              ID="btnupdate" runat="server" Text="Update" Width="82px" Enabled="False" 
              style="margin-left: 7px" Height="30px"  />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancle" runat="server" 
              style="margin-left: 0px" Text="Cancel" Width="82px" Enabled="False" 
              Height="30px" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>

    <br />
    <br />
    <center>
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
            
            <asp:BoundField DataField="ccode" HeaderText="Course Code" SortExpression="ccode"/>
            <asp:BoundField DataField="course_name" HeaderText="Course Name" 
                  SortExpression="course_name"  ItemStyle-HorizontalAlign=Center />
            <asp:BoundField DataField="iselective" HeaderText="Is Elective?" 
                  SortExpression="iselective"  ItemStyle-HorizontalAlign=Center />
            <asp:BoundField DataField="semester" HeaderText="Semester" 
                  SortExpression="semester"  ItemStyle-HorizontalAlign=Center />
                  <asp:BoundField DataField="class" HeaderText="Class" 
                  SortExpression="class"  ItemStyle-HorizontalAlign=Center />
            <asp:BoundField DataField="course_type" HeaderText="Course Type" 
                  SortExpression="course_type"  ItemStyle-HorizontalAlign=Center />
            <asp:BoundField DataField="degree" HeaderText="Degree" SortExpression="degree"  ItemStyle-HorizontalAlign=Center />

             <asp:TemplateField>
              <ItemTemplate >
                <asp:Button ID="btnEdit" runat="server" CommandName="EditR" Text="Edit" 
                      CommandArgument='<%# Eval("course_code") %>' />        
                <asp:Button ID="btnDelete" runat="server" CommandName="DeleteR" Text="Delete" 
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
</asp:Content>

