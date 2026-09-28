<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WDA2_1_.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Home Page</title>
    <link href="Styles/MainStyle.css" rel="stylesheet" />
       <script type="text/javascript">
       function displayDate() {
           dt = new Date();
           document.getElementById("lblDT").innerHTML = dt.toLocaleTimeString();
           return false;
       }
       window.onload = function () {
           displayDate();
       }
       </script>
    <style type="text/css">
        .address-box {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            width: 100%;
            color: #FFFFFF;
            padding: 5px 0;
            background: #2E4F3E;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div class ="left-panel">
            <div>
                <h1> East Shore Nature & Glamping Retreat</h1>
                <p>Outdoor Living Centre</p>
            </div>
        </div>
        <div class="right-panel">
            <asp:HyperLink ID="hylAbout" runat="server"
                NavigateUrl="~/AboutUs.aspx"
                Text="About Us"
                CssClass="nav-button"/>
            <asp:HyperLink ID="hylServices" runat="server"
                NavigateUrl="~/Services.aspx"
                Text="Services & Facilities"
                CssClass="nav-button" />
            <asp:HyperLink ID="hylAccommodation" runat="server"
                NavigateUrl="~/Accommodation.aspx"
                Text="Accommodation"
                CssClass="nav-button" />
            <asp:HyperLink ID="hylRecentNews" runat="server"
                NavigateUrl="~/RecentNews.aspx"
                Text="Recent News"
                CssClass="nav-button" />
            <asp:HyperLink ID="hylContactUs" runat="server"
                NavigateUrl="~/ContactUs.aspx"
                Text="ContactUs"
                CssClass="nav-button" />
                        <asp:HyperLink ID="hylLocation" runat="server"
                NavigateUrl="~/HowToFindUs.aspx"
                Text="How to Find Us"
                CssClass="nav-button" />
        </div>
<p cssclass="address-box" class="auto-style2">
    27 Seaview Road<br/>
    Portaferry<br/>
    County Down<br/>
    BT22 4FA
    </p>
<div>

&nbsp;Page loaded at:<asp:Label ID="lblDT" runat="server"></asp:Label>

</div>


    </form>
</body>
</html>
