<?
$user = $_GET['username'];
include("template.php");
?>

The above runs at 1500 requests per second.

tempalte.php is:

<html>
<body>
<? echo("Hello ".$user); ?>
</body>
</html>