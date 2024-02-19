<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Table Search.aspx.cs" Inherits="WebApplication1.Table_Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Animal Table Search</title>
    <link rel="stylesheet" type="text/css" href="TableSearchStyleSheet.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"/>
    <style>
        body {
            font-family: "Poppins", sans-serif;
            font-weight: bold;
            text-align: center;
            background-image: url('bg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: transparent;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(15px);
            opacity: 1;
            border: 4px solid rgba(255, 255, 255, 0.8);
            height: 600px;
            overflow: auto;
        }
        .search-container {
            margin-bottom: 20px;
        }
        .search-container input[type=text] {
            padding: 10px;
            width: 70%;
            border-radius: 5px;
            border: 1px solid #ccc;
            outline: none;
        }
        .search-container button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            background-color: rgba(255, 255, 255, 0.2);
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        .highlight {
            background-color: yellow;
            font-weight: bold;
        }
        .animal-image {
            position: absolute;
            top: 0;
            left: 100%;
            width: 100px; 
            visibility: hidden;
        }

        .animal-name {
            position: relative;
        }

        .animal-name:hover .animal-image {
            visibility: visible;
        }

        .back-button {
            position: absolute;
            top: 20px;
            left: 20px;
        }

        .back-button button {
            padding: 10px 20px;
            background-color: #ccc;
            color: #333;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .back-button button:hover {
            background-color: #bbb;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Animal Table Search</h1>
            <div class="search-container">
                <input type="text" placeholder="Search..." id="searchInput" runat="server" onkeypress="handleKeyPress(event)"/>
                <button type="button" onclick="search()">Search</button>
            </div>
            <div id="tableContainer" runat="server">
                <!-- Animal data table will be displayed here -->
                <table id="animalTable">
                    <thead>
                        <tr>
                            <th>Animal Name</th>
                            <th>Scientific Name</th>
                            <th>Ecosystem</th>
                            <th>Life Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptAnimals" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("AnimalName") %></td>
                                    <td><%# Eval("ScientificName") %></td>
                                    <td><%# Eval("Ecosystem") %></td>
                                    <td><%# Eval("LifeStatus") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
            <div class="back-button">
                <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Animals]"></asp:SqlDataSource>
        </div>

        <script>
            function search() {
                var input, filter, table, tr, td, i, j, txtValue;
                input = document.getElementById("searchInput");
                filter = input.value.trim().toLowerCase(); 
                table = document.getElementById("animalTable");
                tr = table.getElementsByTagName("tr");

                var thead = table.getElementsByTagName("thead")[0];
                thead.style.display = "table-header-group";

                for (i = 0; i < tr.length; i++) {
                    var found = false;
                    for (j = 0; j < 4; j++) {
                        td = tr[i].cells[j];
                        if (td) {
                            txtValue = td.innerText.trim().toLowerCase();
                            if (txtValue.includes(filter)) {
                                td.innerHTML = td.innerText.replace(new RegExp(filter, 'gi'), match => `<span class="highlight">${match}</span>`);
                                found = true;
                            } else {
                                td.innerHTML = td.innerText;
                            }
                        }
                    }
                    
                    tr[i].style.display = found ? "" : "none";
                }
            }

            function handleKeyPress(event) {
                if (event.keyCode === 13) { // 13 is the keycode for Enter key
                    event.preventDefault(); // Prevent default form submission behavior
                    search(); // Call the search function
                }
            }
        </script>
    </form>
</body>
</html>