<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <jsp:include page="link.jsp" />

        <style>
            input.ng-invalid {
                background-color: tomato;
            }
        </style>
    </head>
    <body data-ng-app="myApp">

        <a href="#!red">Red</a>
        <a href="#!blue">Green</a>

        <div ng-view></div>

        <fieldset>
            <legend>Controller and model example</legend>
            <div  data-ng-controller="myCtrl">
                First Name: <input type="text" data-ng-model="firstName"><br>
                Last Name: <input type="text" data-ng-model="lastName"><br>
                <br>
                Full Name: {{firstName + " " + lastName}}
            </div>
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Second controller example</legend>
            <div  data-ng-controller="myCtrl">
                <div data-ng-controller="secondCtrl">
                    {{firstName}}
                </div>
            </div>
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Custom directive example</legend>
            <div my-directive></div>
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Custom directive restriction Attribute</legend>
            <div my-directive-a></div>      <%--This will work--%>
            <my-directive-a></my-directive-a>
            <div class="my-directive-a"></div>
            <!-- directive: my-directive-a -->
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Custom directive restriction Element</legend>
            <div my-directive-e></div>
            <my-directive-e></my-directive-e>   <%--This will work--%>
            <div class="my-directive-e"></div>
            <!-- directive: my-directive-e -->
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Custom directive restriction Class</legend>
            <div my-directive-c></div>
            <my-directive-c></my-directive-c>
            <div class="my-directive-c"></div>  <%--This will work--%>
            <!-- directive: my-directive-c -->
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Custom directive restriction Comment</legend>
            <div my-directive-m></div>
            <my-directive-m></my-directive-m>
            <div class="my-directive-m"></div>
            <!-- directive: my-directive-m -->     <%--This will work--%>
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Loop example</legend>
            <div data-ng-init = "names = ['abc', 'pqr', 'xyz']">
                <ul>
                    <li data-ng-repeat="x in names">{{x}}</li>
                </ul>
            </div>
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Object Loop example</legend>
            <div data-ng-init = "namesObject = [{name: 'abc', country: 'India'}, {name: 'pqr', country: 'Nepal'}, {name: 'xya', country: 'Nederland'}]">
                <ul>
                    <li data-ng-repeat="x in namesObject">{{x.name + "  [" + x.country + "]"}}</li>
                </ul>
            </div>
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Application status and ng-class according to status</legend>
            <div data-ng-controler="formCtrl">
                <form name="myForm" data-ng-init="myEmail='abc@gmail.com'">
                    <input type="email" name="emailId" data-ng-model="myEmail" required>
                    <h4>STATUS</h4>
                    Valid:  {{myForm.emailId.$valid}} <br><br>
                    Dirty: {{myForm.emailId.$dirty}} <br><br>
                    Touched: {{myForm.emailId.$touched}}
                </form>
            </div>
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Controller function</legend>
            <div ng-controller="methodController">
                Full Name : {{ fullName() }}
            </div>
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Scope example ($rootScope and $scope) $scope priority is high in controller</legend>
            <div ng-controller="scopeCtrl">
                {{ color }}
            </div>
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Filters example</legend>
            <div ng-controller="filterCtrl">
                Uppercse : {{ firstName | uppercase }}  <br>
                Lowercase : {{ firstName | lowercase }}  <br>
                Currency : {{ price | currency }} <br>
                Json : {{ object | json }} <br>
                Date : {{ date | date: 'dd/MM/yyyy'}} <br>
                Filter : show names that contains 'i' &nbsp;&nbsp;&nbsp; Original name array : {{ names }}
                <ul data-ng-repeat="x in names | filter : 'i'">
                    <li>{{ x }}</li>
                </ul> <br>
                Filter by : <input type="text" ng-model="test"> <br>
                <ul data-ng-repeat="x in names | filter : test ">
                    <li>{{ x }}</li>
                </ul> <br>
                <table border="1" width="100%">
                    <tr>
                        <th ng-click="orderByMe('name')">Name</th>
                        <th ng-click="orderByMe('country')">Country</th>
                    </tr>
                    <tr ng-repeat="x in details | orderBy:myOrderBy">
                        <td>{{x.name}}</td>
                        <td>{{x.country}}</td>
                    </tr>
                </table> <br>
                Custom filter :
                <ul>
                    <li data-ng-repeat="x in names track by $index">
                        {{ x | myFormat }}
                    </li>
                </ul>
            </div>
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>In built service</legend>
            <div ng-controller="serviceCtrl">
                Location.absUrl : {{ url }}
            </div>
        </fieldset>

        <br><hr>

        <fieldset>
            <legend>Select box</legend>
            <div ng-controller="selectOptionCtrl">
                <select ng-model="selectedName" ng-options="x for x in values">
                </select><br>
                <select ng-model="selectedObj" ng-options="x.model for x in arrObj">
                </select> &nbsp;&nbsp;
                <b><span data-ng-bind="selectedObj.color"></span></b> <br>
                <select ng-model="selectedCar" ng-options="x for (x, y) in cars">
                </select>
                <b><span data-ng-bind="selectedCar"></span></b> <br>
            </div>
        </fieldset>


        <br><hr>

        <fieldset>
            <legend>Custom service</legend>
            <div ng-controller="serviceCtrl">
                {{ myName }}
            </div>
        </fieldset>

    </body>
</html>
