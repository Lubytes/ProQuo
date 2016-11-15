var app = angular.module('proquo', ['ngMaterial']);

//General and basic controller. Currently only holds scope variables
app.controller('MainCtrl', ['$scope',
    function($scope){
        $scope.title = "ProQuo";
        $scope.promo = "The most viewed trades this month.";

    }]);

//login and sign up controller. Creates dialogues and redirects depending on which button the user clicks
app.controller('LoginCtrl', ['$scope',
    function DemoCtrl($scope, $mdDialog) {
        if ($scope.hideLogin === undefined){
            $scope.hideLogin = "true";
            $scope.c = "hello";

        }
        this.openMenu = function($mdOpenMenu, ev) {
          $mdOpenMenu(ev);
        };

        //closing any dialogue box (for now only closes one specfic). Use a function variable in the future
        this.close = function() {
            document.getElementById("myModal").style.display = "none";
        };

        //if the user wants to login
        this.login = function() {
            document.getElementById("myModal").style.display = "block";
        };

        //if the user decides to create an account
        this.signup = function() {

        };
    }]);