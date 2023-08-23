<?php
    // DIES HIER IST DER CODE VON CHRIS

    require_once "/tools/tools.php";

    // Verbinde mit mySQL, mit Hilfe eines PHP PDO Object
    $dbHost = getenv('DB_HOST');
    $dbName = getenv('DB_NAME');
    $dbUser = getenv('DB_USER');
    $dbPassword = getenv('DB_PASSWORD');


    $dbConnection = new PDO("mysql:host=$dbHost;dbname=$dbName;charset=utf8", $dbUser, $dbPassword);
    $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    function fetchQuestionById()
        {
            // echo "<p>fetchQuestionById()</p>";

            $sqlStatement = $dbConnection->query("SELECT * FROM questions WHERE id = $id");
            $questionData = $sqlStatement->fetch(PDO::FETCH_ASSOC);

            return $questionData;
        }

    $questionId = 1;

?>