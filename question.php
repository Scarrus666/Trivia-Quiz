<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TTrivia Quiz</title>
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
        <h2>Geography, Biology, Zoology, Languages and more! How well do you know?</h2>
    </div>

    <div class="content gap-header">
        <div class="bubble bubble-big">
            <!-- The actual question Number -->
            <div>Question No.</div>
        </div>
    </div>

    <div class="content">

        <div class="bubble bubble-small">
            <!-- The question itself -->
            <p>Question.. Lorem Ipsum...</p>
        </div>

        <div class="images-div">

            <div class="center-images">
    
                <!-- here comes and image which corresponds to the question theme -->
                <div class="image-container">
                    <div class="image">
                        <img src="/images/geography-1.jpg" alt="Image 1">
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