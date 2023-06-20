<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>

    <?php
    $number1 = 15;
    $number2 = 10;


    $numberList = array(267,8765,345,'5345', 345, '<h1>Hello</h1>', $number1 + $number2);
    /*elke variable in de array is een index,
    die start altijd bij 0*/
    echo $numberList[5];
    //print_r($numberList);



    $number_List = ['name' => 'Bilal'];


    ?>

</body>
</html>