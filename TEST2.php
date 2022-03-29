<?php 
session_start();
error_reporting();
include("php/connection.php");
include("php/functions.php");

$user_data = check_login($con);

$child_data = child($con);
$parent_id = $user_data['parent_id'];

?>
<!DOCTYPE html>
<html>
<body>
<?php

$sql2 = "SELECT * FROM child_tbl where parent_id='$parent_id'";
        $stmt2 = $con->prepare($sql2);
        $stmt2->execute();
        $result2 = $stmt2->get_result();

        while($row = $result2->fetch_assoc()){
          $childFN = $row['firstname'];
          $childLN = $row['lastname'];
          $dob = $row['dateofbirth'];

        $dateOfBirth = $dob;
        $today = date("Y-m-d");
        $diff = date_diff(date_create($dateOfBirth), date_create($today));
        $age = $diff->format('%y');

        echo '<center><table class="table" style="width: 60%; margin-bottom: 30px">';
        echo '<thead style="line-height: 40px">';
        echo '<th style="width: 10%">Vaccine</th>';
        echo '<th style="width: 30%">Information</th>';
        echo '<th style="width: 5%">Minimum Age</th>';
        echo "</thead>";
        echo "<tbody>";
        echo "<tbody>";
        echo "<tr>";
        
        $sql = "SELECT * FROM vaccine_schedule";
        $stmt = $con->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();
            
        while($row = $result->fetch_assoc()){
            $vaccinename = $row['vaccine_name'];
            $information = $row['vaccine_descrip'];
            $minage = $row['min_age'];
    
            
            echo "<tr>";
echo "<td>" . $vaccinename . "</td>";
echo "<td>" . $information ."</td>";
echo "<td>" . $minage . "</td>";
echo "</tr>";
        }
    echo "</tbody>";
  echo "</table>";
    }
  ?>

</body>
</html>
