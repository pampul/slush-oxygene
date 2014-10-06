angular.module("AcmeModule").controller "AcmeCtrl", ($scope, $window) ->
  "use strict"
  $scope.todos = JSON.parse($window.localStorage.getItem("todos") or "[]")
  $scope.$watch "todos", ((newTodos, oldTodos) ->
    $window.localStorage.setItem "todos", JSON.stringify(angular.copy($scope.todos))  if newTodos isnt oldTodos
    return
  ), true
  $scope.add = ->
    todo =
      label: $scope.label
      isDone: false

    $scope.todos.push todo
    $window.localStorage.setItem "todos", JSON.stringify(angular.copy($scope.todos))
    $scope.label = ""
    return

  $scope.check = ->
    @todo.isDone = not @todo.isDone
    return

  return
