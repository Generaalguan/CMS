<?php

if(isset($_POST['submit'])){
$name = array("Edwin", "Student", "peter", "Samid", "Mohad", "Maria", "Jane", "Tom");
$minimum = 5;
$maximum = 10;

$username = $_POST['username'];
$password = $_POST['password'];


if(strlen($username) < $minimum ){
    echo "username has to be longer than five characters";
}
elseif(strlen($username) > $maximum){
    echo "username must be shorter than seventien characters";
}

if(!in_array($username, $name)){

    echo "Sorry you are not allowed";
}
else{
    echo "welcome";
}




/*
echo "Good morning" . " " . $username;
echo "<br>";
echo $password . " ". "is a bad example of a password";
*/
}


?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>

<form action="_form.php" method = "post">
    <input type="text" name = "username" placeholder= "Enter Username">
    <input type="password" name = "password" placeholder= "Enter Password">
    <br>
    <input type="submit" name="submit">
</form>
<?php

    

?>

</body>
</html>