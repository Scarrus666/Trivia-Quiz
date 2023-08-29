<?php

    session_start();

    //require_once "./tools/tools.php";

    $totalQuestions = $_SESSION['totalQuestions'];
    $_SESSION['totalQuestions'] = $totalQuestions;

    $questionNo = $_SESSION['questionsNumber'];
    $_SESSION['numQuestions'] = $questionNo;

    if($questionNo < 0)
        {
            header("Location: ./report.php");
            exit();
        }

    else
        {
            if(isset($_POST['flexRadioDefault']))
                {
                    // Get the present score and user answer
                    $score = $_SESSION['score'];
                    $answer = $_POST['flexRadioDefault'];

                    // Get the correct answer
                    $correctAnswer = $_SESSION['correctAnswer'];
                    
                    // add points if user answered correctly
                    if($answer == $correctAnswer)
                        {
                            $score++;
                            $_SESSION['score'] = $score;
                        }

                    else $_SESSION['score'] = $score;

                    // DEV ONLY - save the previous selected choice in SESSION for DEV reasons
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
                        echo "Score not found!";
                        err_rnd();
                    }

                header("Location: ./question.php");
                exit();
            }

    

?>
