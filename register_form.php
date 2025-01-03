<?php

include ('includes/connection.php');

session_start();

if(isset($_POST['submit'])){
    
   $cname = mysqli_real_escape_string($conn, $_POST['cname']);
   $pass = md5($_POST['password']);
   $cpass = md5($_POST['cpassword']);

   $select = " SELECT * FROM user WHERE cname = '$cname' && password = '$pass'";

   $result = mysqli_query($conn, $select);
   $select1 = " SELECT * FROM user WHERE cname = '$cname'";

   $result1 = mysqli_query($conn, $select1);

   if(mysqli_num_rows($result) > 0){
      $error[] = 'user already exist';
   }else if(mysqli_num_rows($result1) > 0){
      $error[] = 'This comany already loged with other password';
   }
   else{
      if($pass != $cpass){
         $error[] = 'password not mathched!';
      }else{
         $insert = "INSERT INTO user(cname, password) VALUES('$cname','$pass')";
         mysqli_query($conn, $insert);
         header('location:login_form.php');
      }
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="css/login_register.css">
</head>
<body>
    
<div class="form-container">

   <form action="" method="post">
      <h3 class="title">register now</h3>
      <?php
         if(isset($error)){
            foreach($error as $error){
               echo '<span class="error-msg">'.$error.'</span>';
            }
         }
      ?>
      <input type="text" name="cname" placeholder="enter your company name" class="box" required>
      <input type="password" name="password" placeholder="enter your password" class="box" required>
      <input type="password" name="cpassword" placeholder="confirm your password" class="box" required>
      <input type="submit" value="register now" class="form-btn" name="submit">
      <p>already have an account? <a href="login_form.php">login now!</a></p>
   </form>

</div>

</body>
</html>