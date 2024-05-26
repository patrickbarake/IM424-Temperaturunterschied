<?php

$db_host = 'localhost';    
$db_name = '107392_3_1';  
$db_user = '107392_3_1';   
$db_pass = 'Wgu64iaPcRpG';  




$db_charset  = 'utf8mb4';      

$dsn = "mysql:host=$db_host;dbname=$db_name;charset=$db_charset"; 
$options = [
  PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
  PDO::ATTR_EMULATE_PREPARES   => false
];
?>