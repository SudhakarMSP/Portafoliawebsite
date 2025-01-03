<?php 
    include("includes/connection.php");
    include("loginphp.php")
    ?>
    
<html>
    <head>
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/login2.css">
    </head>
    <body>
        
        <div id="form">
            <h1>Login Form</h1><br/>
            <form name="form" action="loginphp.php" onsubmit="return isvalid()" method="POST">
                <label>Username :  </label>
                <input type="text" id="user" name="user"></br></br>
                <label>Password :  </label>
                <input type="password" id="pass" name="pass"></br></br><br/>
                <input type="submit" id="btn" value="Login" name = "submit"/>
            </form>
        </div>
        <script>
            function isvalid(){
                var user = document.form.user.value;
                var pass = document.form.pass.value;
                if(user.length=="" && pass.length==""){
                    alert(" Username and password field is empty!!!");
                    return false;
                }
                else if(user.length==""){
                    alert(" Username field is empty!!!");
                    return false;
                }
                else if(pass.length==""){
                    alert(" Password field is empty!!!");
                    return false;
                }
                
            }
        </script>
    </body>
</html>