<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>

<?php
    $number = array("juanita", "maria", "jose");

    print_r($number);
    echo "<br>";
    $names = array("first_name" => "Bilal", "last_name" => "koudadi");

    print_r($names);
    echo "<br>";
    echo $names["first_name"] . " " . $names["last_name"];
?>

</body>
</html>