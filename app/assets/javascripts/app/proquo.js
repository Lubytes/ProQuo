var app = angular.module('proquo', ['ngMaterial']);

//General and basic controller. Currently only holds scope variables
app.controller('MainCtrl', ['$scope',
    function($scope) {
        $scope.title = "ProQuo";
        $scope.promo = "The most viewed trades this month.";

    }
]);

//login and sign up controller. Creates dialogues and redirects depending on which button the user clicks
app.controller('LoginCtrl', ['$scope',
    function DemoCtrl($scope, $mdDialog) {
        if ($scope.hideLogin === undefined) {
            $scope.hideLogin = "true";

        }
        this.openMenu = function($mdOpenMenu, ev) {
            $mdOpenMenu(ev);
        };

        //closing any dialogue box (for now only closes one specfic). Use a function variable in the future
        this.close = function(id) {
            document.getElementById(id).style.display = "none";
        };

        //if the user wants to login
        this.login = function(id) {
            document.getElementById(id).style.display = "block";
        };

        //if the user decides to create an account
        this.signup = function(id) {
            document.getElementById(id).style.display = "block";
        };
    }
]);

// about page angularJS
app.controller('aboutCtrl', ['$scope',
    function($scope) {
        $scope.header = "About Us";
        $scope.para = "Lorem ipsum dolor sit amet, consectetur adipisicing elit.";
        $scope.authors = [{
            name: 'John Smith',
            pic: 'http://placehold.it/200x200',
            todo: 'What does this team member to? Keep it short! This is also a great spot for social links!'
        }, {
            name: 'John Smith',
            pic: 'http://placehold.it/200x200',
            todo: 'What does this team member to? Keep it short! This is also a great spot for social links!'
        }, {
            name: 'John Smith',
            pic: 'http://placehold.it/200x200',
            todo: 'What does this team member to? Keep it short! This is also a great spot for social links!'
        }, {
            name: 'John Smith',
            pic: 'http://placehold.it/200x200',
            todo: 'What does this team member to? Keep it short! This is also a great spot for social links!'
        }, {
            name: 'John Smith',
            pic: 'http://placehold.it/200x200',
            todo: 'What does this team member to? Keep it short! This is also a great spot for social links!'
        }];
    }
]);
