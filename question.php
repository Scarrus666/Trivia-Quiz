<?php
    session_start();

    require_once './tools/tools.php';

    $filteredRows = $_SESSION['filteredRows'];
    $topic = $_SESSION['topic'];

    // Display the next question
    if(isset($_SESSION['numQuestions']))
        {
            $questionNo = $_SESSION['numQuestions'];
            $questionNo--;

            if($questionNo < 0)
                {
                    header("Location: ./report.php");
                    exit();
                }
        }

    else
        {
            echo "cannot find Question Numbers";

            err_rnd();
            exit();
        }

    // check if a score has already been set for 
    if(isset($_SESSION['score']))
        {
            $score = $_SESSION['score'];
            $_SESSION['score'] = $score;
        }

    else
        {
            echo "Score not found!";
            err_rnd();
        }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TTrivia Quiz</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <?php

        if($topic == "e-guitar")
            {
                echo '<link rel="stylesheet" href="./css/evil.css"/>';
            } 
        
        else
            {
                echo '<link rel="stylesheet" href="./css/mystyle.css"/>';
            }
    ?>

    <script src="js/main.js"></script>
</head>

<body>

    <div class="header">

        <div class="home-link">
            <a href="./reset.php">Home</a>
        </div>

        <div class="header-middle">
            <div class="navigation">
            <form action="./nav_back.php">
                <button class="nav-button" id="prevButton">&lt;</button>
            </form>

            <?php

                if($topic == 'e-guitar')
                    {
                        echo '<h1>What do you know about electric guitars?</h1>';
                    }

                else if($topic == 'switzerland')
                    {
                        echo '<h2>What do you know about Switzerland?</h2>';
                    }

                else if($topic == 'harmonica')
                    {
                        echo '<h2>What do you know about harmonicas?</h2>';
                    }

                else if($topic == 'maths')
                    {
                        echo '<h2>What do you know about mathematics?</h2>';
                    }

                else if($topic == 'football')
                    {
                        echo '<h2>What do you know about football?</h2>';
                    }

                else if($topic == 'anatomy')
                    {
                        echo '<h2>What do you know about anatomy?</h2>';
                    }

                else if($topic == 'language')
                    {
                        echo '<h2>What do you know about languages?</h2>';
                    }

                else if($topic == 'swiss-animals')
                    {
                        echo '<h2>What do you know about the animals in Switzerland?</h2>';
                    }
            ?>

            <form action="./nav_forward.php">
                <button class="nav-button" id="nextButton">&gt;</button>
            </form>
            </div>
            </div>

    </div>



<!--     
        THE FOLLOWING IS JUST FOR DEBUG PURPOSES

        <div class="content gap-header">
        <div class="bubble bubble-small box" style="font-size: 0.8em">

            <?php

                // DEV ONLY
                prettyPrint($filteredRows);
                prettyPrint($topic);

                if(isset($_SESSION['previousChoice']))
                {
                    $previousAnswer = $_SESSION['previousChoice'];
                    echo 'Your previous choice was: ' . $previousAnswer . '<br>';
                }

                else echo 'No previous answer<br>';

                if(isset($score)) echo 'Your score is: ' . $score . '<br>';
                else echo 'No score set<br>';

                if(isset($questionNo)) echo 'Question Number: ' . $questionNo . '<br>';
                else echo 'No Question Number set<br>';

            ?>

        </div>
    </div> -->

    <div class="content gap-header">
        <div class="bubble bubble-small box">
            <!-- The question itself -->

            <?php

                // DEV ONLY
                // prettyPrint($questionNo);

                $actualQuestion = $filteredRows[$questionNo];

                echo $actualQuestion['question_text'];

                $_SESSION['questionsNumber'] = $questionNo;
                $_SESSION['correctAnswer'] = $actualQuestion['answer_id'];

            ?>

        </div>

        <div class="images-div">

            <div class="center-images">
    
                <!-- here comes and image which corresponds to the question topic -->
                <div class="image-container">
                    <div class="image">
                        <!-- <img src="/images/geography-1.jpg" alt="Image 1"> -->

                        <?php
                            if($topic == "e-guitar")
                                {
                                    $randomNumber = rand(0, 5);

                                    if ($randomNumber == 0) 
                                        {
                                            $picture = "mick_1.jpg";
                                        } 
                                    
                                    else if ($randomNumber == 1)
                                        {
                                            $picture = "mick_2.jpg";
                                        }

                                    else if ($randomNumber == 2)
                                        {
                                            $picture = "mick_3.jpg";
                                        }

                                    else if ($randomNumber == 3)
                                        {
                                            $picture = "mick_4.jpg";
                                        }

                                    else if ($randomNumber == 4)
                                        {
                                            $picture = "mick_5.jpg";
                                        }

                                    else if ($randomNumber == 5)
                                        {
                                            $picture = "mick_6.jpg";
                                        }

                                    else
                                        {
                                            echo 'No Mick Thomson pictures were found!<br>';
                                            err_rnd();
                                        }

                                    echo '<img src="/images/' . $picture . '" alt="Mick Thomson himself">';

                                }
                        ?>

                    </div>
                </div>

            </div>

        </div>

    </div>

    <form action="./process_question.php" method="post">
        <!-- Choose the Answer -->
        <div class="content answers" name="answers">

            <div class="bubble bubble-question">
                <div class="form-check">
                    <input type="radio" name="flexRadioDefault" id="flexRadioDefault1" value="1" checked>
                    <label class="form-check-label" for="flexRadioDefault1">
                        <span class="button-content">
                            <?php
                                echo $actualQuestion['answer_1'];
                            ?>
                        </span>
                    </label>
                </div>
            </div>

            <div class="bubble bubble-question">
                <div class="form-check">
                    <input type="radio" name="flexRadioDefault" id="flexRadioDefault2" value="2">
                    <label class="form-check-label" for="flexRadioDefault2">
                        <span class="button-content">
                            <?php
                                echo $actualQuestion['answer_2'];
                            ?>
                        </span>
                    </label>
                 </div>
            </div>

            <div class="bubble bubble-question">
                <div class="form-check">
                    <input type="radio" name="flexRadioDefault" id="flexRadioDefault3" value="3">
                    <label class="form-check-label" for="flexRadioDefault3">
                        <span class="button-content">
                            <?php
                                echo $actualQuestion['answer_3'];
                            ?>
                        </span>
                    </label>
                 </div>
            </div>

            <div class="bubble bubble-question">
                <div class="form-check">
                    <input type="radio" name="flexRadioDefault" id="flexRadioDefault4" value="4">
                    <label class="form-check-label" for="flexRadioDefault4">
                        <span class="button-content">
                            <?php
                                echo $actualQuestion['answer_4'];
                            ?>
                        </span>
                    </label>
                 </div>
            </div>
        </div>

        <div class="content">
            <input type="submit" class="bubble bubble-submit" value="Continue">

            </div>
        </div>
    </form>

</div>

</body>
</html>