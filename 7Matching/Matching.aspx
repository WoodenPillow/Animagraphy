<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Matching.aspx.cs" Inherits="WAPP_Assignment.Matching" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personality Match of Some Common Household Pets</title>
    <link rel="stylesheet" href="matching.css" />
</head>
<body>
    <div class="wrapper">
        <form id="form1" runat="server">
            <h1>Personality Match of Some Common Househohld Pets</h1>
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
            <div id="almondMothLabel" class="image-label">Almond Moth</div>

            <!-- Dampwood Termite -->
            <img id="dampwoodTermiteImage" src="Images/DampwoodTermite.jpg" alt="Dampwood Termite" style="display: none;" />
            <div id="dampwoodTermiteLabel" class="image-label">Dampwood Termite</div>

            <!-- Field Mice -->
            <img id="fieldMiceImage" src="Images/FieldMice.jpg" style="display: none;" alt="Field Mice" />
            <div id="fieldMiceLabel" class="image-label">Field Mice</div>

            <!-- Fire Ant -->
            <img id="fireAntImage" src="Images/FireAnt.jpg" style="display: none;" alt="Fire Ant" />
            <div id="fireAntLabel" class="image-label">Fire Ant</div>

            <!-- Fruit Flies -->
            <img id="fruitFliesImage" src="Images/FruitFlies.jpg" style="display: none;" alt="Fruit Flies" />
            <div id="fruitFliesLabel" class="image-label">Fruit Flies</div>

            <!-- House Centipedes -->
            <img id="houseCentipedesImage" src="Images/HouseCentipedes.jpg" style="display: none;" alt="House Centipedes" />
            <div id="houseCentipedesLabel" class="image-label">House Centipedes</div>

            <!-- Indianmeal Moth -->
            <img id="indianmealMothImage" src="Images/IndianmealMoth.jpg" style="display: none;" alt="Indianmeal Moth" />
            <div id="indianmealMothLabel" class="image-label">Indianmeal Moth</div>

            <!-- Maize Weevil -->
            <img id="maizeWeevilImage" src="Images/MaizeWeevil.jpg" style="display: none;" alt="Maize Weevil" />
            <div id="maizeWeevilLabel" class="image-label">Maize Weevil</div>

            <!-- Silverfish -->
            <img id="silverfishImage" src="Images/Silverfish.jpg" style="display: none;" alt="Silverfish" />
            <div id="silverfishLabel" class="image-label">Silverfish</div>

            <!-- Wood Rats -->
            <img id="woodRatsImage" src="Images/WoodRats.jpg" style="display: none;" alt="Wood Rats" />
            <div id="woodRatsLabel" class="image-label">Wood Rats</div>
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
