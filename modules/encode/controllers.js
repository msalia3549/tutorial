'use strict';

angular.module('Login')

.controller('LoginController',
    ['$scope','$rootScope','$location','LoginService',
    function ($scope,$rootScope,$location,LoginService) {
       //login handler
      $scope.login = function() {
        var player_login_data = {};
        player_login_data.alias = $scope.alias;
        player_login_data.password = $scope.password;
         //register service
        LoginService.Login(player_login_data)

        };
      }
   ]);

