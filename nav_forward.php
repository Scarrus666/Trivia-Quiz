<?php

session_start();
    
require_once './tools/tools.php';

$totalQuestions = $_SESSION['totalQuestions'];
$_SESSION['totalQuestions'] = $totalQuestions;

$questionNo = $_SESSION['questionsNumber'];
$pagesBack = $_SESSION['pagesBack'];

if($pagesBack > 0)
    {
        $pagesBack--;

        // ONLY USE THE FOLLOWING IF THE PAGE DOESN'T GO BACK
        //$questionNo++;

        //$questionNo--;

        $_SESSION['numQuestions'] = $questionNo;
        $_SESSION['pagesBack'] = $pagesBack;

        header("Location: ./question.php");
        exit();
    }

else
    {
        $questionNo++;
        $_SESSION['numQuestions'] = $questionNo;

        header("Location: ./question.php");
        exit();
    }

?>