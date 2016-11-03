var app = angular.module('proquo', ['ngMaterial']);

app.controller('MainCtrl', ['$scope',
    function($scope){
        $scope.title = "ProQuo";
        $scope.promo = "The most viewed trades this month.";

    }]);

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
