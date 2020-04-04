var app = angular.module('myApp', []);


app.run(function($rootScope) {
   $rootScope.color = "Red";
});

app.controller('myCtrl', function($scope) {
    $scope.firstName= "Mandar";
    $scope.lastName= "Bhosale";
});

app.controller('secondCtrl', function($scope) {
    $scope.firstName= "Harish";
    $scope.lastName= "Shinde";
});

app.directive("myDirective", function() {
    return {
        template : "This is my first directive"
    };
});

app.directive("myDirectiveA", function() {
    return {
        template : "Custome directive restrict 'A' (Attribute)",
        restrict: "A"
    };
});

app.directive("myDirectiveE", function() {
    return {
        template : "Custome directive restrict 'E' (Element)",
        restrict: "E"
    };
});

app.directive("myDirectiveC", function() {
    return {
        template : "Custome directive restrict 'C' (Class)",
        restrict: "C"
    };
});

app.directive("myDirectiveM", function() {
    return {
        restrict : "M",
        template : "Custome directive restrict 'M' (Comment)"
    };
});

app.controller("formCtrl", function($scope) {

});

app.controller('methodController', function($scope) {
    $scope.fullName = function() {
        return "Mandar" + " " + "Bhosale";
    };
});

app.controller("scopeCtrl", function($scope) {
    $scope.color = "Blue";
});

app.controller("filterCtrl", function($scope) {
    $scope.firstName = "Mandar";
    $scope.price = 20;
    var obj = {};
    obj["city"] = "Pune";
    obj["state"] = "Maharashtra";
    obj["country"] = "India";
    $scope.object = obj;

    $scope.date = "2020/12/25";

    $scope.names = [
        'Jani',
        'Carl',
        'Margareth',
        'Hege',
        'Joe',
        'Gustav',
        'Birgit',
        'Mary',
        'Kai'
    ];

    $scope.details = [
        {name:'Jani',country:'Norway'},
        {name:'Carl',country:'Sweden'},
        {name:'Margareth',country:'England'},
        {name:'Hege',country:'Norway'},
        {name:'Joe',country:'Denmark'},
        {name:'Gustav',country:'Sweden'},
        {name:'Birgit',country:'Denmark'},
        {name:'Mary',country:'England'},
        {name:'Kai',country:'Norway'}
    ];
    $scope.orderByMe = function(x) {
        $scope.myOrderBy = x;
    }

});

app.filter('myFormat', function() {
    return function(x) {
        var i, c, txt = "";
        for (i = 0; i < x.length; i++) {
            c = x[i];
            if (i % 2 == 0) {
                c = c.toUpperCase();
            }
            txt += c;
        }
        return txt;
    };
});

app.controller("serviceCtrl", function($scope, $location) {
    $scope.url = $location.absUrl();
});

app.controller("selectOptionCtrl", function($scope) {
    $scope.values = ["VALUE-A", "VALUE-B", "VALUE-C", "VALUE-D"];
    $scope.arrObj = [{model : "Ford Mustang", color : "red"},
        {model : "Fiat 500", color : "white"},
        {model : "Volvo XC90", color : "black"}];
    $scope.cars = {
        car01 : "Ford",
        car02 : "Fiat",
        car03 : "Volvo"
    };
});

app.controller("serviceCtrl", function($scope, myService) {
    $scope.myName = myService.upperCase("mandar");
});

app.service("myService", function() {
    this.upperCase = function(str) {
        return str.toUpperCase();
    }
});