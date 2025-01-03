<?php
 include('includes/connection.php'); 

   $title =$_POST['title']; 
   $cname =$_POST['cname']; 
   $discription =$_POST['discription']; 
   $stipends =$_POST['stipends']; 
   $sdate =$_POST['sdate']; 
   $edate =$_POST['edate']; 
  if( $cname !=='' && $discription !=='' &&  $sdate !=='' && $edate !=='')
  {
   $query="insert into addcompany (title,cname,discription,stipends,sdate,edate) values('$title',' $cname','$discription','$stipends','$sdate','$edate')";
   $data=mysqli_query($conn,$query);
  }
   sleep(2);
   header('location:digitalmarketing.php');

?>
