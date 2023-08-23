<?php
    session_start();
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

    <?php

        require_once './tools/tools.php';

        // Please replace with chosen topic
        $topic = "switzerland";

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

        <div class="navigation">
        <button class="nav-button" id="prevButton">&lt;</button>

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
        ?>

        <button class="nav-button" id="nextButton">&gt;</button>
        </div>

    </div>

<!--     <div class="content gap-header">
        <div class="bubble bubble-big">
            <div>Question No.</div>
        </div>
    </div> -->

    <div class="content gap-header">

        <div class="bubble bubble-small box">

            <?php

                $selectedTheme = $_POST['quizDropdown'];
                $numQuestions = $_POST['numQuestions'];

                prettyPrint($selectedTheme);

                echo "<br>";

                prettyPrint($numQuestions);

                echo "<br>";

                prettyPrint($_POST);
            ?>

        </div>
        <div class="bubble bubble-small box">
            <!-- The question itself -->

            <?php

                // Verbinde mit mySQL, mit Hilfe eines PHP PDO Object
                $dbHost = getenv('DB_HOST');
                $dbName = getenv('DB_NAME');
                $dbUser = getenv('DB_USER');
                $dbPassword = getenv('DB_PASSWORD');

                try 
                    {
                        $conn = new PDO("mysql:host=$dbHost;dbname=$dbName;charset=utf8", $dbUser, $dbPassword);
                        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                        // $topic = "e-guitar";

                        $query = 'SELECT * FROM questions WHERE topic = :topic';
                        $stmt = $conn -> prepare($query);
                        $stmt->bindParam(':topic', $topic, PDO::PARAM_STR);  // Bind the topic parameter

                        $stmt -> execute();

                        $rows = $stmt->fetchALL(PDO::FETCH_ASSOC);

                        if ($rows) 
                            {
                                $randomIndex = array_rand($rows);
                                $randomStory = $rows[$randomIndex];
                        
                                // DEV ONLY
                                // prettyPrint($randomStory);
                        
                                echo $randomStory['question_text'];
                            } 
                        
                        else 
                            {
                                echo "No question found for the given topic.";
                                err_rnd();
                            }
                    }

                catch (PDOException $e) 
                    {
                        // Handle any exceptions that occur during the connection attempt
                        echo "Connection failed: " . $e->getMessage();

                        err_rnd();
                    }

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
                                            err_rnd();
                                        }

                                    echo '<img src="/images/' . $picture . '" alt="Image 1">';

                                }
                        ?>

                    </div>
                </div>

            </div>

        </div>

    </div>

        <!-- Choose the Answer -->
        <div class="content answers" name="answers">

            <div class="bubble bubble-question">
                    <div class="form-check">
                        <input class="answer-radio" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                        <label class="form-check-label" for="flexRadioDefault2">
                            Answer 1
                        </label>
                    </div>
            </div>

            <div class="bubble bubble-question">
                <div class="form-check">
                    <input class="answer-radio" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                    <label class="form-check-label" for="flexRadioDefault2">
                        Answer 2
                    </label>
                 </div>
            </div>

            <div class="bubble bubble-question">
                <div class="form-check">
                    <input class="answer-radio" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                    <label class="form-check-label" for="flexRadioDefault2">
                        Answer 3
                    </label>
                 </div>
            </div>

            <div class="bubble bubble-question">
                <div class="form-check">
                    <input class="answer-radio" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                    <label class="form-check-label" for="flexRadioDefault2">
                        Answer 4
                    </label>
                 </div>
            </div>
        </div>

    <div class="content">
        <div class="bubble bubble-submit">
            <!-- Next Question/Continue Button -->
            <div>Continue</div>
        </div>
    </div>

</div>

<script>
    const answerBubbles = document.querySelectorAll('.bubble-question');

    answerBubbles.forEach((bubble) => {
        bubble.addEventListener('click', () => {
            // Remove the 'selected' class from all bubbles
            answerBubbles.forEach((bubble) => {
                bubble.classList.remove('selected');
            });

            // Add the 'selected' class to the clicked bubble
            bubble.classList.add('selected');
        });
    });
</script>

</body>
</html>