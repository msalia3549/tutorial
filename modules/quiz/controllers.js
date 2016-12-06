'use strict';
angular.module('Quiz').controller('quizGameController', ['$scope', '$window',
  '$rootScope', '$location', 'QuizService',
  function($scope, $window, $rootScope, $location, QuizService) {
    $scope.name = "Hello Sammy";
    $scope.people = [{
      name: "John"
    }, {
      name: "Paul"
    }, {
      name: "George"
    }, {
      name: "Ringo"
    }];
    $scope.quizdata = QuizService.Quizdata();
    JSON.stringify($scope.quizdata);
    console.log($scope.quizdata);
    $scope.form_submit = function() {
        console.log("clicked person " + $scope.radioValue);
      }
      //$scope.quizdata = QuizService.Quiz();
    console.log($scope.quizdata);
  }
]).directive('quizGame', function() {
  return {
    restrict: 'E',
    scope: {
      title: '='
    },
    controller: 'quizGameController',
    templateUrl: 'modules/quiz/views/quizGame.html'
  }
});
