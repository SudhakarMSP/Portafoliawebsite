<?php
include('includes/connection.php');
include('includes/nav.html');
$query="SELECT * FROM managepage";
$result=mysqli_query($conn,$query);
$row=mysqli_fetch_assoc($result);
?><!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/html.html to edit this template
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
            <link rel="stylesheet" type="text/css" href="css/about.css"/> 
           
</head>
<body>
   
  
    <div class="section">
        <div class="container">
            <div class="content-section">
                <div class="title"><br><br>
                    <h1>about us</h1>
                </div>
                <br><br><br>
                <div class="content">
                    <p><?php echo $row['editor'];?></p>
                 </div><br>
             </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                 <div class="image section">
                    <img src="images/image2.jpg" width="500" height="250" align="right" />
                </div>
            <marquee direction="left" loop="50" hspace="100px" width=95% scrollamount="25">
                   <img src="images/Deloitte.jpeg" width="180" height="100"/>
                   <img src="images/accenture.jpeg" width="180" height="100"/>
                    <img src="images/Hexaware.jpeg" width="180" height="100"/>
                    <img src="images/Capgemini.jpeg" width="180" height="100"/>
                    <img src="images/byjus.jpeg" width="180" height="100"/>
                    <img src="images/cred.jpeg" width="180" height="100"/>
                    <img src="images/qspiders.jpeg" width="180" height="100"/>
                    <img src="images/web disney.jpeg" width="180" height="100"/>
             </marquee>
     </div>
    </div>
          

    
    </body>
</html>
