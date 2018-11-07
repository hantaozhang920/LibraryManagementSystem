<?php
	$con = mysqli_connect('localhost', 'root', 'root','final');
	$bookname=$_GET["bookname"];
	$username=$_GET["username"];
	$orderID=$_GET["orderID"];


    $timein=date("Y-m-d H:i:s"); 

   
    $query = "UPDATE final.orders SET  datein='$timein'  WHERE user_name='$username' and order_id='$orderID' and item_name='$bookname' ";
    $result = mysqli_query($con,$query);


    $query2="UPDATE final.items SET price = price + 1 WHERE item_name= '$bookname'";
    $resultnew = mysqli_query($con,$query2);



    //////////////////////////////
	$page = $_GET["page"];
	
    $query3 = "SELECT item_id,item_name,pic_link,price,category FROM final.items";
	
	$result2 = mysqli_query ($con,$query3);
	
	$count = 0;
	
	$rnr = $result2->num_rows;
	
	if($rnr > 0){
		while($row2 = mysqli_fetch_assoc($result2)) {
			if($count>=($page-1)*8&&$count<$page*8){
			//if($count>=0&&$count<7){
				echo "<div class=\"col-sm-3\">";
				if($row["category"]=="Literature"){
					echo "<div class=\"panel panel-info\">";
				}else if($row["category"]=="Science"){
					echo "<div class=\"panel panel-success\">";
				}else{
					echo "<div class=\"panel panel-danger\">";
				}
				echo "<div class=\"panel-heading\">".$row2["item_name"]."</div>";
				echo "<div class=\"panel-body\">"."<img src=\"".$row2["pic_link"]."\" class=\"img-responsive\" style=\"width:100%;height:180px\" alt=\"Image\"></div>";
				echo "<div class=\"panel-footer\">".$row2["price"]."<button class=\"btn btn-default\" data-toggle=\"modal\" data-target=\"#editModal\" onclick=\"javascript:openEdit('".$row2["item_id"]."')\" style=\"position: absolute;bottom:25px;right:100px\">Edit</button><button class=\"btn btn-default\"style=\"position: absolute;bottom:25px;right:20px\" data-toggle=\"modal\" data-target=\"#deleteModal\" onclick=\"javascript:openDelete('".$row2["item_id"]."')\">Delete</button></div>";
				
				echo "</div>";
				echo "</div>";
				//echo "<tr><th>". $row["item_id"]. "</th><th>" . $row["item_name"]. "</th><th>" . $row["pic_link"]. "</th><th>" . $row["price"]. "</th><th>" . $row["category"]. "</th></tr>" ;
			}
			$count++;
		}
	}
	
	//buttons
	$pageNum=$result2->num_rows/8;
	//page and num_rows
	if($result2->num_rows>8){
		$pageNum=$result2->num_rows/8;
		if($page==1)echo "<button class=\"btn btn-primary\" type=\"button\" onclick=\"NextPage()\" style=\"position: relative;left:46.5%\">Next Page</button>";
		else if($page>1&&$page<$pageNum){
			echo "<button class=\"btn btn-primary\" type=\"button\" onclick=\"LastPage()\" style=\"position: relative;left:42.5%\">Last Page</button>";
			echo "<button class=\"btn btn-primary\" type=\"button\" onclick=\"NextPage()\" style=\"position: relative;left:44.5%\">Next Page</button>";
		}else if($page>=$pageNum){
			$num_in_page=$rnr-8*$page+8;
			if($num_in_page<=4){
				 
				echo "<button class=\"btn btn-primary\" type=\"button\" onclick=\"LastPage()\" style=\"position: absolute;left:46.5%;bottom:-8%;\">Last Page</button>";
				echo "<p style=\"position: absolute;left:46.5%;bottom:-12%;\">&nbsp;&nbsp;&nbsp;</p>";
			}else if($num_in_page>4){
				 
				echo "<button class=\"btn btn-primary\" type=\"button\" onclick=\"LastPage()\" style=\"position: absolute;left:46.5%;bottom:-3%\">Last Page</button>";
				 echo "<p style=\"position: absolute;left:46.5%;bottom:-7%;\">&nbsp;&nbsp;&nbsp;</p>";
			}
			
		}
		
	}
	
	echo "<p></p>";

?>