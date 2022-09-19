<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div style="width:80%; margin:auto">
        
        <h1>Depardment Registration</h1>

        <form method="post">
            <table>
                <tr>
                    <td><label for="emp_dept">EMP Department : </label></td>
                    <td><input type="text" name="empDept"></td>
                    <td><input type="submit" value="Search" name="search"></td>
                </tr>

                <tr>
                    <td><label for="">Department Type : </label></td>
                    <td><input type="text" name="deptType"></td>
                </tr>

                <tr>
                    <td>Employee Department Number : </td>
                    <td><input type="number" name="empDeptNo"></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" name="submit" value="Add"></td>
                </tr>
            </table>
        </form>
    </div>

    <div style="width:80%; margin:auto">
        
        <h3><h3 style='color:red'> Search Result </h3></h3>        

        <?php
            // INsert section
            if (isset($_POST['submit']))
            {
                include 'conn.php';

                $empDept = $_POST['empDept'];
                $deptType = $_POST['deptType'];
                $empDeptNo = $_POST['empDeptNo'];


                $sql = "INSERT INTO emp_dept(emp_dept, dept_type, emp_dept_no) VALUES ('$empDept', '$deptType', $empDeptNo)";

                if (mysqli_query($con, $sql))
                {
                    ?>
                    <script>
                        alert ("Record successfully Added");
                        window.location.href="index.php";
                    </script>
                    <?php
                }

                else
                {
                    echo "Error ".mysqli_error($sql);
                }
            }

            // Search section
            if(isset($_POST['search']))
            {               
                include 'conn.php';

                $empDept = $_POST['deptType'];
                $emp = $_POST['empDept'];

                $sql = "SELECT * FROM emp_dept WHERE dept_type = '$empDept' or emp_dept = '$emp'";

                $result = mysqli_query($con, $sql);



                if ($result->num_rows > 0)
                {
                    ?>
                    <table border=1 style="border-collapse:collapse; width:90%; text-align:center">
                    <tr>
                        <th>EMP Department</th>
                        <th>Department Type</th>
                        <th>Employee Department Number</th>
                    </tr>
                    <?php
                    while($row = mysqli_fetch_array($result))
                    {

                    ?>

                    <tr>
                        <td><?php echo $row['emp_dept']; ?></td>
                        <td><?php echo $row['dept_type']; ?></td>
                        <td><?php echo $row['emp_dept_no']; ?></td>
                    </tr>
                    <?php
                    }
                }

                else
                {
                    echo "<h3 style='color:red'> No data found</h3>";
                }
            }
        ?>
        </table>
    </div>
</body>
</html>