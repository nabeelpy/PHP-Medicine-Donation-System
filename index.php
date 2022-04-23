




<!---------------------------->
<!--html start-->
<!---------------------------->


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="my.css">
</head>

<body>

<!--internal css-->
<style>
    #container {
        background-color: white;
        height: 30px;
        width: 100%;
    }
</style>


<div class="Donor_bg">
    <div id="container">
    </div>
    <div class="form">

        <ul class="tab-group">
            <li class="tab "><a href="signup.php">Sign Up</a></li>
            <li class="tab active"><a href="index.php">Log In</a></li>
            <!--                    <li class="tab"><a href="about.php">About Us</a></li>-->
        </ul>

        <div id="login">
            <h1>Welcome Back!</h1>

            <form action="user_details.php"  method="post">

                <div class="field-wrap">

                    <input type="email" required autocomplete="off" name="email" placeholder=" Email Address *" />
                </div>

                <div class="field-wrap">

                    <input type="password" required autocomplete="off" name="password" placeholder="Password *"/>
                </div>

                <p class="forgot"><a href="forget.php">Forgot Password?</a></p>

                <button class="button button-block" name="login" />Log In</button>

            </form>

        </div>

    </div><!-- tab-content -->

</div> <!-- /form -->

</div>



<!---------------------------->
<!--php start-->
<!---------------------------->


<?php

include('db_connection.php');

if(isset($_POST['login'])) {

    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM `signup_form` WHERE `email`='$email' AND `password`='$password'";
//    $sql2 = "SELECT * FROM `signup_form` WHERE `email`='$email' AND `password`='$password' AND `id`=12 ";

// execute query and store result in $result
    $result = $connection->query($sql);
//    $result2 = $connection->query($sql2);

    echo $result->num_rows;

exit();

    // check if query is not empty
//if ($result2->num_rows > 0) {

    ?>

<?php






// check if query is not empty
if ($result->num_rows > 0) {

?>
    <script>
        window.open('dashboard.php','_self');
    </script>
    <?php

} else {

    echo "Invalid Username And Password";
}
}


?>

<!---------------------------->
<!--php end-->
<!---------------------------->



</body>

</html>


<!---------------------------->
<!--html end-->
<!---------------------------->
