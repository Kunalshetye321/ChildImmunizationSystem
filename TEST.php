<?php
include "PHP/connection.php";
include "PHP/functions.php";
include "PHP/sendmail.php";

$user_data = check_login($con);

$child_data = child($con);
$parent_id = $user_data['parent_id'];


$sql_m = "SELECT * FROM parent_tbl";
$stmt_m = $con->prepare($sql_m);
$stmt_m->execute();
$result_m = $stmt_m->get_result();
while ($row = $result_m->fetch_assoc()) {
    $parentFN = $row['firstname'];
    $parentLN = $row['lastname'];
    $email = $row['email'];
    $name = $parentFN . " " . $parentLN;
    sendEmail($email, $name, "Vaccine Date is arrived!");
}

?>
