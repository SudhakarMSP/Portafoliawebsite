<?php
/*require_once('config/db.php');
$query ="select * from provider";
$result = mysqli_query($con,$query);
*/
session_start();

   $cname=$_SESSION['usercname'];
	include('includes/connection.php');
	$query="SELECT * FROM confirmedapplications WHERE cname='$cname'";
	$result=mysqli_query($conn,$query);
		
?>

<html>
    <head>
        <link rel="stylesheet" href="css/provider_dashboard.css">
        <link rel="stylesheet" href="css/nav.css">
    </head>
    <body>
    <div class="menu_bar">
        <h1 class="logo"><a href="main.php"> INTERNSHIP MANAGMENT PORTAL</a></h1>
        <ul>
            <li style="background-color:red"><a href="provider_logout.php">logout</a></li>
        </ul>
    </div>
        <h1 style="margin-top:130px; margin-left:80px;">Received Applications</h1>
        <table class="styled-table">

            <thead>
            
                <tr>
                <th>SL_NO</th>
                <th>TITLE </th>
                <th>COMPANY NAME</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>EMAIL-ID</th>
                <th>PHONE NUMBER</th>
                <th>GENDER</th>
               
            </tr>
            </thead>
            <tbody>
            <tr>
                    <?php
                     $i=1;
                    while($row = mysqli_fetch_assoc($result)) 
                    {
                       
                     ?>
                     <td><?php echo $i ?></td>
                     <td><?php echo $row['title'];?></td>
                     <td><?php echo $row['cname'];?></td>
                     <td><?php echo $row['fname'];?></td>
                     <td><?php echo $row['lname'];?></td>
                     <td><?php echo $row['email'];?></td>
                     <td><?php echo $row['phone_no'];?></td>
                     <td><?php echo $row['gen'];?></td>
                     
                     </tr>
                     <?php
                     $i++;
                    }
                    
                    ?>
             
            </tr>
        </tbody>
        </table>
    </div>
    </body>
</html>