<?php
include "config.php";
$post_id = $_GET['id'];
$catid = $_GET['catid'];

$sql1 ="SELECT * FROM post WHERE post_id = {$post_id}";
$result = mysqli_query($conn,$sql1) or die("Query failed : Selected");
$row = mysqli_fetch_assoc($result);

// echo"<pre>";
// print_r($row);
// echo"</pre>";
// die();

// this function mostly use in any file delete in folder in that case using delete the unlink...
unlink("upload/".$row['post_img']);

$sql = "DELETE FROM post WHERE post_id = {$post_id};";
$sql .= "UPDATE category SET post = post - 1 WHERE category_id = {$catid}";
 
if(mysqli_multi_query($conn,$sql)){
    header("Location: {$hostname}/admin/post.php");
}else{
    echo "Query failed...";
}
?>