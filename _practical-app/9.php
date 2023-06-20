<?php include "functions.php" ?>
<?php include "includes/header.php" ?>
<?php

$name = "PS9";
$value = "100";
$expiration = time() + (60*60*24*7);
setcookie($name, $value, $expiration);

if(isset($_COOKIE["PS9"])){

	$someOne = $_COOKIE["PS9"];

}
else{
	$someOne = "";
}

echo "<br>";

$_SESSION["greet"] = "Hello Erwin" ;


?>



	<section class="content">

		<aside class="col-xs-4">

		<?php Navigation();?>
			
			
		</aside><!--SIDEBAR-->


			<article class="main-content col-xs-8">
			
		
	
	<?php 

	/*  Create a link saying Click Here, and set 
	the link href to pass some parameters and use the GET super global to see it

		Step 2 - Set a cookie that expires in one week

		Step 3 - Start a session and set it to value, any value you want.
	*/

	$id = 100;
	?>
	<a href="9.php?id=<?php $id ?>">Click Here</a>
	<br>
	
	<?php

	echo $someOne . "<br>";

	echo $_SESSION["greet"];


	
	?>





</article><!--MAIN CONTENT-->
<?php include "includes/footer.php" ?>