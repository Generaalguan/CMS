<?php include "functions.php" ?>
<?php include "includes/header.php" ?>

	<section class="content">

	<aside class="col-xs-4">

		<?php Navigation();?>
			
		
	</aside><!--SIDEBAR-->


<article class="main-content col-xs-8">

	
	<?php  

/*  Step1: Define a function and make it return a calculation of 2 numbers

	Step 2: Make a function that passes parameters and call it using parameter values


 */

	//step1
	function calc(){
		$calculation = 1 + 3;

		return $calculation;
	}
	$calculator = calc();
	echo $calculator;
	echo "<br>";

	//step2
	function greetings($word1, $word2){

		echo $word1 . " ". $word2;

	}
	greetings("Hello", "Bilal");
?>





</article><!--MAIN CONTENT-->


<?php include "includes/footer.php" ?>