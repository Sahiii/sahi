<?php

$db_name="Bloodbank";
$username="root";
$pass="";
$server_name="localhost";

$con=mysqli_connect($server_name,$username,$pass,$db_name);

if(!$con)
{
echo "Not connected" .mysqli_connect_error();
}
   
   ?>