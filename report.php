<?php

    session_start();

    require_once './tools/tools.php';

    $score = $_SESSION['score'];
    $topic = $_SESSION['topic'];
    $questionsNo = $_SESSION['totalQuestions'];

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
</head>

<body>

    <div class="header">

        <div class="home-link">
            <a href="./reset.php">Home</a>
        </div>

        <div class="header-text">

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

        </div>
    </div>

    <div class="content gap-header">
        <div class="bubble bubble-small box">
            <!-- The question itself -->

            <?php

                echo '<br>Your topic was ' . $topic . '.<br>';
                echo 'The total number of questions was ' . $questionsNo . '.<br>';
                echo 'You answered ' . $score . ' questions correctly.<br><br>';

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

</div>

</body>
</html>