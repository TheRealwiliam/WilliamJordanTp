<?php
$first_value =$_post['first_value'];
$second_value = $_post['second_value'];
$factorial=1;
for($i = 1 ; $i<= $first_value;$i++){
    $factorial =$factorial*$i
    
}
echo ='voici le resultat:' . $factorial
for ($i = $first_value;$i <= $second_value;$i++){
    if ($i % 2== 0){
        echo $i."";
    }
}