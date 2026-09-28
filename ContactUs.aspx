<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WDA2_1_.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us- East Shore Retreat</title>
    <link href="Styles/MainStyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            color: #FFFFFF;
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
            <h2 class="about-us-heading" style="color: #c2d6c2; margin-bottom: 10px; text-align: center;">Contact Us</h2>
        <div class="contact-form-wrapper">

                    <h2>Send Us a Quick Message</h2>
    
    <div>
        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

    <div>
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
    </div>

    <div>
        <asp:Label ID="lblMessage" runat="server" Text="Message:"></asp:Label>
        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="submit-area">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
            OnClick="btnSubmit_Click" CssClass="submit-button" />
    </div>
    
    <asp:Label ID="lblConfirmation" runat="server" Text="" ForeColor="Green" />
</div>
<div>
              <div class="auto-style1">
            <h2 class="about-us-heading" style="color: #c2d6c2; margin-bottom: 10px; text-align: center;">Leave us a review!</h2></div>
<p>
    <asp:TextBox ID="txtBlog" runat="server" Font-Size="X-Large" Height="250px" TextMode="MultiLine" Width="100%"></asp:TextBox>
</p>
              <p>
    <br />
    <asp:TextBox ID="txtEntry" runat="server" Font-Size="Large" Width="100%" style="text-align: center" Height="34px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="100%" CssClass="submit-button" Height="40px" />
    <br />
    <br />
</p>
<p>
    &nbsp;</p>






</div>


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
