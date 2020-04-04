<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>MAIN</title>
    <script src='<c:url value="/resources/angular.min.js"></c:url>'></script>
    <script src='<c:url value="/resources/angular-route.js"></c:url>'></script>
    <script src='<c:url value="/resources/myRouter.js"></c:url>'></script>

</head>
    <BODY ng-app="myRtApp">
        <a href="#!red">Red</a>
        <a href="#!blue">Blue</a>
        <div ng-view style="height: 100%; width: 100%;"></div>
    </BODY>
</html>