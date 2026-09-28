<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeluxePod.aspx.cs" Inherits="WDA2_1_.DeluxePod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Deluxe Pod - East Shore Retreat</title>
    <link href="Styles/MainStyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
        // Page time script
        function displayDate() {
            dt = new Date();
            document.getElementById("lblDT").innerHTML = dt.toLocaleTimeString();
            return false;
        }
        window.onload = function () {
            displayDate();
            //setInterval(displayDate, 1000);
        }
        document.addEventListener('DOMContentLoaded', function () {
        // 1. Get all date cells that are NOT booked
            const dateCells = document.querySelectorAll('td:not(.booked)');

        // Store the selection state
            let selectedDates = [];

                dateCells.forEach(cell => {
                        cell.addEventListener('click', function () {
                            const date = this.getAttribute('data-date');

                            if (this.classList.contains('selected')) {
                                // DESELECTION: Remove the 'selected' class and filter the date out of the array
                                this.classList.remove('selected');
                                selectedDates = selectedDates.filter(d => d !== date);
                                console.log(`Deselected: ${date}`);
                            } else {
                                // SELECTION: Add the 'selected' class and push the date to the array
                                this.classList.add('selected');
                                selectedDates.push(date);
                                console.log(`Selected: ${date}`);
                            }

          
                            console.log('Current selection:', selectedDates);
                        });
                });
        });
    </script>

    
    <style type="text/css">
        /* ----------------------------------------------------- */
        /* 1. LAYOUT & STICKY HEADER FIXES */
        /* ----------------------------------------------------- */
        
        /* Ensures the two main content columns sit side-by-side */
        .two-column-content-wrapper {
            display: flex; /* ACTIVATES THE SIDE-BY-SIDE LAYOUT */
            width: 100%;
            flex-grow: 1; 
        }

        /* STICKY HEADER WRAPPER (Top two banners) */
        .sticky-header-wrapper {
            width: 100%;
            position: sticky;
            top: 0;
            z-index: 100;
        }

        /* The main branding banner (Top Sticky Element) */
        .left-panel.top-branding-banner {
            position: sticky;
            top: 0;
            z-index: 10;
            width: 100%;
            height: 200px; /* Adjust height as needed */
            flex: none; 
        }

        /* The 'Deluxe Pods' Title Bar (Second Sticky Element) */
        .pod-detail-title-banner {
            color: #c2d6c2;
            text-align: center;
            background: #2E4F3E;
            padding: 15px 0;
            font-size: large;
            width: 100%;
            position: sticky;
            top: 200px; /* Must be the height of the .top-branding-banner */
            z-index: 9;
        }

        /* Address box styling (Assuming this is a navigation bar at the very top) */
        .address-box {
            text-align: center;
            background: #2E4F3E;
            width: 100%;
            padding: 5px 0;
        }


        /* ----------------------------------------------------- */
        /* 2. COLUMN & CAROUSEL STYLES */
        /* ----------------------------------------------------- */

        /* LEFT COLUMN: CAROUSEL */
        #col1 { 
            flex: 1; /* Takes 50% width, or as allocated by flex */
            background-color: #f5f3ee;
            padding: 20px;
        }

        /* RIGHT COLUMN: TEXT */
        #col2 { 
            flex: 1; /* Takes 50% width, or as allocated by flex */
            background-color: #2e4f3e;
            color: white;
            padding: 30px;
            line-height: 1.6;
        }

        /* Carousel Reset to fit the column perfectly */
        .container {
            max-width: 100%;
            padding: 0;
            margin: 0 auto;
            height: auto;
        }
        .carousel-inner, .carousel-inner > .item, .carousel-inner > .item > img {
            width: 100%;
            height: auto;
            max-height: 600px; /* Prevents images from getting too tall */
            object-fit: cover;
        }
        
        /* Text in right panel */
        #col2 h1 {
            color: #c2d6c2;
            font-size: 2rem;
            margin-bottom: 20px;
        }
        
        .auto-style1 {
            font-size: medium;
        }
        
        .availability-calendar {
    width: 100%;
    border-collapse: collapse;
}

    .availability-calendar th, .availability-calendar td {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: center;
        cursor: pointer;
        font-size: 1rem;
        height: 40px;
    }


.available {
    background-color: #e6ffe6; /* Light green */
    color: #2e4f3e; /* Dark green text */
}

    .available:hover {
        background-color: #c2d6c2; /* Sage hover */
    }


.booked {
    background-color: #ffcccc; /* Light red */
    color: #660000;
    cursor: default;
    text-decoration: line-through;
}


