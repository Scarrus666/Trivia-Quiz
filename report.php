<?php

session_start();

require_once './tools/tools.php';

$score = $_SESSION['score'];
$topic = $_SESSION['topic'];

echo 'Your topic was: ' . $topic . '<br>';
echo 'And your score was: ' .$score . '<br>';

?>