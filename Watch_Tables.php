<?php  require "db_connection.php"; ?>
<?php

$stmt = $connection->query("Select * from author");

  ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>

    <!--===============================================================================================-->
    	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    	<link rel="stylesheet" type="text/css" href="css/util.css">
    	<link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->

  </head>
  <body>

    <!-- ============================================== -->
                    <!-- NAVBAR -->
    <!-- ============================================== -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
      <a class="navbar-brand" href="#">CRUD PHP</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <!-- just pass file path to link with page -->
            <a class="nav-link" href="index.php">Register Account <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <!-- just pass file path to link with page -->
            <a class="nav-link" href="Watch_Tables.php">Watch Tables</a>
          </li>
        </ul>

      </div>
    </nav>




    <!-- ============================================== -->
                    <!-- Table -->
    <!-- ============================================== -->
    <table class="table table-bordered table-dark">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">Name</th>
          <th scope="col">Institute</th>
          <th scope="col">Department</th>
          <th scope="col">Actions</th>
<!--          <th scope="col">Delete</th>-->

        </tr>
      </thead>
      <tbody>



<?php


while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    echo "<tr>";
    echo "<td>".$row['civilid']."</td>";
    echo "<td>".$row['authorname']."</td>";
    echo "<td>".$row['institution']."</td>";
    echo "<td>".$row['department']."</td>";
    echo "<td><a href=\"user_details.php?id=$row[civilid]\">Edit</a> | <a href=\"delete_user.php?id=$row[civilid]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";
}

?>
      </tbody>
    </table>

  </body>
</html>
