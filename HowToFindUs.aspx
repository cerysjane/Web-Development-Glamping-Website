<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WDA2_1_.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>How to Find Us - East Shore Retreat</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="address-box">
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
            <asp:HyperLink ID="hylRecentNews" runat="server"
                NavigateUrl="~/RecentNews.aspx"
                Text="Recent News"
                CssClass="home-nav-button" BackColor="#2E4F3E" BorderColor="#2E4F3E" ForeColor="White" />
            <asp:HyperLink ID="hylContactUs" runat="server"
                NavigateUrl="~/ContactUs.aspx"
                Text="Contact Us"
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
                


                <div class="Location-content-area">
                 <h2 class="How-To-Find-Us-heading" style="color: #c2d6c2; margin-bottom: 10px; text-align: center;">Location</h2>
                   <p style="color: white; font-size: 0.9rem; line-height: 1.4; max-width: 80%; margin: 0 auto; text-align: center;">
                                27 Seaview Road<br/>
                                Portaferry<br />
                                County Down<br/>
                                BT22 4FA
                    </p>
                    <p style="text-align: center">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6571.596372010405!2d-5.553772930730391!3d54.38506963863998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4861693cefa16477%3A0x2d9dadd8ebf7be81!2sNugent&#39;s%20Wood!5e0!3m2!1sen!2suk!4v1765381117239!5m2!1sen!2suk" height="450" style="border-style: none; border-color: inherit; border-width: 0; width: 60%;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </p>
                    </div>
            </div>
            

            
        </div>
        

           <div class="page-load-info">
       Page loaded at:
       <asp:Label ID="lblDT" runat="server"></asp:Label>
   </div>
        
    </form>
</body>
</html>