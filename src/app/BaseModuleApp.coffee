app = angular
  .module('BaseModuleApp', [
    'module-templates'
  ])

require("./AlerterDirective.coffee")(app)
require("./AlerterController.coffee")(app)
