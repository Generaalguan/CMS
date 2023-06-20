<?php

class Car{

    function MoveWheels(){
        echo "wheels move";

    }

}
     if(method_exists("Car", "MoveWheels")){
     echo "method exists";
     }
     else{
     echo "no";
     }

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


