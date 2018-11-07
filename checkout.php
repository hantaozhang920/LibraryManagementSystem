<?php
	session_start();
	
	$con = mysqli_connect('localhost', 'root', 'root','final');
	
	//order
	
	$user_name=$_SESSION["username"];
	
	 
	 

	
	if($user_name!=""){
	//	$items=$_GET["items"];
	    $items=$_GET["items"];
		$name=$_GET["name"];
	
    //echo $items;

      //new id
		$query1 = "SELECT max(order_id) as maxid FROM final.orders";
		
		$result = mysqli_query($con,$query1);
		
		$row = mysqli_fetch_assoc($result);
		
		$new_id =$row["maxid"]+1;
		
	  //time
		$time=date("Y-m-d H:i:s"); 

		$time_in=" ";
	
		$item_arr = explode("~~", $items);

		$name_arr = explode("~~", $name);
	
		for($i=0;$i<count($item_arr)-1;$i++){

			$q1 = "SELECT price as p FROM final.items WHERE item_id= '$item_arr[$i]' ";
			$r1 = mysqli_query($con,$q1);
			$row = mysqli_fetch_assoc($r1);
			$number = $row["p"];

			if($number>0){
				$query2 = "INSERT INTO final.orders VALUES ('$new_id','$user_name','$item_arr[$i]','$name_arr[$i]','$time','$time_in')";//number and date
		
				mysqli_query($con,$query2);
				//	$query = "UPDATE final.items SET price = '0' WHERE item_id='$id'";

				$query3 = "UPDATE  final.items SET price = price -1 WHERE item_id= '$item_arr[$i]' ";//number and date
		
				mysqli_query($con,$query3);
			}

			else{}
		}
		echo " ";
	}else{
		echo "You didn't log in!";
	} 
	
	
	
	
	
?>