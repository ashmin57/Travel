<?php
session_start();
include_once"config.php";

if(isset($_POST["Book"])){
    $name = $_POST["name"];
    $date = $_POST["date"];

    $sql = "insert into reservation (res_name, res_date) values ('$name','$date')";
    mysqli_query($conn,$sql);
}

?>
<html>

<head>
    <title>Travel Agency System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Travel Agency</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.php">Home
                        <!-- <span class="sr-only">(current)</span> -->
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="">Tour package</a>
                </li>

                <?php if(!isset($_SESSION['user_name'])){ ?>
                <li class="nav-item">
                    <a class="nav-link" href="login_form.php">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="register_form.php">Register</a>
                </li>
                <?php } else { ?>
                <li class="nav-item">
                    <a class="nav-link" href="logout.php">Logout</a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </nav>
    
    <form action="" method="post">
        <input type="text" name="name" placeholder= "Enter your Name"> <br>
        <input type="date" name="date" placeholder="Date"> <br>
       <button name="Book">Book</button>
    </form>