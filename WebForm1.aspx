<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="META_food.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="home.css" />
    <script type="text/javascript">
        window.onload = function () {
            var images = document.querySelectorAll('.fastfood .img');
            images.forEach(function (img) {
                img.onclick = function () {
                    var popupImage = document.querySelector('.popup-image');
                    popupImage.style.display = 'block';
                    var src = img.src;
                    popupImage.querySelector('.popup').src = src;
                };
            });

            var popupCloseButton = document.querySelector('.popup-image span');
            popupCloseButton.onclick = function (event) {
                if (event.target.tagName !== 'IMG') {
                    document.querySelector('.popup-image').style.display = 'none';
                }
            };
        };


        function handleImageButtonClick() {
            return false;
        }
    </script>
    <title>META foods</title>


    <style>
        body {
            margin: 0;
            font-family: 'Microsoft Sans Serif';
        }

        div.nav {
            background-color: white;
            border-bottom: solid 1px gray;
            position: fixed;
            width: 100%;
            z-index: 9999;
            top: 0;
        }

        #txtbox {
            float: right;
        }

        #logo {
            width: 250px;
            height: 60px;
            margin-left: 20px;
            margin-top: 20px;
        }

        #txtsearch {
            width: 300px;
            height: 30px;
            border: solid 1px black;
            border-radius: 5px;
            margin-top: 30px;
            margin-right: 10px;
            float: right;
        }

        #btn {
            width: 80px;
            height: 30px;
            margin-top: 30px;
            margin-right: 10px;
            border: none;
            background-color: orange;
            border-radius: 5px;
            color: white;
            float: right;
        }

        #ac {
            height: 50px;
            width: 50px;
            float: right;
            margin-right: 15px;
            margin-top: 20px;
        }

        .shopped {
            float: right;
            margin-right: 10px;
            margin-top: 20px;
        }

        .slide {
            margin-top: 20px;
            position: relative;
            1 overflow: hidden;
        }

        .promo-container {
            display: flex;
            transition: ease;
        }

        .promo {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .prev,
        .next {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background-color: rgba(255, 255, 255, 0.5);
            border: none;
            color: black;
            font-size: 18px;
            padding: 10px;
            cursor: pointer;
            z-index: 1;
        }

        .prev {
            left: 0;
        }

        .next {
            right: 0;
        }


        div.fastfood {
            height: auto;
            margin-top: 10px;
            margin-left: 20px;
            border: solid 1px #fae7d9;
            background-color: #f7f3f0;
            display: flex;
            padding-left: 20px;
            justify-content: center;
            flex-wrap: nowrap;
            flex-direction: row;
            border-radius: 10px;
            width: 95%;
            overflow-x: scroll;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

            div.fastfood::-webkit-scrollbar {
            }


        div.fastfood {
            scrollbar-width: none;
        }

        /*////////////////////////////////////////# fast food 2//////////////////////////////////////////////////////////////*/
        div.fastfood2 {
            height: auto;
            margin-top: 10px;
            margin-left: 20px;
            border: solid 1px #fae7d9;
            background-color: #f7f3f0;
            display: flex;
            padding-left: 20px;
            justify-content: center;
            flex-wrap: nowrap;
            flex-direction: row;
            border-radius: 10px;
            width: 95%;
            overflow-x: scroll;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

            div.fastfood2::-webkit-scrollbar {
                display: none;
            }


        div.fastfood2 {
            scrollbar-width: none;
        }


        section.cupcinno {
            border: solid 1px #cdcdcd;
            border-radius: 7px;
            cursor: pointer;
            margin: 10px;
            width: 200px;
        }

        .cupcinno:hover {
            background-color: #fae7d9;
            transform: scale(1.1);
        }


        section.cupcinno2 {
            border: solid 1px #cdcdcd;
            border-radius: 7px;
            cursor: pointer;
            margin: 10px;
            width: 200px;
        }

        .cupcinno2:hover {
            background-color: #fae7d9;
            transform: scale(1.1);
        }

        section.cupcinno3 {
            border: solid 1px #cdcdcd;
            border-radius: 7px;
            cursor: pointer;
            margin: 10px;
            width: 200px;
        }

        .cupcinno3:hover {
            background-color: #fae7d9;
            transform: scale(1.1);
        }

        section.cupcinno4 {
            border: solid 1px #cdcdcd;
            border-radius: 7px;
            cursor: pointer;
            margin: 10px;
            width: 200px;
        }

        .cupcinno4:hover {
            background-color: #fae7d9;
            transform: scale(1.1);
        }

        section.cupcinno5 {
            border: solid 1px #cdcdcd;
            border-radius: 7px;
            cursor: pointer;
            margin: 10px;
            width: 200px;
        }

        .cupcinno5:hover {
            background-color: #fae7d9;
            transform: scale(1.1);
        }

        section.cupcinno6 {
            border: solid 1px #cdcdcd;
            border-radius: 7px;
            margin: 10px;
            cursor: pointer;
            width: 200px;
        }

        .cupcinno6:hover {
            background-color: #fae7d9;
            transform: scale(1.1);
        }

        section.header {
            margin-top: 10px;
            border-bottom: 2px solid black;
            background-color: orange;
            color: gray;
            width: 100%;
            flex-wrap: nowrap;
            display: flex;
        }

        section.header2 {
            border-bottom: 2px solid black;
            margin-top: 10px;
            background-color: orange;
            color: gray;
            width: 100%;
            flex-wrap: nowrap;
            display: flex;
        }

        .head {
            margin: 6px;
            margin-top: 10px;
            font-family: 'Microsoft Sans Serif';
            font: bold;
        }

        .icon {
            margin-left: 20px;
        }

        .popup {
            width: 750px;
            height: 450px;
            position: absolute;
            top: 60%;
            left: 50%;
            transform: translate(-50%, -50%);
            object-fit: cover;
            border: 2px solid white;
        }

        @media(max-width:768px) {
            .popup {
                width: 95%;
            }
        }

        .popup-image {
            position: fixed;
            top: 0;
            left: 0;
            background-color: rgba(0, 0, 0, 0.60);
            height: 100%;
            width: 100%;
            z-index: 100;
            display: none;
        }

            .popup-image span {
                position: absolute;
                top: 100px;
                right: 10px;
                font-weight: bolder;
                font-size: 30px;
                color: white;
                cursor: pointer;
                z-index: 100;
            }
    </style>
</head>
<body>

    <form id="form1" runat="server">


        <div class="nav">
            <asp:Image ImageUrl="~/images/platinum logo.jpeg" ID="logo" runat="server" />
            <asp:ImageButton ImageUrl="~/icons/profile-user.png" ID="ac" runat="server" PostBackUrl="~/account.aspx" />
            <asp:Button ID="btn" runat="server" Text="search" />
            <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
            <asp:ImageButton ID="shopped" ImageUrl="~/icons/bag (1).png" runat="server" Width="35px" Height="35px" />

        </div>


        <div class="slide">
            <div class="slide-container">
                <div class="promo-container">
                    <img src="images/shaafi-ali-I0IXBZDEAHo-unsplash.jpg" alt="ad" class="promo" />
                    <img src="images/pixzolo-photography-BiWb1Y8wpZk-unsplash.jpg" alt="ad" class="promo" />
                </div>
            </div>
            <button class="prev" onclick="moveSlide(-1)">&#10094;</button>
            <button class="next" onclick="moveSlide(1)">&#10095;</button>
        </div>

        <section class="header">
            <img src="icons/fast-food.png" alt="pic" width="40px" height="40px" class="icon" />
            <h1 class="head">Snacks</h1>
        </section>


        <div class="fastfood">

            <section class="cupcinno">
                <asp:ImageButton ID="ImageButton" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" href="#" AlternateText="milk shake" OnClientClick="return showPopup();" />

                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>

            <section class="cupcinno2">
                <asp:ImageButton ID="ImageButton1" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" href="#" AlternateText="milk shake" />
                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>

            <section class="cupcinno3">
                <asp:ImageButton ID="ImageButton2" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" href="#" AlternateText="milk shake" UseSubmitBehavior="false" />
                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>

            <section class="cupcinno4">
                <asp:ImageButton ID="ImageButton3" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" href="#" AlternateText="milk shake" UseSubmitBehavior="false" />
                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>

            <section class="cupcinno5">
                <asp:ImageButton ID="ImageButton4" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" href="#" AlternateText="milk shake" UseSubmitBehavior="false" />
                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>

            <section class="cupcinno6">
                <asp:ImageButton ID="ImageButton5" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" href="#" AlternateText="milk shake" UseSubmitBehavior="true" />
                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>
        </div>




        <section class="header2">
            <img src="icons/diet.png" alt="pic" width="40px" height="40px" class="icon" />
            <h1 class="head">Burger</h1>
        </section>

        <div class="fastfood2">
            <section class="cupcinno">
                <asp:ImageButton ID="ImageButton6" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" AlternateText="milk shake" />
                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>

            <section class="cupcinno2">
                <asp:ImageButton ID="ImageButton7" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" AlternateText="milk shake" />
                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>

            <section class="cupcinno3">
                <asp:ImageButton ID="ImageButton8" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" AlternateText="milk shake" />
                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>

            <section class="cupcinno4">
                <asp:ImageButton ID="ImageButton9" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" AlternateText="milk shake" />
                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>

            <section class="cupcinno5">
                <asp:ImageButton ID="ImageButton10" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" AlternateText="milk shake" />
                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>

            <section class="cupcinno6">
                <asp:ImageButton ID="ImageButton11" Class="img" ImageUrl="~/images/kobby-mendez-q54Oxq44MZs-unsplash.jpg" runat="server" Width="200" AlternateText="milk shake" />
                <p class="price">Original: UGX 25,000/-</p>
                <p class="discount">Discount: 20%</p>
                <p class="finalprice">Final Price: 20,000/-</p>
            </section>


        </div>
        <div class="popup-image" id="popup-image" role="dialog">
            <span>&times</span>
            <img src="images/bon-vivant-qom5MPOER-I-unsplash.jpg" alt="" class="popup" runat="server" />
        </div>


    </form>

    <script src="../javascript/java.js" type="text/javascript"></script>
</body>
</html>
