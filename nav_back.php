<?php

    session_start();
    
    require_once './tools/tools.php';

    $questionNo = $_SESSION['questionsNumber'];
    $totalQuestions = $_SESSION['totalQuestions'];

    $questionsLeft = $totalQuestions - $questionNo;

    if($questionsLeft = 1)
        {
            $_SESSION['numQuestions'] = $totalQuestions;
            $_SESSION['pagesBack']++;
            header("Location: ./question.php");
            exit();
        }

    else if($questionsLeft = 0)
        {
            $_SESSION['numQuestions'] = $totalQuestions;
            header("Location: ./question.php");
            exit();
        }

    else $_SESSION['numQuestions'] = $questionNo + 2;
    $_SESSION['pagesBack']++;

    header("Location: ./question.php");
    exit();
    
?>