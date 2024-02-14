<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WAPP_Assignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Welcome to Animagraphy Login Page</title>
    <link rel= "stylesheet" href="login.css"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
</head>

<body>
    <div class="wrapper">
        <form id="form1" runat="server">
            <h1>Login</h1>
                <div class="input-box">
                    <input type="text" id="login_username" placeholder="Username" required="required" runat="server"/>
                    <box-icon type='solid' name='user'></box-icon>
                </div>
                <div class="input-box">
                    <input type="password" id="login_pwd" placeholder="Password" required="required" runat="server"/>
                    <box-icon name='lock-alt' ></box-icon>
                </div>
            <div class="forgot-password">
                <a href="#">Forgot password?</a>
            </div>
            <button id="Button1" type="submit" class="btn" form="form1"  runat="server">Login</button>
            <div class="register-link">
                <p>Don't have an account? <a href="../10Registration/Registration.aspx">Register</a></p>
            </div>
            <asp:Label style="text-align:center" ID="prompt" runat="server" Visible="false"></asp:Label>
            </form>
        </div>
</body>
</html>
