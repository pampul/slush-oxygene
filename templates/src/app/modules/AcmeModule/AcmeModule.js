angular.module('AcmeModule', ['ngRoute'])
  .config(function ($routeProvider) {
    'use strict';

    $routeProvider
      .when('/acme', {
        controller: 'AcmeCtrl',
        templateUrl: 'modules/AcmeModule/views/acme.html'
      });
  });

