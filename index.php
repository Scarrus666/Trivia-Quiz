<?php
    session_start();

    require_once './tools/tools.php';
    // require_once '/tools/db.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="./css/mystyle.css"/>
    <script src="js/main.js"></script>
    <title>Take a Quiz!</title>

</head>

<body>

    <div class="header">
        <h2>How well do you know?</h2>
        <h6>Come take a quiz with us and test your knowledge</h6>
    </div>

    <div class="content gap-header">
        <div class="bubble bubble-big">
            <div>Do you know?</div>
        </div>
    </div>

    <div class="content">

        <div class="bubble bubble-small">
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
        </div>

        <div class="images-div">

            <div class="center-images">
    
                <div class="image-container">
                    <div class="image">
                        <img src="/images/geography-1.jpg" alt="Image 1">
                    </div>

                    <div class="image">
                        <img src="/images/Branches-of-Zoology.png" alt="Image 2">
                    </div>            
                </div>
    
                <div class="image-container">
                    <div class="image">
                        <img src="/images/hands.jpg" alt="Image 3">
                    </div>

                    <div class="image">
                        <img src="/images/biology.jpg" alt="Image 4">
                    </div>
                </div>

            </div>

        </div>

    </div>

    <form action="./pitstop.php" method="post">

        <div class="content">
            <div class="bubble bubble-secondary bubble-dropdown">
                <!-- Quiz selection -->
                <label for="quizDropdown">Choose the Theme<br><hr></label>
                <select id="quizDropdown" name="quizDropdown">
                    <option value="" disabled selected hidden>Please Select</option>
                    <option value="e-guitar">Electric Guitars</option>
                    <option value="switzerland">Switzerland</option>
                    <option value="harmonica">Harmonicas</option>
                    <option value="maths">Mathematics</option>
                    <option value="football">Football</option>
                    <option value="anatomy">Anatomy</option>
                    <option value="swiss-animals">Animals in Switzerland</option>
                    <option value="language">Languages</option>
                </select>
            </div>
        </div>

        <div class="content">
            <div class="bubble bubble-secondary">
        <!-- Number of Questions -->
                <div class="question-container">
                    <label for="numQuestions">Number of Questions</label>
                    <input type="number" id="numQuestions" name="numQuestions" min="1" value="10">
                </div>
             </div>
        </div>

        <div class="content">
            <input type="submit" class="bubble bubble-submit" value="Take the Quiz">
        </div>
    </form>

</div>


</body>
</html>