<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Matching.aspx.cs" Inherits="WAPP_Assignment.Matching" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personality Match of Animals</title>
    <link rel="stylesheet" href="matching.css" />
</head>
<body>
    <div class="wrapper">
        <form id="form1" runat="server">
            <h1>Find out the animals by comparing the ratings of their size, weight and height.</h1>
            <div class="slider-container">
                <label class="slider-label">Animal Size</label>
                <input class="range" type="range" name="" min="0" max="10" value="0" id="slider1" onchange="rangeSlide('slider1', this.value)" onmousemove="rangeSlide('slider1', this.value)" oninput="updateSliderTrackColor(this)" />
                <span id="animalSize" class="range-value">0</span>
            </div>
            <div class="slider-container">
                <label class="slider-label">Animal Weight</label>
                <input class="range" type="range" name="" min="0" max="10" value="0" id="slider2" onchange="rangeSlide('slider2', this.value)" onmousemove="rangeSlide('slider2', this.value)" oninput="updateSliderTrackColor(this)" />
                <span id="animalWeight" class="range-value">0</span>
            </div>
            <div class="slider-container">
                <label class="slider-label">Animal Height</label>
                <input class="range" type="range" name="" min="0" max="10" value="0" id="slider3" onchange="rangeSlide('slider3', this.value)" onmousemove="rangeSlide('slider3', this.value)" oninput="updateSliderTrackColor(this)" />
                <span id="animalHeight" class="range-value">0</span>
            </div>
        </form>

        <div class="animal-images">
            <!-- Almond Moth -->
            <img id="almondMothImage" src="Images/AlmondMoth.jpg" alt="Almond Moth" style="display: none;" />
            <div id="almondMothLabel" class="image-label">Almond Moth (Common Household Pests)</div>

            <!-- Dampwood Termite -->
            <img id="dampwoodTermiteImage" src="Images/DampwoodTermite.jpg" alt="Dampwood Termite" style="display: none;" />
            <div id="dampwoodTermiteLabel" class="image-label">Dampwood Termite (Common Household Pests)</div>

            <!-- Field Mice -->
            <img id="fieldMiceImage" src="Images/FieldMice.jpg" style="display: none;" alt="Field Mice (Common Household Pets)" />
            <div id="fieldMiceLabel" class="image-label">Field Mice (Common Household Pests)</div>

            <!-- Fire Ant -->
            <img id="fireAntImage" src="Images/FireAnt.jpg" style="display: none;" alt="Fire Ant  (Common Household Pets)" />
            <div id="fireAntLabel" class="image-label">Fire Ant (Common Household Pests)</div>

            <!-- Fruit Flies -->
            <img id="fruitFliesImage" src="Images/FruitFlies.jpg" style="display: none;" alt="Fruit Flies  (Common Household Pets)" />
            <div id="fruitFliesLabel" class="image-label">Fruit Flies (Common Household Pests)</div>

            <!-- House Centipedes -->
            <img id="houseCentipedesImage" src="Images/HouseCentipedes.jpg" style="display: none;" alt="House Centipedes  (Common Household Pets)" />
            <div id="houseCentipedesLabel" class="image-label">House Centipedes (Common Household Pests)</div>

            <!-- Indianmeal Moth -->
            <img id="indianmealMothImage" src="Images/IndianmealMoth.jpg" style="display: none;" alt="Indianmeal Moth  (Common Household Pets)" />
            <div id="indianmealMothLabel" class="image-label">Indianmeal Moth (Common Household Pests)</div>

            <!-- Maize Weevil -->
            <img id="maizeWeevilImage" src="Images/MaizeWeevil.jpg" style="display: none;" alt="Maize Weevil  (Common Household Pets)" />
            <div id="maizeWeevilLabel" class="image-label">Maize Weevil (Common Household Pests)</div>

            <!-- Silverfish -->
            <img id="silverfishImage" src="Images/Silverfish.jpg" style="display: none;" alt="Silverfish  (Common Household Pets)" />
            <div id="silverfishLabel" class="image-label">Silverfish (Common Household Pests)</div>

            <!-- Wood Rats -->
            <img id="woodRatsImage" src="Images/WoodRats.jpg" style="display: none;" alt="Wood Rats  (Common Household Pets)" />
            <div id="woodRatsLabel" class="image-label">Wood Rats (Common Household Pests)</div>

            <!-- African Elephant -->
            <img id="AfricanElephantImage" src="Images/AfricanElephant.jpg" style="display: none;" alt="African Elephant (Existing Animal)" />
            <div id="AfricanElephantLabel" class="image-label">African Elephant (Existing Animal)</div>

            <!-- Hawksbill Sea Turtle -->
            <img id="HawksbillSeaTurtleImage" src="Images/HawksbillSeaTurtle.jpg" style="display: none;" alt="Hawksbill Sea Turtle (Existing Animal)" />
            <div id="HawksbillSeaTurtleLabel" class="image-label">Hawksbill Sea Turtle (Existing Animal)</div>

            <!-- Sumatran Tiger -->
            <img id="SumatranTigerImage" src="Images/SumatranTiger.jpg" style="display: none;" alt="Sumatran Tiger (Existing Animal)" />
            <div id="SumatranTigerLabel" class="image-label">Sumatran Tiger (Existing Animal)</div>

            <!-- Bluefin Tuna -->
            <img id="BluefinTunaImage" src="Images/BluefinTuna.jpg" style="display: none;" alt="Bluefin Tuna (Existing Animal)" />
            <div id="BluefinTunaLabel" class="image-label">Bluefin Tuna (Existing Animal)</div>

            <!-- Bornean Orangutan -->
            <img id="BorneanOrangutanImage" src="Images/BorneanOrangutan.jpg" style="display: none;" alt="Bornean Orangutan (Existing Animal)" />
            <div id="BorneanOrangutanLabel" class="image-label">Bornean Orangutan (Existing Animal)</div>

            <!-- Snow Leopard -->
            <img id="SnowLeopardImage" src="Images/SnowLeopard.jpg" style="display: none;" alt="Snow Leopard (Existing Animal)" />
            <div id="SnowLeopardLabel" class="image-label">Snow Leopard (Existing Animal)</div>

            <!-- Bald Eagle -->
            <img id="BaldEagleImage" src="Images/BaldEagle.jpg" style="display: none;" alt="Bald Eagle (Existing Animal)" />
            <div id="BaldEagleLabel" class="image-label">Bald Eagle (Existing Animal)</div>

            <!-- Amur Leopard -->
            <img id="AmurLeopardImage" src="Images/AmurLeopard.jpg" style="display: none;" alt="Amur Leopard (Existing Animal)" />
            <div id="AmurLeopardLabel" class="image-label">Amur Leopard (Existing Animal)</div>

            <!-- Blue Whale -->
            <img id="BlueWhaleImage" src="Images/BlueWhale.jpg" style="display: none;" alt="Blue Whale (Existing Animal)" />
            <div id="BlueWhaleLabel" class="image-label">Blue Whale (Existing Animal)</div>

            <!-- Great White Shark -->
            <img id="GreatWhiteSharkImage" src="Images/GreatWhiteShark.jpg" style="display: none;" alt="Great White Shark (Existing Animal)" />
            <div id="GreatWhiteSharkLabel" class="image-label">Great White Shark (Existing Animal)</div>

            <!-- Dodo -->
            <img id="DodoImage" src="Images/Dodo.jpg" style="display: none;" alt="Dodo (Extinct Animal)" />
            <div id="DodoLabel" class="image-label">Dodo (Extinct Animal)</div>

            <!-- Woolly Mammoth -->
            <img id="WoollyMammothImage" src="Images/WoollyMammoth.jpg" style="display: none;" alt="Woolly Mammoth (Extinct Animal)" />
            <div id="WoollyMammothLabel" class="image-label">Woolly Mammoth (Extinct Animal)</div>

            <!-- Sabertooth Tiger -->
            <img id="SabertoothTigerImage" src="Images/SabertoothTiger.jpg" style="display: none;" alt="Sabertooth Tiger (Extinct Animal)" />
            <div id="SabertoothTigerLabel" class="image-label">Sabertooth Tiger (Extinct Animal)</div>

            <!-- Quagga -->
            <img id="QuaggaImage" src="Images/Quagga.jpg" style="display: none;" alt="Quagga (Extinct Animal)" />
            <div id="QuaggaLabel" class="image-label">Quagga (Extinct Animal)</div>

            <!-- Megalodon -->
            <img id="MegalodonImage" src="Images/Megalodon.jpg" style="display: none;" alt="Megalodon (Extinct Animal)" />
            <div id="MegalodonLabel" class="image-label">Megalodon (Extinct Animal)</div>

            <!-- Tasmanian Tiger -->
            <img id="TasmanianTigerImage" src="Images/TasmanianTiger.jpg" style="display: none;" alt="Tasmanian Tiger (Extinct Animal)" />
            <div id="TasmanianTigerLabel" class="image-label">Tasmanian Tiger (Extinct Animal)</div>

            <!-- Stegosaurus -->
            <img id="StegosaurusImage" src="Images/Stegosaurus.jpg" style="display: none;" alt="Stegosaurus (Extinct Animal)" />
            <div id="StegosaurusLabel" class="image-label">Stegosaurus (Extinct Animal)</div>

            <!-- Triceratops -->
            <img id="TriceratopsImage" src="Images/Triceratops.jpg" style="display: none;" alt="Triceratops (Extinct Animal)" />
            <div id="TriceratopsLabel" class="image-label">Triceratops (Extinct Animal)</div>

            <!-- Pterodactyl -->
            <img id="PterodactylImage" src="Images/Pterodactyl.jpg" style="display: none;" alt="Pterodactyl (Extinct Animal)" />
            <div id="PterodactylLabel" class="image-label">Pterodactyl (Extinct Animal)</div>

            <!-- Velociraptor -->
            <img id="VelociraptorImage" src="Images/Velociraptor.jpg" style="display: none;" alt="Velociraptor (Extinct Animal)" />
            <div id="VelociraptorLabel" class="image-label">Velociraptor (Extinct Animal)</div>

            <!-- Quetzalcoatlus -->
            <img id="QuetzalcoatlusImage" src="Images/Quetzalcoatlus.jpg" style="display: none;" alt="Quetzalcoatlus (Ancient Animal)" />
            <div id="QuetzalcoatlusLabel" class="image-label">Quetzalcoatlus (Ancient Animal)</div>

            <!-- Megalania -->
            <img id="MegalaniaImage" src="Images/Megalania.jpg" style="display: none;" alt="Megalania (Ancient Animal)" />
            <div id="MegalaniaLabel" class="image-label">Megalania (Ancient Animal)</div>

            <!-- Ankylosaurus -->
            <img id="AnkylosaurusImage" src="Images/Ankylosaurus.jpg" style="display: none;" alt="Ankylosaurus (Ancient Animal)" />
            <div id="AnkylosaurusLabel" class="image-label">Ankylosaurus (Ancient Animal)</div>

            <!-- Archaeopteryx -->
            <img id="ArchaeopteryxImage" src="Images/Archaeopteryx.jpg" style="display: none;" alt="Archaeopteryx (Ancient Animal)" />
            <div id="ArchaeopteryxLabel" class="image-label">Archaeopteryx (Ancient Animal)</div>

            <!-- Plesiosaurus -->
            <img id="PlesiosaurusImage" src="Images/Plesiosaurus.jpg" style="display: none;" alt="Plesiosaurus (Ancient Animal)" />
            <div id="PlesiosaurusLabel" class="image-label">Plesiosaurus (Ancient Animal)</div>

            <!-- Titanoboa -->
            <img id="TitanoboaImage" src="Images/Titanoboa.jpg" style="display: none;" alt="Titanoboa (Ancient Animal)" />
            <div id="TitanoboaLabel" class="image-label">Titanoboa (Ancient Animal)</div>

            <!-- Ichthyosaurus -->
            <img id="IchthyosaurusImage" src="Images/Ichthyosaurus.jpg" style="display: none;" alt="Ichthyosaurus (Ancient Animal)" />
            <div id="IchthyosaurusLabel" class="image-label">Ichthyosaurus (Ancient Animal)</div>

            <!-- Trilobite -->
            <img id="TrilobiteImage" src="Images/Trilobite.jpg" style="display: none;" alt="Trilobite (Ancient Animal)" />
            <div id="TrilobiteLabel" class="image-label">Trilobite (Ancient Animal)</div>

            <!-- Dunkleosteus -->
            <img id="DunkleosteusImage" src="Images/Dunkleosteus.jpg" style="display: none;" alt="Dunkleosteus (Ancient Animal)" />
            <div id="DunkleosteusLabel" class="image-label">Dunkleosteus (Ancient Animal)</div>
        </div>

    </div>
    <script>
        // Function to hide all labels
        function hideAllLabels() {
            var allLabels = document.querySelectorAll('.image-label');
            allLabels.forEach(function (label) {
                label.style.display = 'none';
            });
        }

        function rangeSlide(sliderId, value) {
            // Get the current values of all three sliders
            var sizeValue = parseInt(document.getElementById('slider1').value);
            var weightValue = parseInt(document.getElementById('slider2').value);
            var heightValue = parseInt(document.getElementById('slider3').value);

            // Hide all images and labels
            var allImages = document.querySelectorAll('.animal-images img');
            allImages.forEach(function (image) {
                image.style.display = 'none';
            });
            hideAllLabels();

            // Show the corresponding image based on sliders
            if (sizeValue == 2 && weightValue == 1 && heightValue == 1) {
                document.getElementById('almondMothImage').style.display = 'block';
                document.getElementById('almondMothLabel').style.display = 'block';
            } else if (sizeValue == 2 && weightValue == 1 && heightValue == 2) {
                document.getElementById('dampwoodTermiteImage').style.display = 'block';
                document.getElementById('dampwoodTermiteLabel').style.display = 'block';
            } else if (sizeValue == 3 && weightValue == 3 && heightValue == 2) {
                document.getElementById('fieldMiceImage').style.display = 'block';
                document.getElementById('fieldMiceLabel').style.display = 'block';
            } else if (sizeValue == 2 && weightValue == 2 && heightValue == 1) {
                document.getElementById('fireAntImage').style.display = 'block';
                document.getElementById('fireAntLabel').style.display = 'block';
            } else if (sizeValue == 1 && weightValue == 1 && heightValue == 1) {
                document.getElementById('fruitFliesImage').style.display = 'block';
                document.getElementById('fruitFliesLabel').style.display = 'block';
            } else if (sizeValue == 4 && weightValue == 3 && heightValue == 5) {
                document.getElementById('houseCentipedesImage').style.display = 'block';
                document.getElementById('houseCentipedesLabel').style.display = 'block';
            } else if (sizeValue == 2 && weightValue == 2 && heightValue == 2) {
                document.getElementById('indianmealMothImage').style.display = 'block';
                document.getElementById('indianmealMothLabel').style.display = 'block';
            } else if (sizeValue == 3 && weightValue == 2 && heightValue == 1) {
                document.getElementById('maizeWeevilImage').style.display = 'block';
                document.getElementById('maizeWeevilLabel').style.display = 'block';
            } else if (sizeValue == 1 && weightValue == 1 && heightValue == 2) {
                document.getElementById('silverfishImage').style.display = 'block';
                document.getElementById('silverfishLabel').style.display = 'block';
            } else if (sizeValue == 5 && weightValue == 5 && heightValue == 4) {
                document.getElementById('woodRatsImage').style.display = 'block';
                document.getElementById('woodRatsLabel').style.display = 'block';
            } else if (sizeValue == 10 && weightValue == 10 && heightValue == 8) {
                document.getElementById('AfricanElephantImage').style.display = 'block';
                document.getElementById('AfricanElephantLabel').style.display = 'block';
            } else if (sizeValue == 5 && weightValue == 6 && heightValue == 4) {
                document.getElementById('HawksbillSeaTurtleImage').style.display = 'block';
                document.getElementById('HawksbillSeaTurtleLabel').style.display = 'block';
            } else if (sizeValue == 8 && weightValue == 7 && heightValue == 4) {
                document.getElementById('SumatranTigerImage').style.display = 'block';
                document.getElementById('SumatranTigerLabel').style.display = 'block';
            } else if (sizeValue == 6 && weightValue == 8 && heightValue == 3) {
                document.getElementById('BluefinTunaImage').style.display = 'block';
                document.getElementById('BluefinTunaLabel').style.display = 'block';
            } else if (sizeValue == 5 && weightValue == 4 && heightValue == 4) {
                document.getElementById('BorneanOrangutanImage').style.display = 'block';
                document.getElementById('BorneanOrangutanLabel').style.display = 'block';
            } else if (sizeValue == 7 && weightValue == 5 && heightValue == 3) {
                document.getElementById('SnowLeopardImage').style.display = 'block';
                document.getElementById('SnowLeopardLabel').style.display = 'block';
            } else if (sizeValue == 3 && weightValue == 2 && heightValue == 3) {
                document.getElementById('BaldEagleImage').style.display = 'block';
                document.getElementById('BaldEagleLabel').style.display = 'block';
            } else if (sizeValue == 6 && weightValue == 5 && heightValue == 3) {
                document.getElementById('AmurLeopardImage').style.display = 'block';
                document.getElementById('AmurLeopardLabel').style.display = 'block';
            } else if (sizeValue == 10 && weightValue == 10 && heightValue == 10) {
                document.getElementById('BlueWhaleImage').style.display = 'block';
                document.getElementById('BlueWhaleLabel').style.display = 'block';
            } else if (sizeValue == 8 && weightValue == 9 && heightValue == 4) {
                document.getElementById('GreatWhiteSharkImage').style.display = 'block';
                document.getElementById('GreatWhiteSharkLabel').style.display = 'block';
            } else if (sizeValue == 2 && weightValue == 1 && heightValue == 3) {
                document.getElementById('DodoImage').style.display = 'block';
                document.getElementById('DodoLabel').style.display = 'block';
            } else if (sizeValue == 8 && weightValue == 9 && heightValue == 7) {
                document.getElementById('WoollyMammothImage').style.display = 'block';
                document.getElementById('WoollyMammothLabel').style.display = 'block';
            } else if (sizeValue == 7 && weightValue == 8 && heightValue == 4) {
                document.getElementById('SabertoothTigerImage').style.display = 'block';
                document.getElementById('SabertoothTigerLabel').style.display = 'block';
            } else if (sizeValue == 4 && weightValue == 3 && heightValue == 4) {
                document.getElementById('QuaggaImage').style.display = 'block';
                document.getElementById('QuaggaLabel').style.display = 'block';
            } else if (sizeValue == 9 && weightValue == 10 && heightValue == 7) {
                document.getElementById('MegalodonImage').style.display = 'block';
                document.getElementById('MegalodonLabel').style.display = 'block';
            } else if (sizeValue == 6 && weightValue == 5 && heightValue == 4) {
                document.getElementById('TasmanianTigerImage').style.display = 'block';
                document.getElementById('TasmanianTigerLabel').style.display = 'block';
            } else if (sizeValue == 8 && weightValue == 7 && heightValue == 7) {
                document.getElementById('StegosaurusImage').style.display = 'block';
                document.getElementById('StegosaurusLabel').style.display = 'block';
            } else if (sizeValue == 9 && weightValue == 8 && heightValue == 8) {
                document.getElementById('TriceratopsImage').style.display = 'block';
                document.getElementById('TriceratopsLabel').style.display = 'block';
            } else if (sizeValue == 5 && weightValue == 4 && heightValue == 6) {
                document.getElementById('PterodactylImage').style.display = 'block';
                document.getElementById('PterodactylLabel').style.display = 'block';
            } else if (sizeValue == 4 && weightValue == 3 && heightValue == 6) {
                document.getElementById('VelociraptorImage').style.display = 'block';
                document.getElementById('VelociraptorLabel').style.display = 'block';
            } else if (sizeValue == 9 && weightValue == 8 && heightValue == 10) {
                document.getElementById('QuetzalcoatlusImage').style.display = 'block';
                document.getElementById('QuetzalcoatlusLabel').style.display = 'block';
            } else if (sizeValue == 7 && weightValue == 6 && heightValue == 5) {
                document.getElementById('MegalaniaImage').style.display = 'block';
                document.getElementById('MegalaniaLabel').style.display = 'block';
            } else if (sizeValue == 8 && weightValue == 7 && heightValue == 6) {
                document.getElementById('AnkylosaurusImage').style.display = 'block';
                document.getElementById('AnkylosaurusLabel').style.display = 'block';
            } else if (sizeValue == 3 && weightValue == 2 && heightValue == 2) {
                document.getElementById('ArchaeopteryxImage').style.display = 'block';
                document.getElementById('ArchaeopteryxLabel').style.display = 'block';
            } else if (sizeValue == 8 && weightValue == 6 && heightValue == 5) {
                document.getElementById('PlesiosaurusImage').style.display = 'block';
                document.getElementById('PlesiosaurusLabel').style.display = 'block';
            } else if (sizeValue == 8 && weightValue == 9 && heightValue == 5) {
                document.getElementById('TitanoboaImage').style.display = 'block';
                document.getElementById('TitanoboaLabel').style.display = 'block';
            } else if (sizeValue == 7 && weightValue == 8 && heightValue == 6) {
                document.getElementById('IchthyosaurusImage').style.display = 'block';
                document.getElementById('IchthyosaurusLabel').style.display = 'block';
            } else if (sizeValue == 1 && weightValue == 2 && heightValue == 1) {
                document.getElementById('TrilobiteImage').style.display = 'block';
                document.getElementById('TrilobiteLabel').style.display = 'block';
            } else if (sizeValue == 8 && weightValue == 9 && heightValue == 8) {
                document.getElementById('DunkleosteusImage').style.display = 'block';
                document.getElementById('DunkleosteusLabel').style.display = 'block';
            }

            // Update the displayed slider values
            document.getElementById('animalSize').innerHTML = sizeValue;
            document.getElementById('animalWeight').innerHTML = weightValue;
            document.getElementById('animalHeight').innerHTML = heightValue;
        }

        function updateSliderTrackColor(slider) {
            const percentage = (slider.value - slider.min) / (slider.max - slider.min) * 100;
            const trackStyle = `linear-gradient(to right, white ${percentage}%, #111 ${percentage}%)`;
            slider.style.background = trackStyle;
        }

        // Hide all labels initially
        hideAllLabels();
    </script>

</body>
</html>
