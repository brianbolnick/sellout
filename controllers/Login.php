<?php
if (isset($_POST['email'])) {
    require_once '../models/model.php';

    $email = $_POST['email'];
    $password = $_POST['password'];

    // handle password hashing (NOTE: These should NEVER be stored in the files themselves!)
    $salt1 = 'nlaosd73@#YHS)#@Jsafilj39';
    $salt2 = 'FASDa9spd^&SD)QMAOS#a02jaoj1amsnq@';
    $token = hash('ripemd128', "$salt1$password$salt2");

    //select user from db
    $obj = new UsersModel();
    $tmp = $obj->select("email = '$email'");

    //assign variables from db query
    $user_id = $tmp['user_id'];
    $db_password = $tmp['password'];

    //Compare passwords
    if ($token == $db_password) {

        //set session
        session_start();
        $_SESSION['username'] = $email;
        $_SESSION['user_id'] = $user_id;
        $_SESSION['password'] = $password;

        // //forward to view page
        header("Location: ../views/index.php");
        exit();
    } else {
        header("Location: ../views/login.php?message=There was an issue logging in. Please check your credentials.");
        exit();
    }
}