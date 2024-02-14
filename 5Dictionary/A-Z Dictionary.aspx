<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A-Z Dictionary.aspx.cs" Inherits="WebApplication1.A_Z_Dictionary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Alphabet Dictionary</title>
    <link rel="stylesheet" type="text/css" href="DictionaryStyleSheet.css"/>
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
        h1 {
            background-color: rgba(255, 255, 255, 0.5);
            margin-top: 50px;
            font-size: 36px; 
            color: #333; 
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        .letter {
            margin-top: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .letter button {
            font-size: 18px;
            padding: 10px 20px; /* Adjust padding to increase button size */
            margin: 5px;
            cursor: pointer;
            flex: 1; /* Distribute available space evenly among buttons */
            max-width: calc(50% - 10px); /* Ensure buttons take up 50% of container width with spacing */
            box-sizing: border-box; /* Include padding and border in button's total width */
        }
        .animal-info {
            margin-top: 20px;
            padding: 10px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="title-panel">
                <h1 class="title">Animal Alphabet Dictionary</h1>
            </div>

            <div class="letter">
                <button class="button" type="button" onclick="showAnimalInfo('A')">A</button>
                <button class="button" type="button" onclick="showAnimalInfo('B')">B</button>
                <button class="button" type="button" onclick="showAnimalInfo('C')">C</button>
                <button class="button" type="button" onclick="showAnimalInfo('D')">D</button>
                <button class="button" type="button" onclick="showAnimalInfo('E')">E</button>
                <button class="button" type="button" onclick="showAnimalInfo('F')">F</button>
                <button class="button" type="button" onclick="showAnimalInfo('G')">G</button>
                <button class="button" type="button" onclick="showAnimalInfo('H')">H</button>
                <button class="button" type="button" onclick="showAnimalInfo('I')">I</button>
                <button class="button" type="button" onclick="showAnimalInfo('J')">J</button>
                <button class="button" type="button" onclick="showAnimalInfo('K')">K</button>
                <button class="button" type="button" onclick="showAnimalInfo('L')">L</button>
                <button class="button" type="button" onclick="showAnimalInfo('M')">M</button>
                <br />
                <button class="button" type="button" onclick="showAnimalInfo('N')">N</button>
                <button class="button" type="button" onclick="showAnimalInfo('O')">O</button>
                <button class="button" type="button" onclick="showAnimalInfo('P')">P</button>
                <button class="button" type="button" onclick="showAnimalInfo('Q')">Q</button>
                <button class="button" type="button" onclick="showAnimalInfo('R')">R</button>
                <button class="button" type="button" onclick="showAnimalInfo('S')">S</button>
                <button class="button" type="button" onclick="showAnimalInfo('T')">T</button>
                <button class="button" type="button" onclick="showAnimalInfo('U')">U</button>
                <button class="button" type="button" onclick="showAnimalInfo('V')">V</button>
                <button class="button" type="button" onclick="showAnimalInfo('W')">W</button>
                <button class="button" type="button" onclick="showAnimalInfo('X')">X</button>
                <button class="button" type="button" onclick="showAnimalInfo('Y')">Y</button>
                <button class="button" type="button" onclick="showAnimalInfo('Z')">Z</button>
                <!-- Add more buttons for other letters -->
            </div>

            <div id="animalInfoContainer" class="animal-info">
                <!-- Animal information will be displayed here -->
            </div>
            <div id="animalImageContainer" class="animal-image">
                <!-- Animal images will be displayed here -->
            </div>
        </div>

        <script>
            // Animal information stored in a JavaScript object
            var animalInfo = {
                'A': {
                    'name': 'Alligator',
                    'scientificName': 'Alligator mississippiensis',
                    'habitats': 'Swamps, rivers, lakes',
                    'lifespan': '35-50 years'
                },
                'B': {
                    'name': 'Bear',
                    'scientificName': 'Ursidae',
                    'habitats': 'Forests, mountains, tundra',
                    'lifespan': '20-30 years'
                },
                'C': {
                    'name': 'Cat',
                    'scientificName': 'Felis catus',
                    'habitats': 'Various, including urban areas, forests, deserts',
                    'lifespan': '12-18 years'
                },
                'D': {
                    'name': 'Dolphin',
                    'scientificName': 'Delphinidae',
                    'habitats': 'Oceans, seas',
                    'lifespan': '20-50 years'
                },
                'E': {
                    'name': 'Elephant',
                    'scientificName': 'Loxodonta',
                    'habitats': 'Savannas, forests, deserts',
                    'lifespan': '60-70 years'
                },
                'F': {
                    'name': 'Fox',
                    'scientificName': 'Vulpes vulpes',
                    'habitats': 'Forests, grasslands, urban areas',
                    'lifespan': '2-5 years (in the wild)'
                },
                'G': {
                    'name': 'Giraffe',
                    'scientificName': 'Giraffa camelopardalis',
                    'habitats': 'Savannas, grasslands',
                    'lifespan': '20-25 years (in the wild)'
                },
                'H': {
                    'name': 'Horse',
                    'scientificName': 'Equus ferus caballus',
                    'habitats': 'Grasslands, plains',
                    'lifespan': '25-30 years'
                },
                'I': {
                    'name': 'Iguana',
                    'scientificName': 'Iguanidae',
                    'habitats': 'Tropical forests, deserts, coastal areas',
                    'lifespan': '4-8 years (in the wild)'
                },
                'J': {
                    'name': 'Jaguar',
                    'scientificName': 'Panthera onca',
                    'habitats': 'Rainforests, swamps, grasslands',
                    'lifespan': '12-15 years (in the wild)'
                },
                'K': {
                    'name': 'Kangaroo',
                    'scientificName': 'Macropodidae',
                    'habitats': 'Grasslands, forests, deserts',
                    'lifespan': '6-8 years (in the wild)'
                },
                'L': {
                    'name': 'Lion',
                    'scientificName': 'Panthera leo',
                    'habitats': 'Grasslands, savannas, forests',
                    'lifespan': '10-14 years (in the wild)'
                },
                'M': {
                    'name': 'Monkey',
                    'scientificName': 'Cercopithecidae',
                    'habitats': 'Tropical rainforests, savannas, mountains',
                    'lifespan': '10-50 years (depending on species)'
                },
                'N': {
                    'name': 'Nightingale',
                    'scientificName': 'Luscinia megarhynchos',
                    'habitats': 'Woodlands, parks, gardens',
                    'lifespan': '2-5 years'
                },
                'O': {
                    'name': 'Ostrich',
                    'scientificName': 'Struthio camelus',
                    'habitats': 'Savannas, deserts, grasslands',
                    'lifespan': '40-50 years'
                },
                'P': {
                    'name': 'Panda',
                    'scientificName': 'Ailuropoda melanoleuca',
                    'habitats': 'Bamboo forests',
                    'lifespan': '20-30 years (in the wild)'
                },
                'Q': {
                    'name': 'Quokka',
                    'scientificName': 'Setonix brachyurus',
                    'habitats': 'Rottnest Island, Western Australia',
                    'lifespan': '10 years (in the wild)'
                },
                'R': {
                    'name': 'Raccoon',
                    'scientificName': 'Procyon lotor',
                    'habitats': 'Forests, urban areas',
                    'lifespan': '2-3 years (in the wild)'
                },
                'S': {
                    'name': 'Sloth',
                    'scientificName': 'Folivora',
                    'habitats': 'Rainforests of Central and South America',
                    'lifespan': '20-30 years'
                },
                'T': {
                    'name': 'Tiger',
                    'scientificName': 'Panthera tigris',
                    'habitats': 'Forests, grasslands, mangrove swamps',
                    'lifespan': '10-15 years (in the wild)'
                },
                'U': {
                    'name': 'Umbrellabird',
                    'scientificName': 'Cephalopterus',
                    'habitats': 'Rainforests of Central and South America',
                    'lifespan': '16 years (average)'
                },
                'V': {
                    'name': 'Vulture',
                    'scientificName': 'Cathartidae',
                    'habitats': 'Various habitats worldwide',
                    'lifespan': 'Up to 40 years'
                },
                'W': {
                    'name': 'Whale',
                    'scientificName': 'Cetacea',
                    'habitats': 'Oceans',
                    'lifespan': 'Up to 200 years'
                },
                'X': {
                    'name': 'Xerus',
                    'scientificName': 'Xerus',
                    'habitats': 'Savannas, grasslands',
                    'lifespan': '8-12 years'
                },
                'Y': {
                    'name': 'Yak',
                    'scientificName': 'Bos grunniens',
                    'habitats': 'Mountains of Central Asia',
                    'lifespan': '20-25 years'
                },
                'Z': {
                    'name': 'Zebra',
                    'scientificName': 'Equus zebra',
                    'habitats': 'Grasslands, savannas',
                    'lifespan': '25 years (in the wild)'
                }
                // Add more entries for other animals
            };

            function showAnimalInfo(letter) {
                // Clear previous content
                document.getElementById('animalInfoContainer').innerHTML = '';
                document.getElementById('animalInfoContainer').classList.remove('show');
                document.getElementById('animalImageContainer').innerHTML = '';
                document.getElementById('animalImageContainer').classList.remove('show');

                // Retrieve the information for the selected animal
                if (animalInfo.hasOwnProperty(letter)) {
                    var info = animalInfo[letter];
                    var infoHtml = '<h2>' + info.name + '</h2>' +
                        '<p><strong>Scientific Name:</strong> ' + info.scientificName + '</p>' +
                        '<p><strong>Habitats:</strong> ' + info.habitats + '</p>' +
                        '<p><strong>Lifespan:</strong> ' + info.lifespan + '</p>';
                    document.getElementById('animalInfoContainer').innerHTML = infoHtml;

                    // Display the respective animal image
                    var imageHtml = '<img src="Images/' + letter + '.jpg" alt="' + info.name + '" style="max-width: 100%;">';
                    document.getElementById('animalImageContainer').innerHTML = imageHtml;

                    setTimeout(function () {
                        document.getElementById('animalInfoContainer').classList.add('show');
                        document.getElementById('animalImageContainer').classList.add('show');
                    }, 500);
                }
            }
        </script>
    </form>
</body>
</html>