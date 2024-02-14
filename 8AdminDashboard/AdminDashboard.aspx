<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="WebApplication1.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"/>
    <style>body {
            font-family: "Poppins", sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Header Styles */
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

        /* Navigation Styles */
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

        /* Main Content Styles */
        main {
            padding: 20px;
        }

        section {
            margin-bottom: 30px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        section h2 {
            margin-top: 0;
        }

        /* Footer Styles */
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
        </header>
        <nav>
            <ul>
                <li><a href="#personal-info">Modify Personal Information</a></li>
                <li><a href="#user-details">Review Users' Details</a></li>
                <li><a href="#user-management">Manage User Inquiries, Roles, and Permissions</a></li>
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
                    <!-- Form to modify personal information -->
                    <div id="profileForm">
                        <label for="fullName">Full Name:</label>
                        <input type="text" id="fullName" name="fullName" required="required"/>

                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required="required"/>

                        <label for="phoneNumber">Phone Number:</label>
                        <input type="tel" id="phoneNumber" name="phoneNumber"/>

                        <label for="profilePicture">Profile Picture:</label>
                        <input type="file" id="profilePicture" name="profilePicture"/>

                        <button type="button" onclick="saveProfileChanges()">Save Changes</button>
                    </div>

                    <div id="passwordForm">
                        <label for="currentPassword">Current Password:</label>
                        <input type="password" id="currentPassword" name="currentPassword" required="required"/>

                        <label for="newPassword">New Password:</label>
                        <input type="password" id="newPassword" name="newPassword" required="required"/>

                        <label for="confirmPassword">Confirm New Password:</label>
                        <input type="password" id="confirmPassword" name="confirmPassword" required="required"/>

                        <button type="button" onclick="changePassword()">Change Password</button>
                    </div>
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
                                <th>Registration Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>User1</td>
                                <td>user1@example.com</td>
                                <td>Admin</td>
                                <td>2024-02-14</td>
                            </tr>
                            <!-- Add more rows for other users -->
                        </tbody>
                    </table>
                </div>
            </section>
            <section id="user-management">
                <h2>Manage User Inquiries, Roles, and Permissions
                 <span class="toggle-icon" onclick="toggleSection('user-management')"></span>
                </h2>
                <div class="section-content">
                    <!-- Forms or tables to manage user inquiries, roles, and permissions -->
                    <section id="user-inquiries">
                        <h3>User Inquiries</h3>
                        <!-- Add elements for managing user inquiries -->
                        <p>View user inquiries here...</p>
                        <button onclick="viewUserInquiries()">View Inquiries</button>
                    </section>
        
                    <!-- User Roles Section -->
                    <section id="user-roles">
                        <h3>User Roles</h3>
                        <!-- Add elements for managing user roles -->
                        <p>View user roles here...</p>
                        <button onclick="manageUserRoles()">Manage Roles</button>
                    </section>
        
                    <!-- User Permissions Section -->
                    <section id="user-permissions">
                        <h3>User Permissions</h3>
                        <!-- Add elements for managing user permissions -->
                        <p>Manage user permissions here...</p>
                        <button onclick="manageUserPermissions()">Manage Permissions</button>
                    </section>
                    </div>
            </section>
            <section id="dashboard-customization">
                <h2>Customize and Personalize Dashboard
                <span class="toggle-icon" onclick="toggleSection('dashboard-customization')"></span>
                </h2>
                <div class="section-content">
                <!-- Options to customize and personalize the dashboard layout -->
                    <section id="dashboard-layout">
            <h3>Dashboard Layout</h3>
            <!-- Add elements for customizing dashboard layout -->
            <p>Customize dashboard layout here...</p>
            <button onclick="customizeDashboardLayout()">Customize Layout</button>
                </section>
        
                <!-- Dashboard Theme Customization -->
                <section id="dashboard-theme">
                    <h3>Dashboard Theme</h3>
                    <!-- Add elements for customizing dashboard theme -->
                    <p>Personalize dashboard theme here...</p>
                    <button onclick="customizeDashboardTheme()">Personalize Theme</button>
                </section>
        
                <!-- Dashboard Widgets Configuration -->
                <section id="dashboard-widgets">
                    <h3>Dashboard Widgets</h3>
                    <!-- Add elements for configuring dashboard widgets -->
                    <p>Configure dashboard widgets here...</p>
                    <button onclick="configureDashboardWidgets()">Configure Widgets</button>
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
         </script>
    </form>
</body>
</html>
