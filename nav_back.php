<?php

    session_start();
    
    require_once './tools/tools.php';

    $totalQuestions = $_SESSION['totalQuestions'];
    $_SESSION['totalQuestions'] = $totalQuestions;

    $questionNo = $_SESSION['questionsNumber'];
    $pagesBack = $_SESSION['pagesBack'];

    $questionsLeft = $totalQuestions - $questionNo;

    if($questionsLeft == 1)
        {
            $pagesBack++;

            $_SESSION['pagesBack'] = $pagesBack;
            $_SESSION['numQuestions'] = $totalQuestions;

            header("Location: ./question.php");
            exit();
        }

    else if($questionsLeft == 0)
        {
            $_SESSION['numQuestions'] = $totalQuestions;

            header("Location: ./question.php");
            exit();
        }

    else if($questionsLeft > 1)
        {
            $pagesBack++;
            $questionNo = $questionNo + 2;

            $_SESSION['pagesBack'] = $pagesBack;
            $_SESSION['numQuestions'] = $questionNo;

            header("Location: ./question.php");
            exit();
        }

    
?>