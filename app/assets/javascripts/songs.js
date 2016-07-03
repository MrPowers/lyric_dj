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

  function selectPlayback() {
    $(".speed").click(function() {
      var vid = document.getElementById("audio-player");
      var selectedValue = $(this).data("value");
      vid.playbackRate = selectedValue;
      $("#current-speed").text(String(selectedValue * 100) + "%");
      // var vid = document.getElementById("audio-player");
      // vid.playbackRate = this.value;
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

  selectPlayback();
  evaluateLyrics();
});
