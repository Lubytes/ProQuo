var app = angular.module('proquo', ['ngMaterial']);

//General and basic controller. Currently only holds scope variables
app.controller('MainCtrl', ['$scope',
    function($scope) {
        $scope.title = "ProQuo";
        $scope.promo = "The most viewed trades this month.";

    }
]);

//login and sign up controller. Creates dialogues and redirects depending on which button the user clicks
app.controller('modalPopup', ['$scope',
    function DemoCtrl($scope, $mdDialog) {
        if ($scope.hideLogin === undefined) {
            $scope.hideLogin = "true";

        }
        this.openMenu = function($mdOpenMenu, ev) {
            $mdOpenMenu(ev);
        };

        //closing any dialogue box
        this.close = function(id) {
            document.getElementById(id).style.display = "none";
        };

        //if the user wants to login
        this.open = function(id) {
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
            name: 'Raphael Bronfman-Nadas',
            pic: 'http://placehold.it/200x200',
            todo: '[What does this team member to? Keep it short! This is also a great spot for social links!]'
        }, {
            name: 'Brandon Poole',
            pic: 'http://placehold.it/200x200',
            todo: 'Being head of front end is all fun and games until we get a userbase. '
        }, {
            name: 'Roc Wang',
            pic: 'http://placehold.it/200x200',
            todo: 'What does this team member to? Keep it short! This is also a great spot for social links!'
        }, {
            name: 'Ivana Kutesa',
            pic: 'http://placehold.it/200x200',
            todo: 'What does this team member to? Keep it short! This is also a great spot for social links!'
        }, {
            name: 'Salman Malik',
            pic: 'http://placehold.it/200x200',
            todo: 'What does this team member to? Keep it short! This is also a great spot for social links!'
        }];
    }
]);

app.controller('policyCtrl',['$scope',
    function($scope){
        $scope.policies=[{
            name: 'one',
            content: 'ONE'
        },{
            name: 'two',
            content: 'TWO'
        },{
            name: 'three',
            content: 'THREE'
        }];
    }
]);
