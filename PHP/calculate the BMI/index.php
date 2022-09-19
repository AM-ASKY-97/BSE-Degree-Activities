<?php
    function bodyMass($weight, $height)
    {
        $BMI = $weight/ ($height*$height);
        return $BMI;
    }

    $BMI = bodyMass(100, 30);

    echo "BMI : ".$BMI;
?>