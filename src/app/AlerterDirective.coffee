module.exports = (app) ->
  app.directive "alerter", ->
    controller: "AlerterController"
    templateUrl: "directives/alerter.html"
    restrict: 'E'
