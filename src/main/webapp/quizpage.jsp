<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Attend Quiz</title>

  <!-- External CSS -->
  <link rel="stylesheet" type="text/css" href="style.css"/>
  <link rel="stylesheet" type="text/css" href="citizenstyle.css"/>

  <!-- Bootstrap CSS (for styling) -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <!-- jQuery and Bootstrap JS -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <script>
    // JavaScript function to evaluate the quiz
    function submitQuiz(event) {
      event.preventDefault(); // Prevent form submission

      // Correct answers
      const correctAnswers = {
        q1: 'a',
        q2: 'a'
      };

      // Check if all answers are correct
      let passed = true;
      Object.keys(correctAnswers).forEach(question => {
        const selectedOption = document.querySelector(`input[name="${question}"]:checked`);
        if (!selectedOption || selectedOption.value !== correctAnswers[question]) {
          passed = false;
        }
      });

      // Display result
      const quizContainer = document.querySelector('.quiz-container');
      if (passed) {
        quizContainer.innerHTML = `
          <div align="center">
            <h2>Congratulations!</h2>
            <p>You have passed the quiz.</p>
            <button class="btn btn-primary" onclick="goBackToHome()">Back to Citizen Home</button>
          </div>
        `;
      } else {
        quizContainer.innerHTML = `
          <div align="center">
            <h2>Try Again</h2>
            <p>You have not passed the quiz. Please review your answers.</p>
            <button class="btn btn-primary" onclick="goBackToHome()">Back to Citizen Home</button>
          </div>
        `;
      }
    }

    // Function to redirect back to citizen home
    function goBackToHome() {
      window.location.href = "citizenhome.jsp"; // Replace with the actual URL of the Citizen Home page
    }
  </script>
</head>
<body>
  <h2 align="center"><b>Indian Constitution Quiz</b></h2><br/>

  <!-- Quiz Form -->
  <div class="quiz-container">
    <form onsubmit="submitQuiz(event)">
      <div class="quiz-question">
        <p><b>1. What is the fundamental duty of every citizen of India?</b></p>
        <label>
          <input type="radio" name="q1" value="a"> To respect the Constitution
        </label><br>
        <label>
          <input type="radio" name="q1" value="b"> To serve the army
        </label><br>
        <label>
          <input type="radio" name="q1" value="c"> To pay taxes
        </label><br>
      </div>

      <div class="quiz-question">
        <p><b>2. Which article guarantees the right to equality?</b></p>
        <label>
          <input type="radio" name="q2" value="a"> Article 14
        </label><br>
        <label>
          <input type="radio" name="q2" value="b"> Article 21
        </label><br>
        <label>
          <input type="radio" name="q2" value="c"> Article 19
        </label><br>
      </div>

      <div class="button-container">
        <input type="submit" value="Submit Quiz" class="btn btn-primary">
      </div>
    </form>
  </div>
</body>
</html>
