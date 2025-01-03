<?php
  include("includes/nav.html");
  include("includes/sidenav_seeker.html");
  ?>
  <!DOCTYPE html>
<html>
<head>
 <title>Cards</title>
</head>
<style type="text/css">

*{
 margin: 0px;
 padding: 0px;
}
body{
 font-family: arial;
}
.main{

 margin: 5%;
 padding-left: 15%;
}
.image img{
  width: 100%;
  border-top-right-radius: 5px;
  border-top-left-radius: 5px;
  

 
 }

.card{
     width:40%;
     height: 60%;
     display: inline-block;
     box-shadow: 20px 20px 20px black;
     border-radius: 5px; 
     margin: 40px;
     margin-bottom: 100px;
}


.title{
 
  text-align: center;
  padding: 10px;
  
 }

h1{
  font-size: 20px;
 }

.des{
  padding: 3px;
  text-align: center;
 
  padding-top: 10px;
        border-bottom-right-radius: 5px;
  border-bottom-left-radius: 5px;
}
button{
  margin-top: 40px;
  margin-bottom: 10px;
  background-color: white;
  border: 1px solid black;
  border-radius: 5px;
  padding:10px;
}
button:hover{
  background-color: black;
  color: white;
  transition: .5s;
  cursor: pointer;
}
p{
    line-height: 1.5;
}

</style>
<body>
<?php
  include('includes/connection.php');

  $query= "SELECT * FROM confirmedcompanies WHERE title = 'Digital Marketing'  AND edate>CURDATE()";
  $result= mysqli_query($conn,$query);
 ?>


    <br><br><br>

<div class="main">
<?php 
while($row=mysqli_fetch_assoc($result)) {
    ?>
<div class="card">

<div class="title">
        <h1><?php echo $row['title']; ?></h1>
    </div>
    <div class="image">
   <img src="images/digital marketing.jpg">
</div>
<div class="des">
   <p>

    Company Name:<?php echo $row['cname']; ?> <br/>
    Discription:<?php echo $row['discription']; ?> <br/>
    Stipends: <?php echo $row['stipends']; ?><br/>
    Start Date:<?php echo $row['sdate']; ?> <br/>
    End Date:<?php echo $row['edate']; ?> <br/>
   </p>
<button onclick="location.href='applyformdig.php'">Apply...</button>
</div>
</div>
<?php
}
mysqli_close($conn);
 ?>


</div>

</body>
</html>

