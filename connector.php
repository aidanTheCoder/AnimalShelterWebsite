<?php
echo '<html><head>';
echo '<style>
		#lost_and_found {
			color: black;
			vertical-align: center;
			font-size: 48px;
			float: right;
			padding-top: 2%;
			padding-right: 50%;
		}
		
		#missing {
			background-color: FireBrick;
			color: white;
			width: 100%;
			heigth: ;
			font-size: 42px;
			font-family: Times, Times New Roman, serif;
		}
		
		#missing_animal_page {
			color: white;
		}
		
		td {
			text-align: center;
			padding: 10px;
			margin:
				margin-left: 2%;
				margin-right: 2%;
			border-style: solid;
		}
		
		th {
			text-align: center;
			border-style: solid;
			font-size: 16px;
		}
		
		table {
			width: 100%;
			table-layout: fixed;
		
			background-color: rgb(160, 160, 190);
			border-color: white;	
			align: center;
			margin:
				margin-bottom: 2%;
				margin-left: auto;
				margin-right: 10%;

		}
		
		tr {
			text-align: center;
		}
	</style>';
echo '</head><body>';
echo '<h1 style = "background-image: url(
		https://upload.wikimedia.org/wikipedia/commons/1/1a/Prescott_-_Granite_Dells_%285171290158%29_%28cropped%29.jpg);">'
echo '<img src = "prescott.gif">><span id = "lost_and_found">Lost and Found</span>';
echo '</h1>';
echo '<button id = "missing"><a href="lost_and_found.html" 
		id = "missing_animal_page">Search for Another Animal</a></button>';
echo '<hr>';

$sql = "SELECT * FROM animal 
	JOIN animal_information.animal_id = animal.animal_id";	
$where = 'WHERE';

if($_GET['animalType']) {
	$sql += $where + 'animal_type = ' + $_GET['animalType'];
	$where = ' AND';
}
if($_GET['animalType']) {
	$sql += $where + 'animal_type = ' + $_GET['animalType'];
	$where = ' AND';
}
if($_GET['breed']) {
	$sql += $where + 'breed = ' + $_GET['breed'];
	$where = ' AND';
}
if($_GET['neutered']) {
	$sql += $where + 'fixed = ' + $_GET['neuetered'];
	$where = ' AND';
}
if($_GET['age']) {
	$sql += $where + 'animal_age = ' + $_GET['age'];
	$where = ' AND';
}
if($_GET['color']) {
	$sql += $where + 'color = ' + $_GET['color'];
	$where = ' AND';
}
if($_GET['size']) {
	$sql += $where + 'size = ' + $_GET['size'];
	$where = ' AND';
}
if($_GET['gender']) {
	$sql += $where + 'sex = ' + $_GET['gender'];
	$where = ' AND';
}
if($_GET['adopt']) {
	$sql += $where + 'adoptable_status = ' + $_GET['adopt'];
	$where = ' AND';
}

if (!($result = $conn->query($sql))) {
    echo "<p>We're experiencing difficulties at this time<br/>
			please try again<br/></p>";
}

echo '<table>';
echo '<tr>';
echo '<th>Picture</th>';
echo '<th>Animal Type</th>';
echo '<th>Breed</th>';
echo '<th>Fixed</th>';
echo '<th>Age</th>';
echo '<th>Color</th>';
echo '<th>Size</th>';
echo '<th>Sex</th>';
echo '<th>Adoptable</th>';
echo '</tr>';
echo "<tr>";

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
		echo "<td><img src = " . $_GET["animal_picture"]
			. " width = 100% heigth = auto></td>";
		echo "<td>" . $row["animal_id"] . "</td>";
        echo "<td>" . $row["animal_type"] . "</td>";
		echo "<td>" . $row["breed"] . "</td>";
		echo "<td>" . $row["fixed"] . "</td>";
		echo "<td>" . $row["animal_age"] . "</td>";
		echo "<td>" . $row["color"] . "</td>";
		echo "<td>" . $row["size"] . "</td>";
		echo "<td>" . $row["sex"] . "</td>";
		echo "<td>" . $row["adoptable_status"] . "</td>";
    }
} else {
    echo "<td>0 results</td>";
}

echo "</tr>";
echo '</table>';
echo '</body></html>';
?>