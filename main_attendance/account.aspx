<%@ Page Title="" Language="VB" MasterPageFile="~/sample.master"  AutoEventWireup="false" CodeFile="account.aspx.vb" Inherits="account" %>

<script runat="server">

   
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style= "background-color:White; height: 513px;" >
       <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       
    <asp:Label ID="lblerror" runat="server" ForeColor="Red" Visible="False" 
            Width="40px" CssClass="lblcenter"></asp:Label>    <br />
        <br />
        <br />
    
    <asp:Label ID="lblchgpass" runat="server" Text="Change Password" Font-Size="Large" CssClass="lblcenter"></asp:Label>     
        <br />
<table align="center">
            <tr>
                <td >
                    Old Password :</td>
                <td>
                    <asp:TextBox ID="txtold" runat="server" Height="28px" TextMode="Password" 
                        Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    New Password:</td>
                <td>
                    <asp:TextBox ID="txtnew" runat="server" Height="25px" TextMode="Password" 
                        Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Retype New Password:</td>
                <td>
                    <asp:TextBox ID="txtretype" runat="server" Height="25px" TextMode="Password" 
                        Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    </td>
                <td>
                    <asp:Button ID="btndone" runat="server" Height="32px" Text="Done" 
                        Width="92px"/>
                </td>
            </tr>
        </table>
</div>
</asp:Content>

