<?php

require"init.php";

$json=[];

$sql="select * from blood_info";

$result=$con->query($sql);
if($result->num_rows>0)
{

while($row =$result->fetch_assoc())
{
	$json[]=$row;
}
	
}	
$con->close();

//if(mysqli_query($con,$sql)
	
//{
	header('Content-Type: application/json');
	echo json_encode($json);
//}

?>