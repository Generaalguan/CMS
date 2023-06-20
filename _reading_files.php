<?php

$file = "example.txt";

if($handle = fopen($file, 'r')){

    echo $content = fread($handle, filesize($file));


fclose($handle);
}
else{
    echo "were not able to wite the file";
}







