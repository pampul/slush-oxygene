angular.module('<%= modulename %>', [
  'ngRoute'<% if (example) { %>
  'AcmeModule'<% } %>
])<% if (example) { %>
.config ($routeProvider) ->
  'use strict'
  $routeProvider
    .otherwise
      redirectTo: '/acme'
<% } %>
