<?php

    session_start();

    //require_once "./tools/tools.php";


    $questionNo = $_SESSION['questionsNumber'];
    $_SESSION['numQuestions'] = $questionNo;

    if(isset($_POST['flexRadioDefault']))
        {
            $answer = $_POST['flexRadioDefault'];
            $_SESSION['previousChoice'] = $answer;
        }

    // DEV ONLY
    //prettyPrint($questionNo);

    if(isset($_SESSION['score']))
        {
            $score = $_SESSION['score'];
        }

    else
        {
            $score = 0;
        }

    header("Location: ./question.php");
    exit();

?>
<?php

?>