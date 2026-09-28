<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecentNews.aspx.cs" Inherits="WDA2_1_.RecentNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recent News - </title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="Styles/MainStyle.css" rel="stylesheet" />
    <style type="text/css">
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
<div class="auto-style1">
            <asp:HyperLink ID="hylHome" runat="server"
                NavigateUrl="~/HomePage.aspx"
                Text="Home Page"
                CssClass="home-nav-button" BackColor="#2E4F3E" BorderColor="#2E4F3E" ForeColor="White" />
            <asp:HyperLink ID="hylAbout" runat="server"
                NavigateUrl="~/AboutUs.aspx"
                Text="About Us"
                CssClass="home-nav-button" BackColor="#2E4F3E" BorderColor="#2E4F3E" ForeColor="White" />
            <asp:HyperLink ID="hylServices" runat="server"
                NavigateUrl="~/Services.aspx"
                Text="Services & Facilities"
                CssClass="home-nav-button" BackColor="#2E4F3E" BorderColor="#2E4F3E" ForeColor="White" />
            <asp:HyperLink ID="hylAccommodation" runat="server"
                NavigateUrl="~/Accommodation.aspx"
                Text="Accommodation"
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
            <h1>East Shore Nature & Glamping Retreat</h1>
            <p>Outdoor Living Centre</p>
        </div> 
            <div class="right-panel">
            
            <div class="info-and-nav-wrapper">
                
                <div class="about-content-area">
                    <h2 class="about-us-heading" style="color: #c2d6c2; margin-bottom: 10px; text-align: center;">Recent News and Events</h2>
                    
                    <p style="color: white; font-size: 0.9rem; line-height: 1.4; max-width: 80%; margin: 0 auto; text-align: center;">
                        &nbsp;</p>
                </div>

            </div>
            <div class="news-grid-container">
    
    <div class="news-events-grid">
        
        <div class="grid-item">
            <asp:Image ID="ImageNews1" runat="server" 
                ImageUrl="~/Images/BikeNews.jpg" 
                CssClass="item-image" 
                AlternateText="Image of trail bikes for rent" Width="100%" />
            
            <div class="item-content">
                <p class="item-category">**Dec 5, 2025** | NEWS</p>
                <h3>New Guided Trail Bikes Available</h3>
                <p class="summary-text">Explore the East Shore Nature Reserve with our brand new electric trail bikes. Rentals available now!</p>
            </div>
        </div>

        <div class="grid-item">
            <asp:Image ID="ImageEvent1" runat="server" 
                ImageUrl="~/Images/Wellness.jpg" 
                CssClass="item-image" 
                AlternateText="Image of a yoga retreat" />
            
            <div class="item-content">
                <p class="item-category">**Jan 10, 2026** | EVENT</p>
                <h3>Yoga & Wellness Retreat</h3>
                <p class="summary-text">Join our three-day meditation and yoga package this January. Book before Christmas for 10% off!</p>
            </div>
        </div>

        <div class="grid-item">
            <asp:Image ID="ImageNews2" runat="server" 
                ImageUrl="~/Images/bread.jpg" 
                CssClass="item-image" 
                AlternateText="Image of new cafe menu" />
            
            <div class="item-content">
                <p class="item-category">**Nov 20, 2025** | NEWS</p>
                <h3>Café Update: New Menu Items</h3>
                <p class="summary-text">We've added locally sourced seafood and fresh artisan breads to our dining options.</p>
            </div>
        </div>

        <div class="grid-item">
            <asp:Image ID="ImageEvent2" runat="server" 
                ImageUrl="~/Images/winterphoto.jpg" 
                CssClass="item-image" 
                AlternateText="Image of photography workshop" />
            
            <div class="item-content">
                <p class="item-category">**Feb 2, 2026** | EVENT</p>
                <h3>Winter Photography Workshop</h3>
                <p class="summary-text">Learn to capture the stunning coastal landscape in winter light. Limited spots remaining!</p>
            </div>
        </div>
        
    </div> 
</div>

            

            
        </div>
        
        <p cssclass="address-box" class="auto-style2">
            27 Seaview Road<br/>
            Portaferry<br/>
            County Down<br/>
            BT22 4FA
            </p>
           <div class="page-load-info">
       Page loaded at:
       <asp:Label ID="lblDT" runat="server"></asp:Label>

   </div>
    </form>
</body>
</html>
