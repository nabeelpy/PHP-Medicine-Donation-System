<!-- this code will simply execute query to delete row -->
<?php require "db_connection.php" ?>

<?php

// check that get value is of integer type
$id = intval($_GET['id']);

  $sql = "Delete from author where civilid = $id";
  if ($connection->exec($sql) === TRUE) {
    echo "Record has been Deleted Successfully";
  }

 ?>
