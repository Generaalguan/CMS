<?php include "functions.php" ?>
<?php include "includes/header.php" ?>

	<section class="content">

	<aside class="col-xs-4">

	<?php Navigation();?>
			
	</aside><!--SIDEBAR-->


<article class="main-content col-xs-8">

<?php  

/*  Step1: Make an if Statement with elseif and else to finally display string saying, I love PHP


	Step 2: Make a forloop  that displays 10 numbers


	Step 3 : Make a switch Statement that test againts one condition with 5 cases

 */

	//step1:
	if(3 === "3"){
		echo "dat klopt niet" . "<br>";
	}
	elseif(4 == 5){
		echo "dat klopt ook niet" . "<br>";
	}
	else{
		echo "I love PHP" . "<br>";
	}

	for($i = 0; $i < 10; $i++){
		echo $i . "<br>";
	}

	$hallo = 33;

	switch($hallo){
		case 44:
		echo "ik ben 44";
		break;
		case 55:
		echo "ik ben 55";
		break;
		case 66:
		echo "ik ben 66";
		break;
		case 77:
		echo "ik ben 77";
		break;
		case 88:
		echo "ik ben 88";
		break;
		default:
		echo "there is nothing that is equal to " . $hallo;

	}

	
?>






</article><!--MAIN CONTENT-->
	
<?php include "includes/footer.php" ?>