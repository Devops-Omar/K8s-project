<?php
$conn = mysqli_connect("mysql-svc", "root", "myrootpassword", "omartill");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
// Adding a test comment to ensure file is detected as changed
?>
