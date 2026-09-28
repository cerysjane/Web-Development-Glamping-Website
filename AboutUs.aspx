<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WDA2_1_.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>About Us - East Shore Retreat</title>
    <link href="Styles/MainStyle.css" rel="stylesheet" />
    
    <script type="text/javascript">
        function displayDate() {
            dt = new Date();
            document.getElementById("lblDT").innerHTML = dt.toLocaleTimeString();
            return false;
        }
        window.onload = function () {
            displayDate();
            //setInterval(displayDate, 1000);
        }
    </script>
    
    <style type="text/css">
        /* Ensuring address is centered */
        .address-box {
            text-align: center;
        }
        /* New style needed to center the text content in the right panel */
        .about-content-area {
            text-align: center;
            padding: 20px;
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
        <div class="address-box">
            <asp:HyperLink ID="hylHome" runat="server"
                NavigateUrl="~/HomePage.aspx"
                Text="Home Page"
                CssClass="home-nav-button" BackColor="#2E4F3E" BorderColor="#2E4F3E" ForeColor="White" />
            <asp:HyperLink ID="hylServices" runat="server"
                NavigateUrl="~/Services.aspx"
                Text="Services & Facilities"
                CssClass="home-nav-button" BackColor="#2E4F3E" BorderColor="#2E4F3E" ForeColor="White" />
            <asp:HyperLink ID="hylAccommodation" runat="server"
                NavigateUrl="~/Accommodation.aspx"
                Text="Accommodation"
                CssClass="home-nav-button" BackColor="#2E4F3E" BorderColor="#2E4F3E" ForeColor="White" />
            <asp:HyperLink ID="hylRecentNews" runat="server"
                NavigateUrl="~/RecentNews.aspx"
                Text="Recent News"
                CssClass="home-nav-button" BackColor="#2E4F3E" BorderColor="#2E4F3E" ForeColor="White" />
            <asp:HyperLink ID="hylContactUs" runat="server"
                NavigateUrl="~/ContactUs.aspx"
                Text="Contact Us"
                CssClass="home-nav-button" BackColor="#2E4F3E" BorderColor="#2E4F3E" ForeColor="White" />
            <asp:HyperLink ID="hylLocation" runat="server"
                NavigateUrl="~/HowtoFindUs.aspx"
                Text="How to Find Us"
                CssClass="home-nav-button" BackColor="#2E4F3E" BorderColor="#2E4F3E" ForeColor="White" />
        </div>
        <div class="left-panel">
            <div class="branding-content">
                <h1> East Shore Nature & Glamping Retreat</h1>
                <p>Outdoor Living Centre</p>
            </div>
        </div>
        
        <div class="right-panel">
            
            <div class="info-and-nav-wrapper">
                


                <div class="about-content-area">
                    <h2 class="about-us-heading" style="color: #c2d6c2; margin-bottom: 10px;">ABOUT US</h2>
                    
                    <p style="color: white; font-size: 0.9rem; line-height: 1.4; max-width: 80%; margin: 0 auto;">
                        Welcome to Outdoor Living Centre, a boutique glamping and nature retreat nestled along the breath-taking East Coast of Northern Ireland. Our mission is simple: to provide an unforgettable escape where guests can reconnect with nature, unwind in luxurious surroundings, and embrace the great outdoors.
                        <br/><br/>
                        Founded with a passion for wellness and adventure, our resort combines comfort and serenity with a rich variety of outdoor pursuits. Whether you're seeking peaceful relaxation, invigorating activities, or quality time with family and friends, our carefully curated experiences cater to every guest.
                        <br /><br />
                        At Outdoor Living Centre, we believe that luxury and nature can go hand in hand. From our beautifully designed accommodations to our wellness-focused amenities, every detail is crafted to create a rejuvenating and memorable stay.
                        <br /><br />
                        Our commitment extends beyond comfort — we aim to inspire adventure, foster relaxation, and celebrate the natural beauty of Northern Ireland.
                        <br /><br />
                        Join us for an escape that blends serenity, luxury, and adventure — where every stay becomes a story, and every moment is an experience.
                    </p>
                </div>
            </div>
            

            
        </div>
        
        <p class="auto-style2" style="text-align: center; width: 100%; background: #2e4f3e;">
            27 Seaview Road <br />
            Portaferry <br />
            County Down <br />
            BT22 4FA
        </p>
           <div class="page-load-info">
       Page loaded at:
       <asp:Label ID="lblDT" runat="server"></asp:Label>

   </div>
        
    </form>
</body>
</html>