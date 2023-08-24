<?php

    session_start();

    //require_once "./tools/tools.php";


    $questionNo = $_SESSION['questionsNumber'];
    $_SESSION['numQuestions'] = $questionNo;

    if(isset($_POST['flexRadioDefault']))
        {
            // Get the present score and user answer
            $score = $_SESSION['score'];
            $answer = $_POST['flexRadioDefault'];

            // add points if user answered correctly
            $correctAnswer = $_SESSION['correctAnswer'];
            
            if($answer = $correctAnswer)
                {
                    $score++;
                    $_SESSION['score'] = $score;
                }
        }

    // DEV ONLY
    //prettyPrint($questionNo);

    if(isset($_SESSION['score']))
        {
            $score = $_SESSION['score'];
        }

    else
        {
            echo "Score not found!";
            err_rnd();
        }

    header("Location: ./question.php");
    exit();

?>
<?php

?>