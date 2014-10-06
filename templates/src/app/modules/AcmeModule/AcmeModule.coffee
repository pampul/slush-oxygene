angular.module("AcmeModule", ["ngRoute"]).config ($routeProvider) ->
  "use strict"
  $routeProvider.when "/acme",
    controller: "AcmeCtrl"
    templateUrl: "modules/AcmeModule/views/acme.html"

  return
