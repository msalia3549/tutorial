'use strict';

// declare modules
angular.module('Login', []);
angular.module('Home', []);
angular.module('Registration',[]);
angular.module('Quiz',[]);

angular.module('PlayngrabApp', [
    'Login',
    'Home',
    'Registration',
    'ngRoute',
    'ngCookies',
    'ngStorage',
    'Quiz'
])

.config(['$routeProvider', function ($routeProvider) {

    $routeProvider
        .when('/register',{
            controller: 'RegistrationController',
            templateUrl: 'modules/registration/views/register.html',
        })
        .when('/login', {
            controller: 'LoginController',
            templateUrl: 'modules/login/views/login.html',
            hideMenus: true
        })
        .when('/home',{

            templateUrl: 'modules/static_files/home.html'
        })
        .when('/about-us',{

            templateUrl: 'modules/static_files/about-us.html'
        })
        .when('/contact-us',{

            templateUrl: 'modules/static_files/contact-us.html'
        })
        .when('/products',{

            templateUrl: 'modules/static_files/products.html'
        })
        .when('/quiz',{
            controller: 'quizGameController',
            templateUrl: 'modules/quiz/views/quizGame.html'
        })
        .when('/', {
            controller: 'HomeController',
            templateUrl: 'modules/quiz/views/home.html'
        })
        .otherwise({ redirectTo: '/login' });
}])

.run(['$rootScope', '$location', '$cookieStore', '$http','$localStorage','$sessionStorage',
    function ($rootScope, $location, $cookieStore, $http,$localStorage,$sessionStorage) {
        // keep user logged in after page refresh
//        $rootScope.globals = $cookieStore.get('globals') || {};
//        if ($rootScope.globals.currentUser) {
//            $http.defaults.headers.common['Authorization'] = 'Basic ' + $rootScope.globals.currentUser.authdata; // jshint ignore:line
//        }
        var res_login_status = $localStorage.login_res_status;
        $rootScope.$on('$locationChangeStart', function (event, next, current) {
            // redirect to login page if not logged in
            // if ($location.path() !== '/login' && res_login_status !== 'success') {
            //     $location.path('/login');
            // }
        });
    }]);
