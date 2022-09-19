<?php
    
    $basicSalary = 50000;

    if($basicSalary <= 10000)
    {
        $HRA = $basicSalary * 20 / 100;
        $DA = $basicSalary * 80 / 100;
    }

    else if ($basicSalary > 10000 && $basicSalary <= 20000)
    {
        $HRA = $basicSalary * 25 / 100;
        $DA = $basicSalary * 90 / 100;
    }

    else 
    {
        $HRA = $basicSalary * 30 / 100;
        $DA = $basicSalary * 95 / 100;
    }

    $grossSalary = $basicSalary + $HRA + $DA;
    
    echo "Gross Salary : ".$grossSalary;

?>