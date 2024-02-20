<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WAPP_Assignment.Registration" EnableViewState="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Welcome to Animagraphy Registration Page</title>
    <link rel="stylesheet" href="registration.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet' />
    <style>
        .form-group {
            margin-bottom: 10px;
        }

        .error-message {
            color: red; /* Set error message color to red */
            margin-top: 5px;
        }

        #gender {
            font-size: 13px;
            text-align: center;
            background-color: #333;
        }

        #interestedTopic {
            font-size: 13px;
            text-align: center;
            background-color: #333;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <form id="form1" runat="server" enctype="multipart/form-data" enableviewstate="true">
            <h1>Animagraphy Registration Page</h1>
            <div class="input-box">
                <div class="input-field">
                    <asp:TextBox ID="fname" placeholder="First Name"
                        required="required" runat="server" />
                </div>
                <div class="input-field">
                    <asp:TextBox ID="lname" placeholder="Last Name"
                        required="required" runat="server" />
                </div>
                <div class="input-field">
                    <asp:DropDownList ID="gender" required="required" runat="server">
                        <asp:ListItem Value="" Text="-- Select Gender --"></asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-field">
                    <asp:DropDownList ID="interestedTopic" required="required" runat="server">
                        <asp:ListItem Value="" Text="-- Select Interested Topic --"></asp:ListItem>
                        <asp:ListItem Value="Common Household Pests">Common Household Pests</asp:ListItem>
                        <asp:ListItem Value="Existing Animals">Existing Animals</asp:ListItem>
                        <asp:ListItem Value="Extinct Animals">Extinct Animals</asp:ListItem>
                        <asp:ListItem Value="Ancient Animals">Ancient Animals</asp:ListItem>
                    </asp:DropDownList>
                </div>
                
                <div class="input-field">
                    <asp:TextBox ID="email" placeholder="Email"
                        required="required" runat="server" />
                </div>
                <div class="input-field">
                    <asp:TextBox ID="username" placeholder="Username"
                        required="required" runat="server" />
                </div>
                <div class="input-field">
                    <asp:TextBox ID="pwd" placeholder="Password" TextMode="Password"
                        required="required" runat="server" />
                </div>
            </div>
            <input type="checkbox" id="chkAgreement" required="required" />
            <label for="chkAgreement">I hereby declare that the above information provided is true and correct.</label>
            <asp:Button type="submit" class="btn" ID="Button1" Text="Register" OnClick="Button1_Click" runat="server" />
            <asp:Label ID="prompt" runat="server" CssClass="error-message" Visible="false"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userTable]"></asp:SqlDataSource>
        </form>
    </div>
    <p>
        &nbsp;</p>
</body>
</html>
