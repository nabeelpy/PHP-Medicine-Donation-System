<!-- this code will simply execute query to update row -->
<?php require "db_connection.php" ?>


<?php


// check if we get request (called on submit)
if ($_SERVER["REQUEST_METHOD"] == "POST") {

  function clean_inputs($field){
    $field = trim($field);
    $field = stripslashes($field);
    $field = htmlspecialchars($field);
    return $field;
  }

// get values of sended inputs
$id = clean_inputs($_POST['id']);
$name = clean_inputs($_POST['name']);
$institute = clean_inputs($_POST['institution']);
$department = clean_inputs($_POST['department']);


  $sql = "Update author set authorname = '$name', 	institution = '$institute', department = '$department' where civilid = $id ";
  if ($connection->exec($sql) === TRUE) {
    echo "Record has been updated Successfully";
  }

}
 ?>
