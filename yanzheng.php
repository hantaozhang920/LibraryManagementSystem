<?php  
session_start();

if($_GET['Name']){
	$Name = $_GET['Name'];
	$con=mysqli_connect("localhost","root","root","final");
	$query1 = "SELECT * FROM Users WHERE user_name = '$Name';";
	$result1 = mysqli_query($con,$query1);
	if($result1->num_rows > 0){
		echo '1';
	}
	else{
		echo '0';
	}
	mysqli_close($con);
	exit();
}

// if($_GET['Email']){
// 	$Email = $_GET['Email'];
// 	$con=mysqli_connect("localhost","root","root","final");
// 	$query2 = "SELECT * FROM Users WHERE email = '$Email';";
// 	$result2 = mysqli_query($con,$query2);
// 	if($result2->num_rows > 0){
// 		echo '1';
// 	}
// 	else{
// 		echo '0';
// 	}
// 	mysqli_close($con);
// 	exit();
//}


//$Name = $_GET['Name']; 
//$Email = $_GET['Email'];

//$con=mysqli_connect("localhost","root","root","PW5");
//$query1 = "SELECT * FROM Account WHERE username = '$Name';";
//$query2 = "SELECT * FROM Account WHERE email = '$Email';";

//$result1 = mysqli_query($con,$query1);
//$result2 = mysqli_query($con,$query2);

//if($result1->num_rows > 0){
	//echo '1';
//}
//else{
	//echo '0';
//}

//if($result2->num_rows > 0){
	//echo '1';
//}
//else{
	//echo '0';
//}


//mysqli_close($con);
//exit();

?>