<?php
$mysql_config = parse_ini_file('mysql.ini');

$hostname=$mysql_config['host'];;
$user = $mysql_config['username'];;
$password = $mysql_config['password'];;
$database = $mysql_config['database'];;
$table = "todo_list";
?>
<html>
<head>
	<title>B2B</title>
</head>
<body>
	<?php echo "la page en PHP" ?>
</body>
</html>