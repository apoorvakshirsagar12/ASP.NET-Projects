<%@ Page Title="" Language="VB" MasterPageFile="~/sample.master" AutoEventWireup="false"
    CodeFile="feedcourse.aspx.vb" Inherits="feedcourse" %>

<%--admin_master--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <br />
        <br />
        <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Width="276px" 
            CssClass="lblcenter"></asp:Label>
        <br />
        <br />
        
        <asp:Label ID="lbl1" runat="server" Text="Import File" Font-Size="Large" CssClass="lblcenter"></asp:Label></br>
        <br />
        <%--admin_master--%>

        <table width="512" height="200" border="1" style="margin-left:200px">
    <tr>
      <td width="190" class="style6">
          Year</td>
      <td class="style7">
          &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txtyear" runat="server" Height="23px"></asp:TextBox>
          &nbsp;(Format: 2012-13)&nbsp;
          </td>
    </tr>
    <tr>
      <td width="190" class="style1">
          Semester</td>
      <td class="style1">
          &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:DropDownList ID="ddlsem" runat="server">
              <asp:ListItem>1</asp:ListItem>
              <asp:ListItem>2</asp:ListItem>
          </asp:DropDownList>
          </td>
    </tr>
     <tr>
      <td width="190" class="style5">
          Degree</td>
      <td class="style5">
          &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:DropDownList ID="ddldegree" runat="server" AutoPostBack="True">
              <asp:ListItem>UG</asp:ListItem>
              <asp:ListItem>PG</asp:ListItem>
          </asp:DropDownList>
          </td>
    </tr>
      <tr>
      <td width="190" class="style6">
          Class</td>
      <td class="style6">
          &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:DropDownList ID="ddlclass" runat="server">
              <asp:ListItem>FE</asp:ListItem>
              <asp:ListItem>SE</asp:ListItem>
              <asp:ListItem>TE</asp:ListItem>
              <asp:ListItem>BE</asp:ListItem>
          </asp:DropDownList>
          </td>
    </tr>

    <tr>
      <td class="style4">
          Excel File</td>
      <td class="style4">
          &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" />
        </td>
    </tr>
   
    <tr>
      <td class="style2"></td>
      <td class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
              ID="btnimport" runat="server" Text="Import File" Width="78px" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
    </tr>
  </table>
       
        
        <%--<asp:GridView ID="GridView1" CssClass="listing" BorderStyle="Solid" runat="server"
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
            OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating"
            Caption="Courses" CaptionAlign="Top" Height="120px" Width="959px" CellPadding="4"
            ForeColor="Black" HorizontalAlign="Center" BackColor="#CCCCCC" BorderColor="#999999"
            BorderWidth="3px" CellSpacing="2">
            <Columns>
               <asp:BoundField DataField="ccode" HeaderText="Course Code" SortExpression="ccode" />
                <asp:BoundField DataField="course_name" HeaderText="Course name" 
                    SortExpression="course_name" />
                <asp:BoundField DataField="iselective" HeaderText="Elective(1:yes/0:no)" 
                    SortExpression="iselective" />
                <asp:BoundField DataField="course_type" HeaderText="Course type" 
                    SortExpression="course_type" />
                
                
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

<SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="Gray"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
        </asp:GridView>--%>

        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:attendanceConnectionString %>" 
            SelectCommand="SELECT [course_code], [course_name], [dept_name], [degree], [annual_year], [iselective], [course_type], [ccode], [sys_date] FROM [course_info] WHERE (([degree] = @degree) AND ([dept_name] = @dept_name))">
            <SelectParameters>
                <asp:SessionParameter Name="degree" SessionField="degree" Type="String" />
                <asp:SessionParameter Name="dept_name" SessionField="dept" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>--%>
        </div>


        <asp:Label ID="Label1" runat="server" Text="Instructions : " ForeColor="Black" 
      Font-Bold="True" Font-Size="Large" Font-Italic="False" style="margin:20px"></asp:Label>
  <br />
 
<p> 1. Import Excel file only </p>

<p> 2. Import separate excel file for FE,SE,TE and BE 
    <br />Eg. excelsheet1.xls : for FE,
    <br />    excelsheet2.xls : for SE,
    <br />    excelsheet3.xls : for TE,
    <br />    excelsheet4.xls : for BE
 </p>

 <p>
 3. Sheet format :<br />
 Column sequence should be strictly followed as per the fig. shown below.
  <br />
  <br />
  <img alt="" class="style3" src="images/excelsnap.jpg" /><br /></p>

 <p>3. Please follow the same naming format for a staff throughout the file <br />
  Sheet1: S. M. Shinde  <br />
  Sheet2: Prof. S. M. Shinde  <br />
 (Use either of them in all sheets)<br /></p>

<p>4. For is elective? enter:
  <br /> y= elective
  <br /> n= not elective
</p>

<p>5. For Course Type enter:
  <br /> t= theory
  <br /> p= practical
</p>

<p>6. For general courses :
  <br />
  Eg. IT GE 111 (For IT dept.)
  <br />
  ET GE 111 (For Electronics dept.)
  </p>
 
</asp:Content>
