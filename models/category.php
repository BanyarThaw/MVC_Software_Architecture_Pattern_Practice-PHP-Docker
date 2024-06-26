<?php
// $conn = mysqli_connect("localhost", "root", "");
// mysqli_select_db($conn, "store");

# connecting to mysql docker container
$docker_container_name = "mysql-php_mvc";
$dbuser = "admin";
$dbpass = "password";
$dbname = "mvc";

$conn = mysqli_connect($docker_container_name, $dbuser, $dbpass);
mysqli_select_db($conn, $dbname);

function get_cats() {
  global $conn;
  $result = mysqli_query($conn, "SELECT * FROM categories");

  $cats = array();
  while($row = mysqli_fetch_assoc($result)) {
    $cats[] = $row;
  }

  return $cats;
}

function insert_cat($name) {
  global $conn;
  mysqli_query($conn, "INSERT INTO categories
    (name, created_date, modified_date)
    VALUES ('$name', now(), now())"
  );

  return mysqli_insert_id($conn);
}

function del_cat($id) {
  global $conn;
  mysqli_query($conn, "DELETE FROM categories WHERE id = $id");

  return mysqli_affected_rows($conn);
}
?>
