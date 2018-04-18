<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="js/jquery.collapsibleCheckboxTree.js"></script>
		<script type="text/javascript" src="js/sorttable.js"></script>
		<script type="text/javascript" src="js/tablesorter/jquery.tablesorter.js"></script> 
		<link rel="stylesheet" href="css/jquery.collapsibleCheckboxTree.css" type="text/css" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript">
			jQuery(document).ready(function(){
				$('ul#example').collapsibleCheckboxTree({
					checkParents : false,
					checkChildren : false, 
					shiftClickEffectChildren : false,
					uncheckChildren : true,
					includeButtons : true,
					initialState : 'expand',
				});
			});
			$(document).ready(function() 
			{ 
				$("table").tablesorter(); 
			}); 
		</script>
		<title>LMOD lookup</title>
	</head>
    <body>
		<form action="" method="post">
			<div style="font-size:0;">
				<div style="width:30%;display:inline-table; font-size:15px">
					<button type="submit" style="width: 92%;"><i class="fa fa-search"></i> Query Database</button><br><br>
					<input type="text" placeholder="Search..." style="width:90%;" name="search" value="<?php echo $_POST['search'];?>">
					<?php	
						//DB CONNECTION
						//$servername = "localhost";
						//$username = "root";
						//$password = "1";
						//$dbname = "lua";
						$conn = new mysqli("localhost", "root", "1", "lua");
						if ($conn->connect_error) {
							die("Connection failed: " . $conn->connect_error);
						}
						//SELECT CATEGORIES
						echo "<h2>Categories:</h2>";
						echo "<select name='cats' id='cats' value='analysis' style='width:92%;'>";
						$sql = "SELECT DISTINCT category FROM software ORDER BY category ASC;";
						$result = $conn->query($sql);
						if ($result->num_rows > 0) {
							while($row = $result->fetch_assoc()) {
								if ($row['category'] == $_POST['cats']){
									echo "<option style='width:92%;' selected='selected'>".$row['category']."</option>";
								}else{
									echo "<option style='width:92%;'>".$row['category']."</option>";
								}
							}
						}
						echo "</select><br>";
						echo "<h2>Compilers:</h2>";
						echo "<ul id='example'>";
						$sql = "SELECT DISTINCT compilerbase FROM software ORDER BY compilerbase ASC;";
						$result = $conn->query($sql);
						if ($result->num_rows > 0) {
							while($row = $result->fetch_assoc()) {
								echo "<li>";
								echo $row["compilerbase"];
								echo "<ul>";
								$sql_subquery = "SELECT DISTINCT compilerversion FROM software WHERE compilerbase = '".$row["compilerbase"]."' ORDER BY compilerversion ASC;";
								$result_subquery = $conn->query($sql_subquery);
								if ($result_subquery->num_rows > 0) {		
									while($row_subquery = $result_subquery->fetch_assoc()) {
										echo "<li>";
										$namer = str_replace(".","_",$row["compilerbase"]."-".$row_subquery["compilerversion"]);
										if (empty($_POST)){
											echo "<input type='checkbox' checked='checked' name='".$namer."' />";
										}else{	
											if ($_POST[$namer] == "on"){
												echo "<input type='checkbox' checked='checked' name='".$namer."' />";
											}else{
												echo "<input type='checkbox' name='".$namer."' />";
											}
										}
										echo $row_subquery["compilerversion"];
										echo "</li>";
									}
								}
								echo "</ul>";
								echo "</li>";
							}
						}
						echo "</ul>";
					?>
				</div>
				<div style="width:70%;display:inline-table;white-space: wrap;font-size:15px">
					<table class="tablesorter" style="width:100%;" border="1">
						<thead>
							<tr>
								<th style="width:13%;">Name</th>
								<th style="width:13%;">Version</th>
								<th style="width:13%;">Compiler</th>
								<th style="width:13%;">Category</th>
								<th style="width:13%;">Description</th>
								<th style="width:13%;">URL</th>
								<th style="width:13%;">Doc</th>
							</tr>
						</thead>
						<tbody>
							<?php 
								//print_r($_POST);
								$built_query = 'SELECT id,name,version,compiler,category,description,url,notes FROM software WHERE ';
								$compiler_query = '(';
								$hold_over = '';
								foreach ($_POST as $key => $value) {
									if($key == "search"){
										if("" != trim($_POST[$key])){
											$value = strtolower($value);
											$built_query .= ' LOWER(name) LIKE "%'.$value.'%" AND ';
										};  
									}elseif ($key == "cats"){
										if("" != trim($_POST[$key])){
											$built_query .= ' category="'.$value.'" AND ';
										};
									}else{
										if("" != trim($_POST[$key])){
											$compiler_query .= 'compiler="'.$key.'" OR ';
										};
										$hold_over = $key;
									};	
								}
								$compiler_query .= ' compiler="'.$hold_over.'")';
								$built_query .= $compiler_query.' ORDER BY name,version,compiler ASC;';
								//echo "<br><br>".$built_query."<br><br>";			
							
								$conn = new mysqli("localhost", "root", "1", "lua");
								if ($conn->connect_error) {
									die("Connection failed: " . $conn->connect_error);
								}
								//SELECT CATEGORIES
								if (empty($_POST)){
									$sql = "SELECT id,name,version,compiler,category,description,url,notes FROM software ORDER BY name,version,compiler ASC;"; 
								}else{
									$sql = $built_query;
								}
								$result = $conn->query($sql);
								if ($result->num_rows > 0){
									while($row = $result->fetch_assoc()) {
										$notes = $row['notes'];
										$link = "<script>window.open('http://localhost/notes.php?&notes=$notes&hideparams=1', 'width=710,height=555,left=160,top=170')</script>";
										echo "<tr>";
											echo "<td style='width:13%;' align='center'>".$row['name']."</td>";
											echo "<td style='width:13%;' align='center'>".$row['version']."</td>";
											echo "<td style='width:13%;' align='center'>".$row['compiler']."</td>";
											echo "<td style='width:13%;' align='center'>".$row['category']."</td>";
											echo "<td style='width:13%;' align='center'>".$row['description']."</td>";
											if("" != trim($row['url'])){
												echo "<td style='width:13%;' align='center'><a href='".$row['url']."' target='_blank'>URL</a></td>";
											}else{
													echo "<td style='width:13%;' align='center'>NO URL</td>";
											}
											echo "<td style='width:13%;' align='center'><a href='' onclick='javascript:window.open(\"lua.php?id=".$row['id']."\", \"_blank\", \"location=yes,height=570,width=750,scrollbars=yes,status=yes\");'>URL</a></td>";
										echo "</tr>";								
									}
								}					
							?>		
						</tbody>
					</table>
				</div>
			</div>				
		</form>
	</body>
</html>
