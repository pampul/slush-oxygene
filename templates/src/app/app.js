
angular.module('<%= modulename %>', [
  'ngRoute'<% if (example) { %>,
  'AcmeModule'<% } %>
])<% if (example) { %>
.config(function ($routeProvider) {
  'use strict';
  $routeProvider
    .otherwise({
      redirectTo: '/acme'
    });
})<% } %>;
