
angular.module('<%= modulename %>', [
  'ngRoute'<% if (example) { %>,
  '<%= modulename %>.todo'<% } %>
])<% if (example) { %>
.config(function ($routeProvider) {
  'use strict';
  $routeProvider
    .otherwise({
      redirectTo: '/'
    });
})<% } %>;
