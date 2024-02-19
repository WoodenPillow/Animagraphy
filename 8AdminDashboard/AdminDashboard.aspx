<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="WebApplication1.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"/>
    <style>
        body {
            font-family: "Poppins", sans-serif;
            margin: 0;
            padding: 0;
            background-color: #cfe2f3;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        body.dark-mode {
            background-color: #1a1a1a;
            color: #fff;
        }

        body.light-mode {
            background-color: #f0f0f0;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 36px;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            background-color: #666;
        }

        nav ul li {
            display: inline;
        }

        nav ul li a {
            display: block;
            padding: 10px 20px;
            text-decoration: none;
            color: #fff;
        }

        nav ul li a:hover {
            background-color: #555;
        }

        main {
            padding: 20px;
        }

        section {
            margin-bottom: 30px;
            background-color: lightgreen;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        section h2 {
            margin-top: 0;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        .toggle-icon {
            cursor: pointer;
            display: inline-block;
            width: 20px;
            height: 20px;
            transition: transform 0.3s ease-out;
        }

        .toggle-icon::before {
            content: "\25B6"; /* Unicode for right-pointing triangle */
            font-size: 20px;
            line-height: 20px;
            display: block;
        }

        .section-content {
            display: none;
            overflow: hidden;
            transition: max-height 0.3s ease-out;
        }

        .section-content.show {
            display: block;
            max-height: 500px; /* Set the maximum height or adjust as needed */
            overflow: auto;
        }

        .section-expanded .toggle-icon::before {
            transform: rotate(90deg);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Welcome to the Admin Dashboard</h1>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click"/>
        </header>
        <nav>
            <ul>
                <li><a href="#personal-info">Modify Personal Information</a></li>
                <li><a href="#user-details">Review Users' Details</a></li>
                <li><a href="#animal-management">Edit Table Search Animal Data</a></li>
                <li><a href="#dashboard-customization">Customize and Personalize Dashboard</a></li>
            </ul>
        </nav>
        <main>
            <section id="personal-info">
                 <h2>
                    Modify Personal Information
                    <span class="toggle-icon" onclick="toggleSection('personal-info')"></span>
                </h2>
                <div class="section-content">
                    <asp:Label ID="Label2" runat="server" Text="UserName:"></asp:Label>
                    <asp:DropDownList ID="uname" runat="server" AutoPostBack="True" OnSelectedIndexChanged="uname_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:Label ID="Label3" runat="server" Text="First Name: "></asp:Label>
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Text="Last Name:"></asp:Label>
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                    <asp:DropDownList ID="gender" runat="server" OnSelectedIndexChanged="gender_SelectedIndexChanged">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label6" runat="server" Text="Interested Topic:"></asp:Label>
                    <asp:DropDownList ID="interestedTopic" runat="server" OnSelectedIndexChanged="interestedtopic_SelectedIndexChanged">
                        <asp:ListItem Value="Common Household Pests">Common Household Pests</asp:ListItem>
                        <asp:ListItem Value="Existing Animals">Existing Animals</asp:ListItem>
                        <asp:ListItem Value="Extinct Animals">Extinct Animals</asp:ListItem>
                        <asp:ListItem Value="Ancient Animals">Ancient Animals</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label7" runat="server" Text="Email: "></asp:Label>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    <asp:Label ID="Label8" runat="server" Text="Password: "></asp:Label>
                    <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Remove" />
                    <asp:Label ID="usertype" runat="server" Text="member" Visible="False"></asp:Label>
                    </div>
            </section>
            <section id="user-details">
                <h2>Review Users' Details
                    <span class="toggle-icon" onclick="toggleSection('user-details')"></span>
                </h2>
                <div class="section-content">
                <!-- Table to display users' details -->
                     <table id="userTable">
                        <thead>
                            <tr>
                                <th>Username</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Gender</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="userRepeater" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td style="padding-right: 10px; text-align: center;"><%# Eval("username") %></td>
                                        <td style="padding-right: 10px; text-align: center;"><%# Eval("email") %></td>
                                        <td style="padding-right: 10px; text-align: center;"><%# Eval("userType") %></td>
                                        <td style="padding-right: 10px; text-align: center;"><%# Eval("gender") %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </section>
            <section id="animal-management">
                <h2>Edit Table Search Animal Data
                 <span class="toggle-icon" onclick="toggleSection('animal-management')"></span>
                </h2>
                <div class="section-content">
                    <!-- Forms or tables to manage user inquiries, roles, and permissions -->
                    <section id="add-animal">
                        <h3>Add animal data</h3>
                        <asp:Label ID="addLabel1" runat="server" Text="Animal Name:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Label ID="addLabel2" runat="server" Text="Scientific Name:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:Label ID="addLabel3" runat="server" Text="Ecosystem:"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:Label ID="addLabel4" runat="server" Text="Life Status:"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:Button ID="addButton1" runat="server" OnClick="addButton1_Click" Text="Add" />
                        <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                    </section>

                    <section id="edit-animal">
                        <h3>Edit animal data</h3>
                        <asp:Label ID="editLabel1" runat="server" Text="Animal Name:"></asp:Label>
                        <asp:DropDownList ID="animalname" runat="server" AutoPostBack="True" OnSelectedIndexChanged="animalname_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:Label ID="editLabel2" runat="server" Text="Scientific Name: "></asp:Label>
                        <asp:TextBox ID="scientificname" runat="server"></asp:TextBox>
                        <asp:Label ID="editLabel3" runat="server" Text="Ecosystem: "></asp:Label>
                        <asp:TextBox ID="ecosystem" runat="server"></asp:TextBox>
                        <asp:Label ID="editLabel4" runat="server" Text="Life Status: "></asp:Label>
                        <asp:TextBox ID="lifestatus" runat="server"></asp:TextBox>
                        <asp:Button ID="editButton1" runat="server" OnClick="editButton1_Click" Text="Save" />
                        <asp:Button ID="editButton2" runat="server" OnClick="editButton2_Click" Text="Remove" />
                    </section>
                    </div>
            </section>
            <section id="dashboard-customization">
                <h2>Customize and Personalize Dashboard
                <span class="toggle-icon" onclick="toggleSection('dashboard-customization')"></span>
                </h2>
                <div class="section-content">
                <!-- Options to customize and personalize the dashboard layout -->
                    <section id="dashboard-customization-options">
                    <h2>Dashboard Theme</h2>
                    <p>Select a style:</p>
                    <select id="styleSelector" onchange="applyStyle()">
                        <option value="default">Default</option>
                        <option value="dark">Dark</option>
                        <option value="light">Light</option>
                    </select>
                  </section>
            </div>
            </section>
        </main>
        <footer>
            <p>&copy; 2024 Animagraphy Admin Dashboard. All rights reserved.</p>
        </footer>

         <script>
             function toggleSection(sectionId) {
                 var sectionContent = document.getElementById(sectionId).querySelector('.section-content');
                 var section = document.getElementById(sectionId);
                 sectionContent.classList.toggle('show');
                 section.classList.toggle('section-expanded');
             }

             function applyStyle() {
                 var styleSelector = document.getElementById("styleSelector");
                 var selectedStyle = styleSelector.options[styleSelector.selectedIndex].value;

                 var body = document.body;
                 body.classList.remove("dark-mode");
                 body.classList.remove("light-mode");

                 if (selectedStyle === "dark") {
                     body.classList.add("dark-mode");
                 } else if (selectedStyle === "light") {
                     body.classList.add("light-mode");
                 }
             }
         </script>  
    </form>
</body>
</html>
