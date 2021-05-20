<?php
$insert = false;
if(isset($_POST['submit'])){
    // Set connection variables
    $server = "localhost";
    $username = "root";
    $password = "";
    $db_name = "plasma_donar";

    // Create a database connection
    $con = mysqli_connect($server, $username, $password,$db_name);

    // Check for connection success
    if(!$con){
        die("connection to this database failed due to" . mysqli_connect_error());
    }
    // echo "Success connecting to the db";

    // Collect post variables
    $name = $_POST['name'];
    $age = $_POST['age'];
    $gender = $_POST['gender'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $city = $_POST['city'];
    $state = $_POST['state'];
    $date = date("d-m-Y H:i:s");
    $sql = "INSERT INTO `test` (`name`, `age`, `gender`, `phone`, `address`, `city`, `state`, `date`) VALUES ('$name','$age','$gender','$phone','$address', '$city', '$state','$date');";
     //echo $sql;

    // Execute the query
    if($con->query($sql) == true){
        //echo "Successfully inserted";

        // Flag for successful insertion
        $insert = true;
    }
    else{
        echo "ERROR: $sql <br> $con->error";
    }

    // Close the database connection
    $con->close();
}

?>

 <!DOCTYPE html>
 <html>
 <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plasma Donor form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto|Sriracha&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
 </head>
 <body>
 	<img class="bg" src="plasma.jpg">
 	<div class = "container">
 		<h2>Donate Plasma Save Lives</h2>
 		<p>Fill the form only when you are recoverd from Covid in the last 20 days</p>
    <?php
        if($insert == true){
        echo "<p class='submitMsg'>Thanks for submitting your form. We are happy to see you joining us for the US trip</p>";
        }
    ?>
      <form action="index.php" method="post">
      <input type="text" name="name" id="name" placeholder="Enter your name" required><br>
      <input type="text" name="age" id="age" placeholder="Enter your Age" required><br>
       <input type="text" name="gender" id="gender" placeholder="Enter your Gender" required><br>
      <input type="tel" name="phone" id="phone" placeholder="Enter phone" required><br>
       <textarea name="address" id="address" cols="20" rows="2" placeholder="Enter Address" required></textarea>
      <input type ="text" name="city" id="city" placeholder="Enter City" required><br>
      <input type="text" name="state" id="state" placeholder="Enter State" required><br>
      <button class="btn" name="submit">Submit</button>
     </form>
    </div>
 </body>
 </html>

