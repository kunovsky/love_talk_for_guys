angular
  .module('questions')
  .controller 'IndexController', ($scope, supersonic) ->

    $scope.current           = 1
    $scope.totalQuestions    = 93
    $scope.options           = duration: 0.3 ; curve: "linear"
    $scope.questionGroupings = {
      1: {
        1: "I’m all yours"
        2: "You are always my bride"
        3: "Remember the first time we kissed?"
        4: "I remember the first time I saw your face"
        5: "At the end of each day I’m so glad to see you again"
        6: "I love the way the light is falling on you"
        7: "I want to take care of you and protect you always"
        8: "I love it when you put your head on my chest"
        9: "Your face is incredibly beautiful to me"
        10: "Talk to me. What are you feeling?"
        11: "I love the curve of your back"
        12: "I cherish being with you this way"
        13: "When you’re sleeping I want to kiss your eyelids"
        14: "My heart leaps when you touch me like that"
        15: "I want to hold you close "
        16: "You are so incredibly feminine"
        17: "Your eyes open me up - I want to dive in!"
        18: "When you hold me I get so aroused"
        19: "I have no other home than in your arms"
        20: "I hear your heart beating against mine and it makes me happy"
        21: "I love your lips"
        22: "You’re such a great kisser"
        23: "This part of your neck is my favorite place to kiss "
        24: "I long for times we can be together like this"
        25: "You’re mine"
        26: "You open my heart"
        27: "This curve right here is so exciting "
        28: "I want no one but you"
        29: "Nothing is more beautiful to me than you"
        30: "I love you"
        31: "This curve right here is one of my favorites. I love kissing you there."
        32: "You are mine and I am yours"
        33: "You’re my closest friend in the world"
        34: "This part of you is like a flower in my hand"
        35: "Your touch feels so good "
        36: "Something inside me opens when we are together"
        37: "Come closer to me"
        38: "I feel so close to you"
        39: "What would you like right now?"
        40: "I’m very excited by you"
        41: "No one moves me like you do"
        42: "You’re so beautiful I can hardly keep my eyes off of you "
        43: "What feels good to you?"
        44: "I want you so much"
        45: "You look so good "
        46: "Your body is so arousing"
        47: "I just love touching you"
        48: "Nothing pleases me more than touching you here"
        49: "I love touching your bottom"
        50: "How does this feel?"
        51: "Tell me what you’re thinking"
        52: "Open up to me"
        53: "Yes, like that, do that some more"
        54: "Your hair is so beautiful"
        55: "You move so gracefully"
        56: "I love kissing your hands"
        57: "I’m all yours"
        58: "I’m feeling so happy with you"
        59: "How did you get this sexy?"
        60: "You’re so precious to me"
        61: "I love nibbling this ear lobe"
        62: "You are so exciting!"
        63: "You fill my heart"
        64: "This is so delicious"
        65: "Thank you for loving me"
        66: "Kissing you is better than eating [your favorite food]"
        67: "Put your arms around me now"
        68: "I love kissing you here"
        69: "I love it when you’re this strong"
        70: "I love your passion"
        71: "I love cuddling with you"
      }
      2: {
        1: "I feel like we’re dancing"
        2: "You know exactly what to do"
        3: "I love the way you’re moving"
        4: "I love the way we’re moving"
        5: "I could kiss you like this for hours"
        6: "I love caressing your breasts"
        7: "You’re incredible!"
        8: "Please, don’t stop – it’s so good."
        9: "I want to lick you here forever"
        10: "You taste so sweet "
        11: "This part of you is so feminine, so sexy"
        12: "I want to kiss you right here"
        13: "I want to be inside you more than anywhere "
        14: "You smell so good here I want to lick you until you come"
        15: "I love coming with you"
        16: "The way you’re touching me is amazing"
        17: "I love kissing your breasts"
        18: "Let’s never get up and leave this place"
        19: "That was the best"
        20: "You’re such a great lover "
        21: "That was an amazing experience"
        22: "This is the sweetest spot in the world"
      }
    }

    $scope.selectOptions  = [
      {group: 0, name: "All Phrases", questionCount: 93},
      {group: 1, name: "Endearments", questionCount: 71},
      {group: 2, name: "Down & Dirty", questionCount: 22},
    ]

    $scope.selectedGrouping = $scope.selectOptions[0]

    $scope.generateAllQuestions = () ->
      final = {}; count = 1
      for key, value of $scope.questionGroupings
        for innerKey, innerValue of value
          final[count] = innerValue
          count+=1
      $scope.questionGroupings[0] = final

    $scope.previousQuestion = () ->
      $scope.current -= 1
      $scope.current = $scope.totalQuestions if $scope.current < 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()

    $scope.nextQuestion = () ->
      $scope.current += 1
      $scope.current = 1 if $scope.current > $scope.totalQuestions
      supersonic.ui.animate("slideFromRight", $scope.options).perform()

    $scope.changeSelection = () ->
      $scope.current = 1
      $scope.totalQuestions = $scope.selectedGrouping.questionCount


    $scope.currentQuestion = () ->
      $scope.questionGroupings[$scope.selectedGrouping.group][$scope.current]

    $scope.resetQuestions = () ->
      return if $scope.current == 1
      $scope.current = 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()

    $scope.generateAllQuestions()