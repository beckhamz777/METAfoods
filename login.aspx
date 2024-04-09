<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="META_food.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>META Login</title>
    <style>
        body {
            margin: 0;
            justify-content: center;
            height: 100%;
            background-color: #f7f3f0;
            font-family: 'Microsoft Sans Serif';
        }

        div.frame {
            border: solid 1px #fae7d9;
            background-color: white;
            border-radius: 5px;
            width: 80%;
            margin-top: 50px;
            margin-left: 100px;
            margin-bottom: 50px;
            position:absolute;
            display: flex;
            flex-wrap:wrap-reverse;
        }

        .add {
            margin-left: 55px;
        }

        .loginform {
            padding-top: 90px;
            padding-left: 90px;
            padding-right: 90px;
            padding-bottom: 40px;
        }

        #email {
            width: 300px;
            height: 25px;
        }

        #password {
            width: 300px;
            height: 25px;
        }

        h1 {
            font: 100;
        }

        #btn {
            margin: 10px;
            margin-left: 230px;
            background-color: orange;
            border: none;
            border-radius: 5px;
            height: 34px;
            width: 75px;
        }

            #btn:hover {
                color: white;
            }

        .logo {
            margin-bottom: 10px;
        }

        .ad {
            margin-left: 50px;
            margin-top: 90px;
        }

        #forgot {
            color: orange;
            cursor: pointer;
        }

            #forgot:hover {
                color: orangered;
            }

        #signup {
            color: orange;
            margin-left: 7px;
            cursor: pointer;
        }

            #signup:hover {
                color: orangered;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="frame">
            <div class="add">
                <img src="icons/login-.gif" alt="art" class="ad" width="300px" height="300px" />
            </div>
            <div class="loginform">

                <img src="images/platinum logo.jpeg" width="300px" height="60px" class="logo" />
                <h1 class="logon">LOGIN</h1>

                <h4 class="logon2">Email:</h4>
                <input type="email" id="email" runat="server" />

                <h4 class="logon2">Password:</h4>
                <input type="password" id="password" runat="server" />
                <asp:HyperLink ID="signup" runat="server"> sign up</asp:HyperLink>
                <br />
                <asp:HyperLink ID="forgot" runat="server"> forgotten password</asp:HyperLink>

                <br />

                <asp:Button ID="btn" runat="server" Text="Sign In" OnClick="btn_Click" PostBackUrl="~/WebForm1.aspx" />



            </div>
        </div>
    </form>
</body>
</html>
