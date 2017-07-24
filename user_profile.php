<?php

require"init.php";
$email=$_GET['Email'];

$json=[];

$sql="select * from register where Email like '".$email."'";

$result=$con->query($sql);
if($result->num_rows>0)
{

while($row =$result->fetch_assoc())
{
	$json[]=$row;
}
	
}	
$con->close();

	header('Content-Type: application/json');
	echo json_encode($json);

?>