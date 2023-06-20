<?php

class Car
{
    public $wheels = 4;
    protected $hood = 1;
    private $engine = 1;
    var $doors = 4;

    function showProperty()
    {
        echo $this->engine;

    }


}

$bmw = new car();


echo $bmw->showProperty();



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