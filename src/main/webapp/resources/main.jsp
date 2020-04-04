

<html>
<head>
    <title>MAIN</title>
    <script src='angular.min.js'></script>
    <script src='angular-route.js'></script>
    <script src='myRouter.js'></script>

</head>
    <BODY ng-app="myRtApp">
        <a href="#!red">Red</a>
        <a href="#!blue">Blue</a>
        <div ng-view style="height: 100%; width: 100%;"></div>
    </BODY>
</html>