<?php

include("config.php");

session_start();

if (!empty( $_SESSION['user_name'])) {
     header("Location:viewdeal.php");// if it is logged in already then it will send to the view deal page else they must login first
}

if(isset($_POST['submit'])){

   //$name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = md5($_POST['password']);
  // $cpass = md5($_POST['cpassword']);
  // $user_type = $_POST['user_type'];

//   $select = " SELECT * FROM user_form WHERE email = '$email' && password = '$pass' ";
  $select = " SELECT * FROM user_form WHERE email = '$email' ";
//   password = '$pass' ";
  $result = mysqli_query($conn, $select);
   

   if(mysqli_num_rows($result) > 0){

      $row = mysqli_fetch_array($result);
  $pass=password_verify($pass,$row['password']);
      if($row['user_type'] == 'admin'){
         $_SESSION['admin_name'] = $row['name'];
         header('location:admin/dashboard.php');
      }
      elseif($row['user_type'] == 'user'){
         $_SESSION['user_name'] = $row['name'];
          header('location:viewdeal.php');
      } 
   }
   else{
      $error[] = 'incorrect email or password!';
   }
};
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login form</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="form-container">
        <form action="" method="POST">
            <h2>Login form</h2>

            <?php
            if(isset($error)){
                foreach($error as $error){
                    echo '<span class="error-msg">'.$error.'</span>';
                };
            };
            ?>

            <input type="email" name="email" required placeholder="Enter your email">
            <input type="password" name="password" required placeholder="Enter your password">
            <input type="submit" name="submit" value="Login now" class="form-btn">
            <p>Don't have an account? <a href="register_form.php">Register now</a></p>
        </form>
    </div>

</body>

</html>