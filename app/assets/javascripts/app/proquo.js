var app = angular.module('proquo', ['ngMaterial']);

//General and basic controller. Currently only holds scope variables
app.controller('MainCtrl', ['$scope',
    function($scope){
        $scope.title = "ProQuo";
        $scope.promo = "The most viewed trades this month.";

    }]);

//login and sign up controller. Creates dialogues and redirects depending on which button the user clicks
app.controller('LoginCtrl', function DemoCtrl($mdDialog) {
        var originatorEv;

        this.openMenu = function($mdOpenMenu, ev) {
          originatorEv = ev;
          $mdOpenMenu(ev);
        };

        this.notificationsEnabled = true;
        this.toggleNotifications = function() {
          this.notificationsEnabled = !this.notificationsEnabled;
        };

        //if the user wants to login
        this.login = function() {
          $mdDialog.show(
            $mdDialog.alert()
              .targetEvent(originatorEv)
              .clickOutsideToClose(true)
              .parent('body')
              .title('Login Below:')
              .textContent('Future form goes here.')
              .ok('Login')
          );

          originatorEv = null;
        };

        //if the user decides to create an account
        this.signup = function() {
            $mdDialog.show(
              $mdDialog.alert()
                .targetEvent(originatorEv)
                .clickOutsideToClose(true)
                .parent('body')
                .title('Redirect')
                .textContent('This will redirect to a sign up page')
                .ok('buttons and stuff')
            );

            originatorEv = null;
        };
      });
