<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accommodation.aspx.cs" Inherits="WDA2_1_.Accommodation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Accommodation - East Shore Retreat</title>
    <link href="Styles/MainStyle.css" rel="stylesheet" />
    
    <script type="text/javascript">
        // This function is for the Home button visibility and possible effects
        document.addEventListener('DOMContentLoaded', function () {
            const homeButton = document.querySelector('.home-nav-button');
            if (homeButton) {
                homeButton.addEventListener('mouseover', function () {
                    this.style.opacity = '0.8';
                });
                homeButton.addEventListener('mouseout', function () {
                    this.style.opacity = '1';
                });
            }
        });
    </script>

    <style type="text/css">
    
    .right-panel {
        padding: 30px 40px; 
        align-items: flex-start; 
        text-align: center;
    }

    .page-title-box {
        background-color: #f5f3ee; 
        border: 2px solid #555; 
        color: #2e4f3e; 
        padding: 10px 20px;
        text-align: center;
        font-size: 1.5rem;
        font-weight: bold;
        margin-bottom: 30px;
        align-self: flex-end; 
        border-radius: 5px;
    }
    
    /* Container for all pod listings (flexbox to arrange images and buttons) */
    .pod-listings-container {
        display: flex;
        flex-direction: column;
        width: 100%;
        margin-top: 20px;
    }

    /* THE KEY FIX: Adjusted Ratio and Gap for Tighter Grouping */
    .pod-item-row {
        display: grid;
        grid-template-columns: 0.8fr 1.2fr; /* Makes image column narrower */
        gap: 5px; /* Reduces the space between image and button */
        align-items: center; 
        margin-bottom: 10px;
    }

    .pod-image-wrapper img {
         width: 100%;
         height: auto; 
         display: block;
         border: 1px solid #c2d6c2;
         max-height: 180px;
         width: auto;
         object-fit: cover;
         margin: 0 auto;
    }

    /* Button styling for the pod names */
    .pod-name-button {
        background-color: transparent;
        border: 2px solid #c2d6c2;
        color: #c2d6c2 !important;
        padding: 12px 15px;
        font-size: 1rem;
        text-align: center;
        text-decoration: none;
        display: block; 
        transition: background-color 0.3s ease;
    }
    .pod-name-button:hover {
        background-color: #c2d6c2;
        color: #2e4f3e !important;
    }
    
    .home-button-wrapper {
         position: absolute;
         top: 20px;
         left: 20px; 
         z-index: 10;
    }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #FFFFFF;
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
                <div class="accommodation-content-area">
                    <h2 class="accommodation-heading" style="color: #c2d6c2; margin-bottom: 10px; text-align: center; width: 1880px;">Accommodation</h2>
                 </div>



            
            <div class="pod-listings-container">
                
                <div class="pod-item-row">
                    <div class="pod-image-wrapper">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/DeluxePod1.jpg" />
                    </div>
                    <asp:HyperLink ID="hylDeluxe" runat="server" CssClass="pod-name-button"
                        Text="DELUXE PODS"
                        NavigateUrl="~/DeluxePod.aspx?id=DLX001"/>
                </div>

                <div class="pod-item-row">
                    <div class="pod-image-wrapper">
                         <asp:Image ID="Image2" runat="server"  ImageUrl="~/Images/PremiumPod1.jpg" />
                    </div>
                    <asp:HyperLink ID="hylPremium" runat="server" CssClass="pod-name-button"
                        Text="THE PREMIUM PODS"
                        NavigateUrl="~/PremiumPod.aspx?id=PRM002"/>
                </div>
                
                <div class="pod-item-row">
                    <div class="pod-image-wrapper">
                        <asp:Image ID="Image3" runat="server"  ImageUrl="~/Images/XLPod1.jpg"   />
                </div>
                    <asp:HyperLink ID="hylXL" runat="server" CssClass="pod-name-button"
                        Text="THE XL PODS"
                        NavigateUrl="~/XXLPod.aspx?id=XL003"/>
                </div>

                <div class="pod-item-row">
                    <div class="pod-image-wrapper">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/BumblebeePod1.jpg" />
                    </div>
                    <asp:HyperLink ID="hylBumblebee" runat="server" CssClass="pod-name-button"
                        Text="THE BUMBLEBEE POD"
                        NavigateUrl="~/BumblebeePod.aspx?id=BBL004"/>
                </div>
                
            </div>
            
        </div>
        
        <p class="auto-style2" style="text-align: center; width: 100%; background: #2e4f3e;">
            27 Seaview Road <br />
            Portaferry <br />
            County Down <br />
            BT22 4FA
        </p>
        
    </form>
</body>
</html>