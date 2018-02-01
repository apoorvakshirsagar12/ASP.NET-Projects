<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_login.aspx.vb" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        height: 45px;
        width: 167px;
    }
    .style5
    {
        height: 45px;
        width: 95px;
    }
    -->
</style>


</head>
<body bgcolor="#999999" style="height: 0px; margin-top: 0px;">
    
    <form id="form1" runat="server">
    
   <div id="1" 
         style="border: thin solid #000000; background-position: center; height:135px; width: 1026px; margin-left: 142px; background-image: url('logo1.JPG'); background-repeat: no-repeat; background-color: #800000;">
    </div>
    <div style="height: 602px; width: 1027px; margin-left: 142px; background-image: none; background-color: #FFFFFF;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div id="apDiv4" style="background-color: #999966; margin-top: 3px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx" 
                Font-Size="Large" ForeColor="#0000CC">Back</asp:HyperLink>
            </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
      &nbsp;&nbsp;
<div id="apDiv1" style="border-style: solid; border-width: thin">
        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div id="apDiv2" 
            
            
            
            
            style="background-image: url('login_image.PNG'); background-repeat: no-repeat; margin-top: 2px;">
      <p style="width: 59px">
          &nbsp;</p>
    
      <table style="width: 347px; height: 99px;">
        <tr>
          <td class="style5" >&nbsp;
              <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Department:"></asp:Label>
            </td>
          <td class="style3">
              <asp:DropDownList ID="ddldept" runat="server" Height="23px" Width="170px">
                  <asp:ListItem Value="CS">Computer Science &amp; Engg</asp:ListItem>
                  <asp:ListItem Value="IT">Information Technology</asp:ListItem>
                  <asp:ListItem Value="ET">Electronics &amp; Telecommunication</asp:ListItem>
                  <asp:ListItem Value="EE">Electrical Engineering</asp:ListItem>
                  <asp:ListItem Value="CE">Civil Engineering</asp:ListItem>
                  <asp:ListItem Value="ME">Mechanical Engineering</asp:ListItem>
                  <asp:ListItem>MCA</asp:ListItem>
              </asp:DropDownList>
            </td>
        </tr>
   <tr>
          <td class="style5">
              &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" 
                  Text="      Degree :"></asp:Label>
            </td>
          <td class="style3">
              <asp:RadioButton ID="rbug" runat="server" GroupName="rbdegree" Text="UG" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:RadioButton ID="rbpg" runat="server" GroupName="rbdegree" Text="PG" />
                    </td>
        </tr>
        <tr>
          <td class="style5">
              &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" 
                  Text="      Password :"></asp:Label>
            </td>
          <td class="style3">
              <asp:TextBox ID="txtpass" runat="server" Height="20px" Width="165px" 
                  TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        
      </table>
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
   <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Width="185px"></asp:Label> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsubmit" runat="server" Height="33px" style="margin-top: 0px" 
                  Text="Submit" Width="93px"  />
     
       
        <br />
       
        <br />

     
    </div>
    &nbsp;</div>
    </form>
   
</body>
</html>
