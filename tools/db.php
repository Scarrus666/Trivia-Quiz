<?php

require "./includes/tools.php";

// Verbinde mit mySQL, mit Hilfe eines PHP PDO Object
$dbHost = getenv('DB_HOST');
$dbName = getenv('DB_NAME');
$dbUser = getenv('DB_USER');
$dbPassword = getenv('DB_PASSWORD');

try 
    {
        // Create a new PDO database connection
        $dbConnection = new PDO("mysql:host=$dbHost;dbname=$dbName;charset=utf8", $dbUser, $dbPassword);
        
        // Set the error mode for exception handling
        $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // You are now connected to the database
    
    } 

catch (PDOException $e) 
    {
        // Handle any exceptions that occur during the connection attempt
        echo "Connection failed: " . $e->getMessage();
    }

?>