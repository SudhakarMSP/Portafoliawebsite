<?php

include ('includes/connection.php');

session_start();

if(isset($_POST['submit'])){
    
   $cname = mysqli_real_escape_string($conn, $_POST['usercname']);
   $pass = md5($_POST['password']);

   $select = " SELECT * FROM user WHERE cname = '$cname' && password = '$pass'";

   $result = mysqli_query($conn, $select);

   if(mysqli_num_rows($result) > 0){
      $_SESSION['usercname'] = $cname;
      header('location:provider_dashboard.php');
   }else{
      $error[] = 'incorrect password or email.';
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
        <h3 class="title">login now</h3>
        <?php
         if(isset($error)){
            foreach($error as $error){
               echo '<span class="error-msg">'.$error.'</span>';
            }
         }
      ?>
        <input type="text" name="usercname" placeholder="enter your company name" class="box" required>
        <input type="password" name="password" placeholder="enter your password" class="box" required>
        <input type="submit" value="login now" class="form-btn" name="submit">
        <p>don't have an account? <a href="register_form.php">register now!</a></p>
    </form>

</div>

</body>
</html>