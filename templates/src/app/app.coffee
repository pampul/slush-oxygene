angular.module('<%= modulename %>', [
  'ngRoute'<% if (example) { %>
  '<%= modulename %>.todo'<% } %>
])<% if (example) { %>
.config ($routeProvider) ->
  'use strict'
  $routeProvider
    .otherwise
      redirectTo: '/'
<% } %>
