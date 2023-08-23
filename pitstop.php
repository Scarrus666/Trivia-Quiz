<?php

session_start();

require_once './tools/tools.php';

// DEV ONLY - check if the previous page submitted the values
prettyPrint($_POST);

// Set the topic and number of questions
$topic = $_POST['quizDropdown'];
$numQuestions = $_POST['numQuestions'];

// Verbinde mit mySQL, mit Hilfe eines PHP PDO Object
$dbHost = getenv('DB_HOST');
$dbName = getenv('DB_NAME');
$dbUser = getenv('DB_USER');
$dbPassword = getenv('DB_PASSWORD');

try 
    {
        $conn = new PDO("mysql:host=$dbHost;dbname=$dbName;charset=utf8", $dbUser, $dbPassword);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $query = 'SELECT * FROM questions WHERE topic = :topic';
        $stmt = $conn -> prepare($query);
        $stmt->bindParam(':topic', $topic, PDO::PARAM_STR);  // Bind the topic parameter

        $stmt -> execute();

        $rows = $stmt->fetchALL(PDO::FETCH_ASSOC);

        // shuffle the questions around (RANDOMIZE)
        shuffle($rows);

        if ($rows) 
            {
                $filteredRows = [];

                foreach ($rows as $key => $row) 
                    {
                        if ($key < $numQuestions) 
                            {
                                prettyPrint($key);
                                $filteredRows[] = $row;
                            }   
                    }

                if (empty($filteredRows)) 
                    {
                        echo "No questions found for the given topic and number of questions.";
                    } 
                
                else 
                    {
                        $randomIndex = array_rand($filteredRows);
                        $randomRow = $filteredRows[$randomIndex];
                        prettyPrint($randomRow);
                        // Now you can work with $randomRow and display the question text or other details
                    }

                // $randomIndex = array_rand($rows);
                // $randomRow = $rows[$randomIndex];

                // prettyPrint($rows);
        
                // DEV ONLY
                // prettyPrint($randomQuestion);
                // echo $randomQuestion['question_text'];
            } 
        
        else 
            {
                echo "No question found for the given topic.";
                err_rnd();
            }
    }

catch (PDOException $e) 
    {
        // Handle any exceptions that occur during the connection attempt
        echo "Connection failed: " . $e->getMessage();

        err_rnd();
    }
?>