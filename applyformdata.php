<html>
    <head>
        <title>application form</title>
        <link rel="stylesheet" href="css/Application form.css"/>
        <script src="includes/sweetalert.min.js"></script>
    </head>
    <body>
        <div class="application">
            <h1>Application-from</h1><br>
                    <form id="application"  method="post">
                        <label>Title:</label><br>
                        <input type="text" name="title" id="name" value="Data Science" readonly><br><br>
                        <label>Company name:</label><br>
                        <input type="text" name="cname" id="name" placeholder="enter u r company name"><br><br>
                        <label>First Name:</label><br>
                        <input type="text" name="fname" id="name" placeholder="enter u r First Name"><br><br>
                        <label>Last Name:</label><br>
                        <input type="text" name="lname" id="name" placeholder="enter u r Last Name"><br><br>
                         <label>Email Id:</label><br>
                         <input type="email" name="email" id="name" placeholder="example@gmail.com"><br><br>
                         <label>Mobile Number:</label><br>
                      
                         <input type="text" name="phone_no" id="MNum"><br><br>
                         <label>Select u r Gender:</label><br><br>
                         <span id="Male">Male</span><input type="radio" name="gen" id="ml" value="Male">
                         <span id="Female">Female</span><input type="radio" name="gen" id="fml" value="female"><br><br>
                         
                         <center><input type="submit" name="submit" id="sub" value="Apply"><center>

                    </form>
        </div>
        <div class="container">
                    <button class="back-btn" onclick="location.href='dataseeker.php'">Back</button>
                    </div>
    </body>
</html>
<?php
 error_reporting(0);
 include('includes/connection.php'); 
  $flag='';
if(isset($_POST['submit'])) {
    $title =$_POST['title'];
    $cname =$_POST['cname'];
    $fname =$_POST['fname'];
    $lname =$_POST['lname'];
    $email=$_POST['email'];
    $phone_no =$_POST['phone_no'];
    $gender=$_POST['gen'];
    if(isset($_POST['cname']) && isset($_POST['fname'])  && isset($_POST['email']) && isset($_POST['phone_no']) && isset($_POST['gen'])) {
    $query="insert into Application (title,cname,fname,lname,email,phone_no,gen) values ('$title','$cname',' $fname','$lname','$email','$phone_no','$gender')";
    $data=mysqli_query($conn, $query);
}
    if($data) {
        $flag=0;
    } else {
        $flag=1;
    }

        if($flag==0) {
            ?>
    <script>
    swal({
        title: "success",
        text: "Applied successfully!",
        icon: "success",
      });
    </script>
<?php
}
    if($flag==1){
        ?>
        <script>
    swal({
        title: "failed",
        text: "all fields must be filled!",
        icon: "error",
      });
    </script>
        <?php
    
        }
    }


?>