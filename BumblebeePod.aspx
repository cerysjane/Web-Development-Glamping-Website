<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BumblebeePod.aspx.cs" Inherits="WDA2_1_.BumblebeePod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>The Bumblebee Pod - East Shore Retreat</title>
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
                <h2 class="Deluxe-Pod-heading" style="color: #c2d6c2; margin-bottom: 10px;">The Bumblebee Pods</h2>
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
                            <div class="item active">
                                <img src="Images/BumblebeePod1.jpg" /></div>
                            <div class="item">
                                <img src="Images/BumblebeePod2.jpg" /></div>
                            <div class="item">
                                <img src="Images/BumblebeePod3.jpg" /></div>
                            <div class="item">
                                <img src="Images/BumblebeePod4.jpg" /></div>
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
                <p>Welcome to the Bumblebee Pods. Only £90! a night</p>
                <div>
                    <div>
                        <ul>
                            <li><span class="a_GcMg font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none" style="color: rgba(242,228,222,var(--O42jJQ,1)); caret-color: rgb(242, 228, 222); --Ys-XuQ: none; font-weight: 400; font-style: normal; font-kerning: normal;">Your own private hot tub</span></li>
                            <li><span class="a_GcMg font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none" style="color: rgba(242,228,222,var(--O42jJQ,1)); caret-color: rgb(242, 228, 222); --Ys-XuQ: none; font-weight: 400; font-style: normal; font-kerning: normal;">Double bed</span><span class="a_GcMg font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none white-space-prewrap" style="color: rgba(242,228,222,var(--O42jJQ,1)); caret-color: rgb(242, 228, 222); --Ys-XuQ: none; font-weight: 400; font-style: normal; font-kerning: normal;"> </span></li>
                            <li><span class="a_GcMg font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none" style="color: rgba(242,228,222,var(--O42jJQ,1)); caret-color: rgb(242, 228, 222); --Ys-XuQ: none; font-weight: 400; font-style: normal; font-kerning: normal;">Sofa</span></li>
                            <li><span class="a_GcMg font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none" style="color: rgba(242,228,222,var(--O42jJQ,1)); caret-color: rgb(242, 228, 222); --Ys-XuQ: none; font-weight: 400; font-style: normal; font-kerning: normal;">Bathrobes and towels</span></li>
                            <li><span class="a_GcMg font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none" style="color: rgba(242,228,222,var(--O42jJQ,1)); caret-color: rgb(242, 228, 222); --Ys-XuQ: none; font-weight: 400; font-style: normal; font-kerning: normal;">Parking</span></li>
                            <li><span class="a_GcMg font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none" style="color: rgba(242,228,222,var(--O42jJQ,1)); caret-color: rgb(242, 228, 222); --Ys-XuQ: none; font-weight: 400; font-style: normal; font-kerning: normal;">Large “wet room”</span></li>
                            <li><span class="a_GcMg font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none" style="color: rgba(242,228,222,var(--O42jJQ,1)); caret-color: rgb(242, 228, 222); --Ys-XuQ: none; font-weight: 400; font-style: normal; font-kerning: normal;">Kitchenette</span></li>
                            <li><span class="a_GcMg font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none" style="color: rgba(242,228,222,var(--O42jJQ,1)); caret-color: rgb(242, 228, 222); --Ys-XuQ: none; font-weight: 400; font-style: normal; font-kerning: normal;">Radiator and WiFi</span></li>
                        </ul>
                    </div>
                </div>
                <div>
                    <div>
                        <div style="font-size: 16.2772px; line-height: 1.4; direction: ltr; letter-spacing: 0em; text-transform: none; text-align: center;">
                            <p>
                                <span class="a_GcMg font-feature-liga-off font-feature-clig-off font-feature-calt-off text-decoration-none text-strikethrough-none" style="color: rgba(255,255,255,var(--O42jJQ,1)); caret-color: rgb(255, 255, 255); --Ys-XuQ: none; font-weight: 400; font-style: normal; font-kerning: normal;">We have designed this pod and the site around it to be wheelchair friendly</span></p>
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
                    <td class="booked" data-date="2025-12-03">3</td>
                    <td class="available" data-date="2025-12-04">4</td>
                    <td class="available" data-date="2025-12-05">5</td>
                    <td class="available" data-date="2025-12-06">6</td>
                    <td class="available" data-date="2025-12-07">7</td>
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
                    <td class="booked" data-date="2025-12-15">15</td>
                    <td class="available" data-date="2025-12-16">16</td>
                    <td class="available" data-date="2025-12-17">17</td>
                    <td class="available" data-date="2025-12-18">18</td>
                    <td class="booked" data-date="2025-12-19">19</td>
                    <td class="available" data-date="2025-12-20">20</td>
                    <td class="available" data-date="2025-12-21">21</td>
                </tr>
                <tr>
                    <td class="available" data-date="2025-12-22">22</td>
                    <td class="available" data-date="2025-12-23">23</td>
                    <td class="booked" data-date="2025-12-24">24</td>
                    <td class="available" data-date="2025-12-25">25</td>
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
