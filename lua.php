<?php
	$conn = new mysqli("localhost", "root", "1", "lua");
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	$sql = "SELECT name,version,compiler,notes FROM software WHERE id='".$_GET['id']."';";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			echo "<title>".$row['name']."-v".$row['version']."-c:".$row['compiler']."</title>";
			echo "<h1>".$row['name']."</h1>";
			echo "<h2>version: ".$row['version']."</h2>";
			echo "<h2>compiler: ".$row['compiler']."</h1><br>";
			echo nl2br(str_replace("_", "\n", $row['notes']));
		}
	}
?>
