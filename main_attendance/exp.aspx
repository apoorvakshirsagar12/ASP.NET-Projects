<%@ Page Language="VB" AutoEventWireup="false" CodeFile="exp.aspx.vb" Inherits="exp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <ajax:ToolkitScriptManager ID="toolkit1" runat="server"></ajax:ToolkitScriptManager>
    <div>
     <asp:Label ID="Label7" runat="server" Text="From : "></asp:Label>
<asp:ImageButton ID="imgbtnCalendar" runat="server" ImageUrl="images/cal.jpg" 
        Height="19px" Width="22px" />
<ajax:CalendarExtender ID="calfrom" TargetControlID="txtfrom" PopupButtonID="imgbtnCalendar" runat="server" Format="dd/MM/yyyy" />
<asp:TextBox ID="txtfrom" runat="server" readonly=true/> 
    </div>
    <asp:Button ID="btnsubmit" runat="server" Text="done" />
    </form>
</body>
</html>
