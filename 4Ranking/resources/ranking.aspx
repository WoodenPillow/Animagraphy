<%@ Page Language="C#" AutoEventWireup="true"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../resources/css/main.css">
    <link rel="stylesheet" media="screen and ((max-width: 700px) or (pointer:coarse))" href="../resources/css/main-mobile.css">
    <link rel="stylesheet" href="../resources/css/leaderboard.css">
	<script src="../resources/js/main.js" defer></script>
	<title>Animagrahpy's Leaderboard</title>
</head>

<body>

    <header>
		<a id="titre" href="../">Animagrahpy's Leaderboard</a>
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
                        <li><a href="./onlne">Online Hours</a></li>
                        <li><a href="./learning">Learning Hours</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>

    <h1>Member's Leaderboard</h1>

	<table class="demonlist">
		<tr>
			<th style="width: 10%;">Rank</th>
			<th style="width: 30%;">Name</th>
			<th style="width: 30%;">Points</th>
			<th style="width: 30%;">Learning Hours</th>
		</tr>
		<tr>
			<td id="first">1</td>
			<td>BoodBdog</td>
			<td>1487.09</td>
			<td>1704</td>
		</tr>
		<tr>
			<td id="second">2</td>
			<td>Litoks</td>
			<td>1313.29</td>
			<td>1598</td>
		</tr>
		<tr>
			<td id="third">3</td>
			<td>nei</td>
			<td>1187.59</td>
			<td>1576</td>
		</tr>
		<tr>
			<td class="top">4</td>
			<td>GDonut</td>
			<td>956.66</td>
			<td>1493</td>
		</tr>
		<tr>
			<td class="top">5</td>
			<td>draxitiii</td>
			<td>902.43</td>
			<td>1476</td>
		</tr>
		<tr>
			<td class="top">6</td>
			<td>OktagonF</td>
			<td>745.77</td>
			<td>1402</td>
		</tr>
		<tr>
			<td class="top">7</td>
			<td>Thund3rTr0uble</td>
			<td>742.56</td>
			<td>1397</td>
		</tr>
		<tr>
			<td class="top">8</td>
			<td>lDoli</td>
			<td>658.53</td>
			<td>1376</td>
		</tr>
		<tr>
			<td class="top">9</td>
			<td>rosesc</td>
			<td>596.19</td>
			<td>1201</td>
		</tr>
		<tr>
			<td class="top">10</td>
			<td>TunDHra</td>
			<td>495.32</td>
			<td>905</td>
		</tr>
		<tr>
			<td>11</td>
			<td>zcob</td>
			<td>428.29</td>
			<td>842</td>
		</tr>
		<tr>
			<td>12</td>
			<td>MrSpaghetti</td>
			<td>419.46</td>
			<td>832</td>
		</tr>
		<tr>
			<td>13</td>
			<td>Pouche</td>
			<td>323.79</td>
			<td>661</td>
		</tr>
		<tr>
			<td>14</td>
			<td>blackmg</td>
			<td>272.31</td>
			<td>524</td>
		</tr>
		<tr>
			<td>15</td>
			<td>YoshiL</td>
			<td>245.98</td>
			<td>513</td>
		</tr>
		<tr>
			<td>16</td>
			<td>Twister21</td>
			<td>227.35</td>
			<td>487</td>
		</tr>
		<tr>
			<td>17</td>
			<td>Tizetre</td>
			<td>199.33</td>
			<td>430</td>
		</tr>
		<tr>
			<td>18</td>
			<td>Noxop</td>
			<td>191.75</td>
			<td>421</td>
		</tr>
		<tr>
			<td>19</td>
			<td>MasterBlockk</td>
			<td>167.43</td>
			<td>416</td>
		</tr>
		<tr>
			<td>20</td>
			<td>CrokyWi</td>
			<td>154.65</td>
			<td>403</td>
		</tr>
		<tr>
			<td>21</td>
			<td>Exyl77</td>
			<td>136.47</td>
			<td>388</td>
		</tr>
		<tr>
			<td>22</td>
			<td>shaggy712</td>
			<td>135.24</td>
			<td>371</td>
		</tr>
		<tr>
			<td>23</td>
			<td>ALiveWizard</td>
			<td>127.56</td>
			<td>359</td>
		</tr>
		<tr>
			<td>24</td>
			<td>VrohlaiX</td>
			<td>105.22</td>
			<td>325</td>
		</tr>
		<tr>
			<td>25</td>
			<td>jibzou</td>
			<td>102.10</td>
			<td>328</td>
		</tr>
		<tr>
			<td>26</td>
			<td>IGabsI</td>
			<td>99.47</td>
			<td>305</td>
		</tr>
		<tr>
			<td>27</td>
			<td>IRealI</td>
			<td>87.26</td>
			<td>284</td>
		</tr>
		<tr>
			<td>28</td>
			<td>coubitic</td>
			<td>78.60</td>
			<td>213</td>
		</tr>
		<tr>
			<td>29</td>
			<td>FigTheCat</td>
			<td>78.50</td>
			<td>198</td>
		</tr>
		<tr>
			<td>30</td>
			<td>Hikudo</td>
			<td>72.10</td>
			<td>170</td>
		</tr>

	</table>

    <footer>
		<p id="credits">
			Copyright 2024 Animagraphy | Group 19 Animagraphy
		</p>
    </footer>

</body>

</html>
