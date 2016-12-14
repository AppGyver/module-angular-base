module.exports = (app) ->
  app.controller "AlerterController", [
    "$scope"
    ($scope) ->
      $scope.text = supersonic.module.attributes.get("text")

      $scope.alert = ->
        supersonic.ui.dialog.alert($scope.text)
  ]
