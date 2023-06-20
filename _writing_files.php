<?php

$file = "example.txt";

if($handle = fopen($file, 'w')){

    fwrite($handle, "I am bilal el koudadi, I'm following edwin's lectures");


fclose($handle);
}
else{
    echo "were not able to wite the file";
}







