'use strict';

angular.module('Login')
  // registration service   
.factory('LoginService',
    ['Base64','$rootScope','$location','$http','$cookieStore','RegistrationService',
    function(Base64,$rootScope,$location,$http,$cookieStore,LoginService,RegistrationService){
      var service = {};     
      service.Login = function(player_login_data) {
      var login_post_data = {};
      login_post_data.alias = Base64.encode(player_login_data.alias);
      login_post_data.password = Base64.encode(player_login_data.password);
      
      console.log(login_post_data);
      $http.post('http://localhost:3000/login/login_api', login_post_data)
          .success(function (res) {
            if(res == 'success') {
            $location.path('/');             
              console.log("Hello redirect");
            }else {
             var error = "Please enter the valid details";
             console.log(error);
            }
            console.log(res);
            console.log("this is working fine");
          });
      };
      


 
  return service;
    }]);

