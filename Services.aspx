<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="WDA2_1_.Services" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Services and Facilities</title>
<link href="Styles/MainStyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #FFFFFF;
            text-align: center;
            font-size: large;
        }
        .item {
            text-align: left;
        }
        .news-grid-container {
    padding: 40px;
    background-color: #f5f3ee; /* Light background for contrast */
}

.news-events-grid {
    display: grid;
    /* Two columns on desktop/tablet */
    grid-template-columns: repeat(2, 1fr); 
    gap: 30px; /* Space between items */
    max-width: 1200px;
    margin: 0 auto;
}

/* Mobile Responsiveness: Stack columns vertically */
@media (max-width: 768px) {
    .news-events-grid {
        grid-template-columns: 1fr; /* Single column on mobile */
    }
}

/* Individual Item Styling */
.grid-item {
    background-color: white; /* White card background */
    border: 1px solid #c2d6c2; /* Pale green border */
    border-radius: 8px;
    overflow: hidden; /* Ensures image respects border-radius */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
}

.item-image {
    width: 100%;
    height: 220px;
    object-fit: cover;
}

.item-content {
    padding: 20px;
    color: #333;
}

.item-category {
    font-size: 0.9rem;
    color: #2e4f3e; /* Dark Green for category/date */
    margin-bottom: 5px;
}

.item-content h3 {
    color: #2e4f3e;
    font-size: 1.5rem;
    margin-top: 0;
    margin-bottom: 10px;
}

.summary-text {
    font-size: 1rem;
    line-height: 1.5;
}
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: large;
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
            <h1>East Shore Nature & Glamping Retreat</h1>
            <p>Outdoor Living Centre</p>
        </div>

        <div class="right-panel">
            <h2 style="color:#c2d6c2; text-align: center;">Activities</h2>
            <p style="color:#c2d6c2;">
                <asp:DropDownList ID="ddlActivity" runat="server" AutoPostBack="True" style="text-align: center; font-size: xx-large;" OnSelectedIndexChanged="ddlActivity_SelectedIndexChanged">
                    <asp:ListItem>Not Filtered</asp:ListItem>
                    <asp:ListItem>Morning</asp:ListItem>
                    <asp:ListItem>Afternoon</asp:ListItem>
                    <asp:ListItem>Midday</asp:ListItem>
                    <asp:ListItem>Evening</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSearch" runat="server" style="text-align: center; font-size: xx-large;" Text="Search" OnClick="btnSearch_Click" Height="43px" Width="146px" />
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtSearch" runat="server" style="text-align: center; font-size: xx-large;"></asp:TextBox>
            </p>
            <div class="item">
                    <asp:GridView ID="gvActivities" runat="server" AutoGenerateColumns="False" ForeColor="#333333" Height="204px" HorizontalAlign="Center" OnSelectedIndexChanged="gvActivities_SelectedIndexChanged" Width="100%" CellPadding="4" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:ButtonField CommandName="Select" Text="Select" />
                            <asp:BoundField DataField="name" HeaderText="Activity Name" />
                            <asp:BoundField DataField="description" HeaderText="Description" />
                            <asp:BoundField DataField="price" HeaderText="Price" />
                            <asp:BoundField DataField="timeOfDay" HeaderText="Time of Day" />
                            <asp:BoundField DataField="slot" HeaderText="TimeSlot" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle HorizontalAlign="Center" BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White" />
                        <RowStyle HorizontalAlign="Center" BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </div>
            <p>

                <span class="auto-style2">You have selected:</span>

                <asp:Label ID="lblActivityOutput" runat="server" style="color: #FFFFFF" CssClass="auto-style3"></asp:Label>

</p>
            <p>

                &nbsp;</p>

            <h2 style="color:#c2d6c2; margin-top:30px; text-align: center; width: 100%">Facilities Offered</h2>
                        <div class="news-grid-container">
    
    <div class="news-events-grid">
        
        <div class="grid-item">
            <asp:Image ID="ImageNews1" runat="server" 
                ImageUrl="~/Images/OutdoorYoga.jpg" 
                CssClass="item-image" />
            
            <div class="item-content">
                <h3>Wellness Experiences</h3>
                <p class="summary-text">Relax with outdoor yoga, meditation, spa treatments, sauna time, and hot tubs. Quiet zones around the resort offer space to unwind and enjoy the views.</p>
            </div>
        </div>

        <div class="grid-item">
            <asp:Image ID="ImageEvent1" runat="server" 
                ImageUrl="~/Images/cafe.jpg" 
                CssClass="item-image" />
            
            <div class="item-content">
                <h3>Dining Options</h3>
                <p class="summary-text">Visit our café for meals made with local produce or enjoy BBQ areas, fire pits, and picnic spots. Breakfast baskets and in-tent dining can be arranged.</p>
            </div>
        </div>

        <div class="grid-item">
            <asp:Image ID="ImageNews2" runat="server" 
                ImageUrl="~/Images/groups.jpg" 
                CssClass="item-image" />
            
            <div class="item-content">
                <h3>Family & Group Facilities</h3>
                <p class="summary-text">Families can enjoy play areas, evening campfires, and group activity options. We offer packages for schools, clubs, and corporate groups, with pet-friendly accommodation available.</p>
            </div>
        </div>

        <div class="grid-item">
            <asp:Image ID="ImageEvent2" runat="server" 
                ImageUrl="~/Images/reception.jpg" 
                CssClass="item-image" 
                AlternateText="Image of photography workshop" />
            
            <div class="item-content">
                <h3>Guest Convenience</h3>
                <p class="summary-text">Our reception team is here to help with bookings and activity schedules. The resort includes on-site parking, accessible facilities, and a gift shop with local crafts and essentials.</p>
            </div>
        </div>
        
    </div> 
</div>

            </div>
                <p class="auto-style4" style="text-align: center; width: 100%; background: #2e4f3e;">
            27 Seaview Road <br />
            Portaferry <br />
            County Down <br />
            BT22 4FA
        </p>
    </form>
</body>
</html>
