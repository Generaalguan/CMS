<?php include "functions.php" ?>
<?php include "includes/header.php" ?>
	<section class="content">

		<aside class="col-xs-4">
		<?php Navigation();?>
			
			
		</aside><!--SIDEBAR-->


<article class="main-content col-xs-8">

	
	<?php 


/*  Step1: Use a pre-built math function here and echo it


	Step 2:  Use a pre-built string function here and echo it


	Step 3:  Use a pre-built Array function here and echo it

 */

 //step1
 echo round(8.5);
 echo "<br>";

 //step2
$name = "Bilal el koudadi";
	echo strtoupper($name);
 echo "<br>";

 //step3
 $numbers = [1, 2, 3, 10000, 4, 5, 6];
 echo max($numbers)

	
?>





</article><!--MAIN CONTENT-->
<?php include "includes/footer.php" ?>