<?php
 require"init.php";
 
  $Email=$_POST['Email'];
  $password1=$_POST['Password'];
  $Password=md5($password1);
 $sql = "select * from register where Email like '".$Email."';";
 
 $result = mysqli_query($con,$sql);

if (mysqli_num_rows($result)>0) {
	$json=array();
 	// $code="login_true";
 	// $row=mysqli_fetch_array($result);
 	// $name=$row[0];
 	// $message="Login Success ";
 	// array_push($response,array("code"=>$code,"message"=>$message));
 	$json['success'] = 1;
 	header('Content-Type: application/json');
	echo json_encode($json);
 } elseif (mysqli_num_rows($result)<1) {
 	$json=array();
	// $response=array();
 // 	$code="login_false";
 // 	$row=mysqli_fetch_array($result);
 // 	$name=$row[0];
 // 	$message="Login Failed ";
 // 	array_push($response,array("code"=>$code,"message"=>$message));
 	$json['success'] = 0;
 	header('Content-Type: application/json');
	echo json_encode($json);
 }

mysqli_close($con);
?>

