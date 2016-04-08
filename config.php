<?php
//error_reporting(0);
//$connection = mysql_connect('127.12.123.2:3306', 'adminS1S5VEn', 'Z6X7lnKccakM');
//mysql_select_db('tweet_a_complaint');
    
    $connection = mysql_connect('localhost', 'root', '');
    mysql_select_db('familytreedb');

    if (!$connection) {
        die('Could not connect: ' . mysql_error());
    }
    else
    {
		//echo "Connection Established Successfully";
    }
?>
