<?php

class Car
{
    static $wheels = 4;
    var $hood = 1;


    function MoveWheels()
    {
        Car::$wheels = 10;

    }

}


$bmw = new car();
//echo $bmw->wheels;

Car::MoveWheels();

echo Car::$wheels;







?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>

<body>

</body>

</html>