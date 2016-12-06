'use strict';

angular.module('Registration')

.controller('RegistrationController',
    ['$scope','$rootScope','$location','RegistrationService',
    function ($scope,$rootScope,$location,RegistrationService) {
       //registration handler
      $scope.register = function() {
        var player_reg_data = {};
        player_reg_data.alias = $scope.alias;
        player_reg_data.password = $scope.password;
        player_reg_data.firstname = $scope.firstname;
        player_reg_data.lastname = $scope.lastname;
        player_reg_data.mobile = $scope.mobile;
        player_reg_data.email_id = $scope.email_id;
        player_reg_data.address = $scope.address;
        player_reg_data.city = $scope.city;
         //register service
        RegistrationService.Register(player_reg_data,function(response) {
          if(response.success) {
            $location.path('/thanks');
          }
          else {
            $scope.error = response.message;
          }
        });
      }
   }]);

