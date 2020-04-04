
var app = angular.module('myRtApp', ["ngRoute"]);

app.config(function($routeProvider) {
    $routeProvider
        .when("/main", {
            templateUrl : "main.jsp"
        }).when("/red", {
            templateUrl : "red.jsp"
        }).when("/blue", {
            templateUrl : "blue.jsp"
        });
});
