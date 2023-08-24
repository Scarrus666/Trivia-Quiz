<?php

session_start();

// this a most important
require_once './tools/tools.php';

// DEV ONLY - check if the previous page submitted the values
// prettyPrint($_POST);

// Get the topic and set number of questions from previous page
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

        // create Array with all the questions(ROWS) in it
        $rows = $stmt->fetchALL(PDO::FETCH_ASSOC);

        // DEV ONLY - show me the rows
        // prettyPrint($rows);

        // shuffle the questions(ROWS) around (RANDOMIZE)
        shuffle($rows);

        // DEV ONLY - show me the reshuffled rows
        // prettyPrint($rows);

        // if $rows exists
        if ($rows) 
            {
                // create an array for the final questions(ROWS)
                $filteredRows = [];

                // for every entry(foreach) in $rows($key) extract one by one and put it in $row
                foreach ($rows as $key => $row) 
                    {
                        // As long as there are less entries in $rows($key) than the set nnumber of questions($numQuestions)
                        if ($key < $numQuestions) 
                            {
                                // DEV ONLY - display an array with all entries($key)
                                // prettyPrint($key);

                                // Insert the value from that particular row($row) as an Array entry into the $filteredRows Array  
                                $filteredRows[] = $row;
                            }   
                    }

                // Save the $filteredRows Array to Session(store in sessio_storage)
                $_SESSION['filteredRows'] = $filteredRows;

                $questionsNum = 0;

                // for each entry($row) in $filteredRows add 1 to $questionsNum
                foreach ($filteredRows as $key => $row)
                {
                    $questionsNum++;
                }

                $_SESSION['score'] = 0;
                $_SESSION['numQuestions'] = $questionsNum;
                $_SESSION['topic'] = $topic;

                // go to the next page
                header("Location: ./question.php");
                exit();
            }

        else 
            {
                echo "No question found for the given topic.";
                err_rnd();
                exit();
            }

        // CHECK IF TOPIC HAS ANY QUESTIONS    
/*         if (empty($filteredRows)) 
            {
                echo "No questions found for the given topic and number of questions.";
            } 
        
        else 
            {
                $randomIndex = array_rand($filteredRows);
                $randomRow = $filteredRows[$randomIndex];
                prettyPrint($randomRow);
                // Now you can work with $randomRow and display the question text or other details
            }    */   
    }

catch (PDOException $e) 
    {
        // Handle any exceptions that occur during the connection attempt
        echo "Connection failed: " . $e->getMessage();

        err_rnd();
        exit();
    }
?>