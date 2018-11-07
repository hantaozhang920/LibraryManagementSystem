<?php
	session_start();
	
	$con = mysqli_connect('localhost', 'root', 'root','final');
	
	//order
	
	$user_name=$_SESSION["username"];
	
	 
	//$query = "SELECT item_name,pic_link,price,category FROM final.items,final.orders,final.users WHERE users.user_id=";
	//$query ="SELECT Users.user_name AS un,order_id,Orders.item_name,date FROM Users,Orders,Items WHERE users.user_name=orders.user_name AND orders.item_id=items.item_id AND users.user_name='$user_name' Order by order_id";
	$query ="SELECT Users.user_name AS un,order_id,Orders.item_name,date,datein FROM Users,Orders,Items WHERE users.user_name=orders.user_name AND orders.item_id=items.item_id AND users.user_name='$user_name' Order by order_id";
	
	$result = mysqli_query($con,$query);
	
	$rnr = $result->num_rows;
	
	$id_now=0;
	if($rnr > 0){
		echo "<table style=\"width:100%\">";
		echo "<tr><th>&nbsp;&nbsp;&nbsp;Order Id</th><th>Date Check Out</th><th>Date Return</th><th>Books</th><tr>";
		while($row = mysqli_fetch_assoc($result)) {
			if($row["order_id"]!=$id_now){
				echo "<tr><td>&nbsp;&nbsp;&nbsp;";
				echo $row["order_id"];
				echo "</td><td>";
				echo $row["date"];
				echo "</td><td>";
				echo $row["datein"];
				echo "</td><td>";
				echo $row["item_name"];
				echo "</td></tr>";
				$id_now=$row["order_id"];
			}else{
				echo "<tr><td></td><td></td><td>";
				echo $row["datein"];
				echo "</td><td>";
				echo $row["item_name"];
				echo "</td></tr>";
			}
			
		}
		echo "</table>";
	}
	
?>