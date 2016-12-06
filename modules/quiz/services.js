'use strict';
angular.module('Quiz')
  // registration service
  .factory('QuizService', ['$http', '$rootScope', '$timeout',
    function($http, $rootScope, $timeout) {
      var service = {};
      service.Quizdata = function() {
        var quizdata = $http.post('http://localhost:3000/quiz/quiz_data_api')
          .success(function(res) {
              return res;
        });

        return quizdata;
      };
      return service;
    }
  ]);