.selected {
    background-color: #2e4f3e !important; /* Dark green fill */
    color: white;
    font-weight: bold;
    border: 2px solid #c2d6c2;
}
        .auto-style2 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="address-box">
            <asp:HyperLink ID="hylAccommodation" runat="server"
                NavigateUrl="~/Accommodation.aspx"
                Text="Back to Accommodation"
                CssClass="home-nav-button" Style="background-color: transparent !important; border: none;"/>
        </div>

        <div class="sticky-header-wrapper">
            
            <div class="left-panel top-branding-banner">
                <div class="branding-content">
                    <h1> East Shore Nature & Glamping Retreat</h1>
                    <p>Outdoor Living Centre</p>
                </div>
            </div>

            <div class="pod-detail-title-banner">
                <h2 class="Deluxe-Pod-heading" style="color: #c2d6c2; margin-bottom: 10px;">Deluxe Pods</h2>
            </div>
        </div>

        <div class="two-column-content-wrapper">

            <div id="col1">
                <div class="container">
                    <br />
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>
                        </ol>

                        <div class="carousel-inner" role="listbox">
                            <div class="item active"><img src="Images/DeluxePod1.jpg" alt="Pod Exterior"/></div>
                            <div class="item"><img src="Images/DeluxePod2.jpg" alt="Pod Kitchen"/></div>
                            <div class="item"><img src="Images/DeluxePod3.jpg" alt="Pod Interior"/></div>
                            <div class="item"><img src="Images/DeluxePod4.jpg" alt="Pod Bedding"/></div>
                        </div>

                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>

            <div id="col2">
                <h1>Amentities</h1>
                <p>Welcome to the Deluxe Pods. Only £68 a night!</p>
                <div>
                    <div>
                        <ul class="auto-style1" style="line-height: 1.4; direction: ltr; letter-spacing: 0em; text-transform: none; text-align: center;">
                            <li class="text-left" style="list-style: disc;"><span style="font-weight: 400; font-style: normal; color: #f2e4de;">Your private hot tub</span></li>
                            <li class="text-left" style="list-style: disc;"><span style="font-weight: 400; font-style: normal; color: #f2e4de;">King size bed</span></li>
                            <li class="text-left" style="list-style: disc;"><span style="font-weight: 400; font-style: normal; color: #f2e4de;">Small sofa</span></li>
                            <li class="text-left" style="list-style: disc;"><span style="font-weight: 400; font-style: normal; color: #f2e4de;">Kitchenette</span></li>
                            <li class="text-left" style="list-style: disc;"><span style="font-weight: 400; font-style: normal; color: #f2e4de;">Wifi</span></li>
                            <li class="text-left" style="list-style: disc;"><span style="font-weight: 400; font-style: normal; color: #f2e4de;">32&quot; Smart TV</span></li>
                            <li class="text-left" style="list-style: disc;"><span style="font-weight: 400; font-style: normal; color: #f2e4de;">Bathrobes and towels</span></li>
                            <li class="text-left" style="list-style: disc;"><span style="font-weight: 400; font-style: normal; color: #f2e4de;">Breakfast Bar</span></li>
                        </ul>
                    </div>
                </div>
                <div>
                    <div>
                        <div style="font-size: 16.2772px; line-height: 1.4; direction: ltr; letter-spacing: 0em; text-transform: none; text-align: center;">
                            <p>
                                <span style="font-weight: 400; font-style: normal; color: #ffffff; font-size: small;">Disclaimer: The Deluxe Pods are adult-only accommodation and can only accommodate a max of two adults</span></p>
                        </div>
                    </div>
                </div>
        <div>
            <div class="calendar-wrapper">
    <h2>December 2025</h2>
    <table class="availability-calendar">
        <thead>
            <tr><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th><th>Sun</th></tr>
        </thead>
        <tbody>
                <tr>
                    <td class="available" data-date="2025-12-01">1</td>
                    <td class="available" data-date="2025-12-02">2</td>
                    <td class="available" data-date="2025-12-03">3</td>
                    <td class="available" data-date="2025-12-04">4</td>
                    <td class="available" data-date="2025-12-05">5</td>
                    <td class="available" data-date="2025-12-06">6</td>
                    <td class="booked" data-date="2025-12-07">7</td>
                </tr>
                <tr>
                    <td class="available" data-date="2025-12-08">8</td>
                    <td class="available" data-date="2025-12-09">9</td>
                    <td class="booked" data-date="2025-12-10">10</td>
                    <td class="available" data-date="2025-12-11">11</td>
                    <td class="available" data-date="2025-12-12">12</td>
                    <td class="available" data-date="2025-12-13">13</td>
                    <td class="booked" data-date="2025-12-14">14</td>
                </tr>
                <tr>
                    <td class="available" data-date="2025-12-15">15</td>
                    <td class="available" data-date="2025-12-16">16</td>
                    <td class="available" data-date="2025-12-17">17</td>
                    <td class="available" data-date="2025-12-18">18</td>
                    <td class="booked" data-date="2025-12-19">19</td>
                    <td class="available" data-date="2025-12-20">20</td>
                    <td class="available" data-date="2025-12-21">21</td>
                </tr>
                <tr>
                    <td class="available" data-date="2025-12-22">22</td>
                    <td class="booked" data-date="2025-12-23">23</td>
                    <td class="booked" data-date="2025-12-24">24</td>
                    <td class="booked" data-date="2025-12-25">25</td>
                    <td class="available" data-date="2025-12-26">26</td>
                    <td class="available" data-date="2025-12-27">27</td>
                    <td class="available" data-date="2025-12-28">28</td>
                </tr>
                <tr>
                    <td class="available" data-date="2025-12-29">29</td>
                    <td class="available" data-date="2025-12-30">30</td>
                    <td class="available" data-date="2025-12-31">31</td>
                    <td></td> <td></td> <td></td> <td></td> </tr>
            </tbody>
    </table>
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
        
    </form>
</body>
</html>