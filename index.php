<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Take a Quiz!</title>
    <link rel="stylesheet" href="./css/mystyle.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/main.js"></script>
</head>

<body>

    <?php
        require_once './tools/tools.php';
        
        // err_rnd();
    ?>

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

    <div class="content">
        <div class="bubble bubble-secondary">
            <!-- Quiz selection -->
            <div>Choose the Quiz</div>
        </div>
    </div>

    <div class="content">
        <div class="bubble bubble-secondary">
            <!-- Number of Questions -->
            <div>Questions:</div>
        </div>
    </div>

    <div class="content">
        <div class="bubble bubble-submit">
            <!-- submit button -->
            <div>Take the Quiz</div>
        </div>
    </div>

</div>

</body>
</html>