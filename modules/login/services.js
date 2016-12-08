'use strict';

angular.module('Login')
  // registration service
.factory('LoginService',
    ['Base64','$rootScope','$location','$http','$cookieStore','$localStorage','$sessionStorage','RegistrationService','EncodeService',
    function(Base64,$rootScope,$location,$http,$cookieStore,$localStorage,$sessionStorage,LoginService,RegistrationService,EncodeService){
      var service = {};
      service.Login = function(player_login_data) {
      var login_post_data = {};
      login_post_data.alias = Base64.encode(player_login_data.alias);
      login_post_data.password = Base64.encode(player_login_data.password);

      console.log(login_post_data);
      var hello = $http.post('http://localhost:3000/quiz/quiz_data_api', login_post_data)
          .success(function (res) {
            if(res == 'success') {
            $location.path('/');
              console.log("Hello redirect");
              $localStorage.login_res_status = res;
            }else {
             var error = "Please enter the valid details";
              $localStorage.login_res_status = 'invalid';
             console.log(error);
            }
            console.log(res);
            console.log("this is working fine");
          });
      };
  return service;
}])

.factory('EncodeService',['Base64','$rootScope','$location','$http','$cookieStore','$localStorage','$sessionStorage','$window',function(Base64,$rootScope,$location,$http,$cookieStore,$localStorage,$sessionStorage,$window,LoginService) {
  var service = {};
  service.SetCredentials = function (alias, res_code) {
    var enc_alias = Base64.encode(alias);
   console.log("encode data`");
    var enc_authdata = Base64.encode(res_code);

//    $rootScope.globals = {
//      currentUser: {
//        alias: enc_alias,
//        authdata: enc_authdata
//      }
//    };
//    $http.defaults.headers.common['Authorization'] = 'Advanced ' + enc_alias + enc_authdata; // jshint ignore:line
//    $cookieStore.put('globals', $rootScope.globals);
  };
  service.ClearCredentials = function () {
    console.log("Hello cleat");
//    $rootScope.globals = {};
//    $cookieStore.remove('globals');
//    $http.defaults.headers.common.Authorization = 'Advanced ';
   $window.localStorage.clear();
  };
  return service;
}]);
