var app = angular.module('proquo', ['ngMaterial']);

app.controller('MainCtrl', ['$scope',
    function($scope){
        $scope.title = "ProQuo";
        $scope.promo = "The most viewed trades this month.";

    }]);