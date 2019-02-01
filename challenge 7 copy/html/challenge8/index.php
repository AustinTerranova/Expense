 
 <!DOCTYPE html>
 <!-- name:Austin
 	  pawprint:ast7fc
 	  date: 10/24/2018

-->
 <html lang="en">
 <head>
 	<meta charset="utf-8">
 	<title>challenge 8</title>
    <link rel="stylesheet" type="text/css" href= "style.css">
 </head>
 <body>
 	<?php
        
        $myFile = fopen("list.txt","r");
 		$myName = $_GET['myName'];
        $myFunction = $_GET['myFunction'];
        $a = $_GET['a'];
        $b = $_GET['b'];
        
        
        //$c;
     

        //echo "$myName";
        //echo "$myFunction";
       
      
     if ($myFunction === "sayHi"){
         
         
            echo "<h1>you are using function: $myFunction</h1>";
            //echo "$myName";
            sayHi();
             
         } elseif ($myFunction === "hypotenuse"){
                echo "<h1>you are using function $myFunction</h1>";
                hypotenuse();
         
    
          } elseif ($myFunction === "gcd"){
                echo "<h1> you are using function $myFunction</h1>";
                gcd();
         
            }elseif($myFunction === "showPic"){
                echo "<h1> you are using function $myFunction</h1>";
                showPic();
                
            }elseif($myFunction === "showList"){
                 echo "<h1> you are using function $myFunction</h1>";
                showList();
         
            }
        
            else {
                echo "<h1> welcome to my php page </h1>";
            }
         
     
     
        
     
            
        
        
     
     function sayHi(){
        
 			if($_GET['myName'] === ""){
 				echo "Hello, why dont you tell me your name?";
 			
            } else{
                
 				echo "Hi&nbsp;". $_GET['myName'].", what can I do for you?";
              } 
     }
     
     function gcd(){
        $x = $_GET["x"];
        $y = $_GET["y"];
        if(filter_var($x,FILTER_VALIDATE_INT) and filter_var($y,FILTER_VALIDATE_INT)){
            while ($x !=$y){
                if($x>$y){
                    $x = $x - $y;
                } else{
                    $y = $y - $x;
                }
            
            }
             echo "the gcd of&nbsp". $_GET["x"]. "&nbspand&nbsp" .$_GET["y"]. "&nbspis $x";
     } else {
            echo "please enter an integer";
        }
        //echo "the gcd of&nbsp". $_GET["x"]. "&nbspand&nbsp" .$_GET["y"]. "&nbspis $x";
         
         
     }
    function showPic(){
        
        $filepath= 'cool.gif';
        echo '<img src=../cool.gif>';
    }
     
     
     
     
     
     
     
     
     
        function hypotenuse(){
                    
                   
                    $a =  $_GET['a'];
                    
                    $b =  $_GET['b'];
                   
                    if(filter_var($a,FILTER_VALIDATE_INT) and filter_var($b,FILTER_VALIDATE_INT)){
                        $a=$a*$a;
                        $b=$b*$b;
                    
                        $c=$a+$b;
                
                    
                        
                        echo "when a=".$_GET['a']. "&nbspand b=".$_GET['b'].", the hyptoenuse is&nbsp". (sqrt($c));
                        
                    } else {
                        
                       echo "please enter an integer";
                    }
        }
 	    
     
        function showList(){
            $myfile = fopen("list.txt", "r") or die("Unable to open file!");
            echo fread($myfile,filesize("list.txt"));
            fclose($myfile);
        }
     

 	?>
 
 </body>
 </html>
 