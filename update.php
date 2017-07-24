<?php
 require"init.php";
 $json = array();
 $Email = $_POST['Email'];
 $password1=$_POST['Password'];
 $Password=md5($password1);
 $created_date= $_POST['created_date'];
 $Phone=$_POST['Phone'];
 $Address=$_POST['Address'];
 $Gender=$_POST['Gender'];
 $Username=$_POST['Username'];
 $Flag=$_POST['Flag'];

  echo $imgFile = $_FILES['Image']['name'];
  $tmp_dir = $_FILES['Image']['tmp_name'];

 //   // upload directory
    $upload_dir = dirname(__FILE__).'/Image/';
  

      $imgExt = strtolower(pathinfo($imgFile,PATHINFO_EXTENSION)); // get image extension

 //   // valid image extensions
    $valid_extensions = array('jpeg', 'jpg', 'png', 'gif'); // valid extensions
  
 //   // rename uploading image
     $Image = rand(1000,1000000).".".$imgExt;

  
 //   // allow valid image file formats
    if(in_array($imgExt, $valid_extensions)){   
         {
     move_uploaded_file($tmp_dir,$upload_dir.$Image);
     
     }
   
   }
   // $sql_query="INSERT INTO `information`(`Username`,`Email`, `Password`, `Phone`, `Address`, `Longitude`, `Latitude`, `type`,`State`,`created_date`) VALUES ('$Email','$Password','$Confirm_pass','$Image','$Phone','$Address','$Longitude','$Latitude','$type','$State',CURRENT_TIMESTAMP) ON DUPLICATE KEY UPDATE Longitude = '".$Longitude."', Latitude='".$Latitude."', State='".$State."';";
   // // upload directory
  // $upload_dir ='/Image/$Image.jpg';

   // $sql_query="INSERT INTO `register`(`Username`, `Email`, `Password`, `Phone`, `Address`, `Gender`, `Image`, `Flag`, `created_date`) VALUES ('$Username','$Email','$Password','$Phone','$Address','$Gender','$Image','$Flag',CURRENT_TIMESTAMP);";
   $sql_query="UPDATE register set Username='".$Username."', Phone='".$Phone."',Gender='".$Gender."' where Email='".$Email."';";
  $result = mysqli_query($con,$sql_query);

if($result == 1){
 // file_put_contents($upload_dir,base64_decode($picture));
	$json['success'] = 1;
   $json['flname'] = $imgFile;
}
else{
	$json['success'] = 0;
}
   
$con->close();

print_r($json);
header('Content-Type: application/json');
echo json_encode($json);

?>


