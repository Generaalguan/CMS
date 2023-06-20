<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <?php

    $list = [333, 343, 353, 34, 23, 54, 332];
    echo max($list);
    echo "<br>";
    echo min($list);
    echo "<br>";
    print_r($list);
    echo "<br>";
    echo sort($list);

    ?>

</body>
</html>