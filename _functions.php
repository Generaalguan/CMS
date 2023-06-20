<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>

<?php

function init(){

        say_something();
        echo "<br>";
    	calculate();

}

function calculate(){

    echo 456 + 345;

}

function say_something(){
    echo "hello student, do you like the class? yes? okay great";
}

init();


?>



</body>
</html>