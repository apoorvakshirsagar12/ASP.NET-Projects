<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
    <!--
#apDiv1 {
	position:absolute;
	width:651px;
	height:291px;
	z-index:1;
	left: 161px;
	top: 186px;
}
#apDiv2 {
	position:absolute;
	width:354px;
	height:288px;
	z-index:2;
	left: 830px;
	top: 186px;
}
#apDiv3 {
	position:absolute;
	width:1012px;
	z-index:3;
	left: 160px;
	top: 489px;
}
#apDiv4 {
	position:absolute;
	width:1029px;
	height:30px;
	z-index:4;
	left: 150px;
	top: 135px;
}
    .style3
    {
        height: 46px;
        width: 167px;
    }
    .style4
    {
        width: 167px;
    }
    .style5
    {
        height: 46px;
        width: 95px;
    }
    .style6
    {
        width: 95px;
    }
    .style8
    {
        width: 95px;
        height: 59px;
    }
    .style9
    {
        width: 167px;
        height: 59px;
    }
-->
</style>


</head>
<body bgcolor="#999999" style="height: 0px; margin-top: 0px;">
    
    <form id="form1" runat="server">
    
   <div id="1" 
         style="border: thin solid #000000; background-position: center; height:135px; width: 1026px; margin-left: 142px; background-image: url('logo1.JPG'); background-repeat: no-repeat; background-color: #800000;">
    </div>
    <div style="height: 602px; width: 1029px; margin-left: 142px; background-image: none; background-color: #FFFFFF;">
       
        <div id="apDiv4" style="background-color: #999966; margin-top: 3px;">
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" 
                Font-Underline="True" ForeColor="Blue" NavigateUrl="~/admin_login.aspx">HOD</asp:HyperLink>

            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" 
                Font-Underline="True" ForeColor="Blue" NavigateUrl="~/signup.aspx">Staff Registration</asp:HyperLink>
        </div>

        <p>&nbsp;</p>
      <div id="apDiv3" style="background-color: #999966; height: 190px;">
          <marquee behavior="scroll" direction="left" onmouseover="this.stop();" 
            onmouseout="this.start();" loop="-1" 
            style="height: 163px; margin-left: 1px; width: 1008px; margin-top: 14px;">

        <img src="1.jpg" alt="" style="height: 165px; width: 270px;" />
        <img src="2.jpg" alt="" style="height: 165px; width: 270px;" />
        <img alt="" src="3.jpg" style="height: 165px; width: 270px;" />
        <img alt="" src="4.jpg" style="height: 165px; width: 270px;" />
        <img alt="" src="5.jpg" style="height: 165px; width: 270px;" />
        <img alt="" src="6.jpg" style="height: 165px; width: 270px;" />
        <img alt="" src="7.jpg" style="height: 165px; width: 270px;" />
        <img alt="" src="8.jpg" style="height: 165px; width: 270px;" />
        <img alt="" src="9.jpg" style="height: 165px; width: 270px;" />
        <img alt="" src="10.jpg" style="height: 165px; width: 270px;" />
        <img alt="" src="11.jpg" style="height: 165px; width: 270px;" />

        </marquee>

          <%--<asp:Image ID="Image1" runat="server" Height="221px" ImageUrl="~/5.jpg" 
              Width="323px" />
&nbsp;&nbsp;
          <asp:Image ID="Image2" runat="server" Height="221px" ImageUrl="~/7.jpg" 
              Width="323px" />
          &nbsp;&nbsp;
          <asp:Image ID="Image3" runat="server" Height="221px" ImageUrl="~/8.jpg" 
              Width="323px" /></marquee>--%>
        </div>

<div id="apDiv1" style="border-style: solid; border-width: thin">
        </div>

    <div id="apDiv2" 
            
            
            
            
            style="background-image: url('login_image.PNG'); background-repeat: no-repeat; margin-top: 2px;">
      <p style="width: 59px">
          &nbsp;</p>
    
      <table style="width: 336px; height: 175px;">

       <tr>
          <td class="style6">&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" 
                  Text="E-mail ID :"></asp:Label>
            </td>
          <td class="style4">
              <asp:TextBox ID="txtuserid" runat="server" Height="20px" Width="165px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td class="style8">
              <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                  Text="      Password :"></asp:Label>
            </td>
          <td class="style9">
              <asp:TextBox ID="txtpass" runat="server" Height="20px" Width="165px" 
                  TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td class="style5" >
              <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Annual Year:"></asp:Label>
            </td>
          <td class="style3">
             <asp:TextBox ID="txtannualyear" runat="server" Height="20px" Width="165px"></asp:TextBox>
             <br />
             (Eg. : 2012-13)
            </td>
        </tr>
        <tr>
          <td class="style6">
              <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                  Text="      Semester      :"></asp:Label>
            </td>
          <td class="style4">
          <asp:DropDownList ID="ddlannualsem" runat="server" Height="23px" Width="170px">
                  <asp:ListItem Value="1">1 (ODD)</asp:ListItem>
                  <asp:ListItem Value="2">2 (EVEN)</asp:ListItem>
                  
              </asp:DropDownList>
            </td>
        </tr>
       
       <tr>
           <td colspan="2">
               <center><asp:Button ID="btnsubmit" runat="server" Height="33px" style="margin-top: 0px" 
                  Text="Submit" Width="93px"  /></center>
                  <br />
                  <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Visible="false" style="margin:20px"></asp:Label> 
            </td>
        </tr>
           
      
      </table>
     

</div>
</div>
    </form>
   
</body>
</html>
