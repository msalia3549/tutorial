'use strict';

angular.module('Login')

.controller('LoginController',
    ['$scope','$rootScope','$location','$localStorage','$sessionStorage','LoginService','EncodeService',
    function ($scope,$rootScope,$location,$localStorage,$sessionStorage,LoginService,EncodeService) {
       //login handler

        EncodeService.ClearCredentials();
      $scope.login = function() {

        var player_login_data = {};
        var encode_status;
        player_login_data.alias = $scope.alias;
        player_login_data.password = $scope.password;
         //register service
        LoginService.Login(player_login_data);
        encode_status = $localStorage.login_res_status;
        //EncodeService.SetCredentials(player_login_data.alias,encode_status);
        console.log("dsfsdfsdf"+$localStorage.login_res_status);

        };
      }
   ]);

