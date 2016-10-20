var app = angular.module('proquo', ['ngSanitize', 'ngMaterial']);

app.controller('MainController', ['$scope', function($scope) {
    $scope.title = 'ProQuo';
    $scope.promo = 'The most viewed trades this month.';

}]);
