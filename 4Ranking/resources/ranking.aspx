<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../resources/css/main.css">
    <link rel="stylesheet" media="(max-width: 700px), (pointer: coarse)" href="../resources/css/main-mobile.css">
    <link rel="stylesheet" href="../resources/css/leaderboard.css">
    <script src="../resources/js/main.js" defer></script>
    <title>Animagraphy's Leaderboard</title>
    </head>

<body>

    <form id="form1" runat="server">
        <header>
            <a id="titre" href="../">Animagraphy's Leaderboard</a>
            <div class="mobile" id="dropButton"><i class="fa-solid fa-bars" style="color: white;"></i></div>
            <nav id="nav">
                <ul>
                    <li><a href="../">Home</a></li>
                    <li id="menuStats">
                        <a>Stats</a>
                        <ul>
                            <li><a href="../stats/">Members</a></li>
                            <li><a href="../stats/online">Online Hours</a></li>
                            <li><a href="../stats/learning">Learning Hours</a></li>
                        </ul>
                    </li>
                    <li id="menuLeaderborad">
                        <a>Leaderboard</a>
                        <ul>
                            <li><a href="./points">Points</a></li>
                            <li><a href="./online">Online Hours</a></li>
                            <!-- Corrected Typo -->
                            <li><a href="./learning">Learning Hours</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </header>

        <h1>Member's Leaderboard</h1>

        <table class="demonlist">
            <thead>
                <!-- Add table header group -->
                <tr>
                    <th style="width: 10%;">Rank</th>
                    <th style="width: 30%;">Name</th>
                    <th style="width: 30%;">Points</th>
                    <th style="width: 30%;">Learning Hours</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr>
                <td><%# Container.ItemIndex + 1 %></td> <!-- Display rank -->
                <td><%# Eval("Name") %></td> <!-- Display member's name -->
                <td><%# Eval("Points") %></td> <!-- Display points -->
                <td><%# Eval("LearningHours") %></td> <!-- Display learning hours -->
            </tr>
        </ItemTemplate>
    </asp:Repeater>
            </tbody>

        </table>

        <footer>
            <p id="credits">
                Copyright 2024 Animagraphy | Group 19 Animagraphy
           
            </p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [leaderboard] ORDER BY Points DESC"></asp:SqlDataSource>
        </footer>
    </form>
</body>

</html>
