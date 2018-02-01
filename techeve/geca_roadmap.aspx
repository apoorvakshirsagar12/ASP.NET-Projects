<%@ Page Language="VB" AutoEventWireup="true" CodeFile="geca_roadmap.aspx.vb" Inherits="geca_roadmap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAjofAvfA4u-7kV8kGsA6C-BRDgduQJSJD1ZoAKJVzwNIaR7FEzRRD4hHhdKL6uXqT-bh0e6oKk7KTzg&sensor=true"
        type="text/javascript"></script>

    <script language="javascript" type="text/javascript">
        var map;
        function initialize() {
            //alert('asd');
            if (GBrowserIsCompatible()) {
                map = new GMap2(document.getElementById("map_canvas"));
                //alert('sdf');
                map.setCenter(new GLatLng(19.868459, 75.323755), 10);
                var lt = new GLatLng(19.868459, 75.323755);
                map.setUIToDefault();

                var html = '<div style="font-size:11px"><b>Government College Of Engineering, Aurangabad</b><br>' +
            'Railway Staion Road, Osmanpura<br>' +
            'Aurangabad – 431 005, INDIA<br>' +
            'Telephone : 0240 - 2332835' +
            '<br></div>';

                var point = CreateMarker(lt, html);
            }
        }
        function CreateMarker(point, html) {
            var marker = new GMarker(point);
            map.addOverlay(marker);
            GEvent.addListener(marker, "click", function () { marker.openInfoWindow(html); });
            return marker;
        }
    </script>

</head>
<body onload="initialize();">
    <form id="form1" runat="server">
    <div id="map_canvas" style="width: 800px; height: 500px">
    </div>
    </form>
</body>
</html>