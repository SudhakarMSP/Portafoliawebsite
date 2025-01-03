<?php 
  include("includes/nav.html");
  include("includes/sidenav_provider.html");
  ?>
  <!DOCTYPE html>

<head>
    <title>add company</title>
    <link rel="stylesheet" href="css/addcompany2.css" type="text/css">
</head>

<body>
    <div class="container">
       
            <div class="box">
                <h2>ADD COMPANY HERE</h2><br/>
                <form id="register"   method="post">
                    <label>Title:</label>
                    <br />
                   <div class="title"><input type="text" name="title" id="title" value="Digital Marketing" readonly ></div>
                
                    <label>Company Name:</label>
                    <br />
                    <div class=cname><input type="text" name="cname" id="cname" placeholder=" Enter Your Company name" /></div>
                    
                    <label>Discription:</label>
                    <br />
                   <div class="discription">
                    <textarea id="discription" name="discription" placeholder=" Discription" rows="5" cols="49"></textarea>
                    
                   
                    <label>Stipends:</label>
                    <br />
                    <div class="stipends"><input type="text" name="stipends" id="stipends" placeholder=" Enter stipends if you give" /></div>
                
                    <label>Start Date:</label>
                    <br />
                    <div class="sdate"> <input type="date" id="sdate" name="sdate" onchange="changeColor()"></div>
                    
                    <label>End Date:</label>
                    <br />
                    <div class="edate"><input type="date" id="edate" name="edate"></div>
                    
                    <input type="submit" value="submit" name="submit" id="submit" onclick="message()">
                    
                    <div class="message">
                    <div class="success" id="success">success added!</div>
                    <div class="danger" id="danger">Fields cant's be Empty!</div>
                    </div>
                </form>
            </div>
      
    </div>
 
    <script src="includes/addcompany.js"></script>
 </body>

</html>
<?php
 include('includes/connection.php'); 
if(isset($_POST['submit'])) {
    $title =$_POST['title'];
    $cname =$_POST['cname'];
    $discription =$_POST['discription'];
    $stipends =$_POST['stipends'];
    $sdate =$_POST['sdate'];
    $edate =$_POST['edate'];
    if($cname !=='' && $discription !=='' &&  $sdate !=='' && $edate !=='') {
        $query="insert into addcompany (title,cname,discription,stipends,sdate,edate) values('$title',' $cname','$discription','$stipends','$sdate','$edate')";
        $data=mysqli_query($conn, $query);
    }
    sleep(2);
    header('location:digitalmarketing.php');
}
?>
