<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- Font icons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">

    <style>
        *
        {
            padding: 0;
            margin: 0;
            font-family: Century Gothic;
        }

        .container-1
        {
            width: 90%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
            padding:0 15px;
        }

        .container-fluit-2
        {
            width: 100%;
            background-color:#212121;
        }

        .navbar{
            margin:auto;
            display: flex;
            align-items:center;
            justify-content:space-between;
        
        }

        .navbar-1
        {
            margin:auto;
            display: flex;
            align-items:center;
            justify-content:center;
        
        }

        .ul-a
        {
            list-style-type: none;
            margin:0;
            padding:0;
            overflow:hidden;
        }

        
        .h3 
        {
            color: white;
            text-transform: uppercase;
        }

        .li-a  
        {
            float: left;
        }

        li a
        {
            display: block;
            text-align: center;
            padding:14px 16px;
            color: #f4e2fc;
            text-decoration: none;
        }

        .li-a:hover:not(.active)
        {
            color: #f4e2fc;
            background-color: #383838;
        }

        .active
        {
            color: #f4e2fc;
            background-color: green;
        }
    </style>
</head>
<body>
    
    <!--Pearl of the Indian Ocean-->
    <div class="container-fluit-2 " style="border-bottom: 1px solid white;">
        <div class="container-1">
           <div class="row">
               <div class="navbar">
                   <div class="main-title">
                       <h3 class="h3">Pearl of the Indian Ocean</h3>
                   </div>

                   <div>
                       <ul class="ul-a media-icons">
                           <li class="li-a"><a href=""><i class="fab fa-facebook-f"></i></a></li>
                           <li class="li-a"><a href=""><i class="fab fa-instagram"></i></a></li>
                           <li class="li-a"><a href="https://github.com/AM-ASKY-97"><i class="fab fa-github"></i></a></li>
                           <li class="li-a"><a href="https://www.linkedin.com/in/asky-mohammed-02742921b/"><i class="fab fa-linkedin-in"></i></a></li>
                           <li class="li-a"><a href=""><i class="fab fa-youtube"></i></a></li>
                       </ul>
                   </div>
               </div> 
           </div>
        </div>
    </div>
    <!-- /Pearl of the Indian Ocean -->   


     <!--Pearl of the Indian Ocean-->
     <div class="container-fluit-2">
        <div class="container-1">
           <div class="row">
               <div class="navbar-1">
                   <div>
                        <ul class="ul-a">
                            <li class="li-a active"><a href="Home">Home</a></li>
                            <li class="li-a"><a href="Places">Tourist Places</a></li>
                            <li class="li-a"><a href="Contact">Contact Us</a></li>
                        </ul>
                   </div>
               </div> 
           </div>
        </div>
    </div>
    <!-- /Pearl of the Indian Ocean -->   
    
</body>
</html>