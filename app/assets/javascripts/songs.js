$(document).ready(function() {

  function checkCorrectness($input) {
    $input.focus(function() {
      // can add stuff here
    }).blur(function() {
      markCorrectness($input);
    });
  }

  function markCorrectness($input) {
    addCorrectnessClass($input);
    showCorrectness($input);
    grade();
  }

  function grade() {
    var numCorrect = $("input.correct").length;
    $('#num-correct').html(numCorrect);
  }

  function updateLevelDropdown() {
  // Need to update the dropdown menu on page load. This is kinda ugly, though. An AJAX request might make this cleaner.
    var $options = $("#select-level").children();
    var query = window.location.search;
    // Select normal level by default (if there's no query).
    if (!query) {
      query = "3";
    }
    var level = query.slice(query.length-1);
    $($options[level-1]).attr("selected","selected");
  }

  function selectLevel() {
    $("#select-level").change(function() {
      if (this.value) {
        window.location.search = this.value;
      }
    });
  }

  function addCorrectnessClass($input) {
    var userAnswer = $input.val().toLowerCase();
    var correctAnswer = $input.data("correct-answer").toLowerCase();
    if (userAnswer === "") return;
    if (userAnswer === correctAnswer) {
      $input.addClass("correct");
      $input.removeClass("incorrect");
    } else {
      $input.addClass("incorrect");
      $input.removeClass("correct");
    }
  }

  function showCorrectness($input) {
    var s = $input.next(".answer-correctness");
    if ($input.hasClass("correct")) {
      var correctCheck = "<span class='correct fa-stack fa-1x'><i class='fa fa-check-circle fa-2x'></i></span>";
      s.html(correctCheck)
    } else if ($input.hasClass("incorrect")) {
      var correctAnswer = $input.data("correct-answer");
      var incorrectCross = "<span class='incorrect fa-stack fa-1x'><i class='fa fa-times-circle fa-2x'></i></span>"
      var help = '<span data-toggle="tooltip" data-placement="top" data-original-title="' + correctAnswer + '" class="fa-stack fa-1x"><i class="fa fa-question-circle fa-2x"></i></span>'
      s.html(incorrectCross + help)
      $('[data-toggle="tooltip"]').tooltip({ container: 'body' });
    }
  }

  function addEnterListener($input) {
    $input.on('keypress', function (event) {
      if(event.which === 13){
        markCorrectness($input);
      }
    });
  }

  function evaluateLyrics() {
    $.each($("input"), function( index, value ) {
      var $value = $(value);
      checkCorrectness($value);
      addEnterListener($value);
    });
  }

  selectLevel();
  updateLevelDropdown();
  evaluateLyrics();
});
