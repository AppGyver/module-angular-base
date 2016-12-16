# Composer Angular Base Module example

This is the source code of an AngularJS base module. It can be used to build your own modules using AngularJS.

After deployment, you need to create (in the Composer web tool's module properties) an attribute `links` of the type `routes` for the module to work.

## Getting started

Please refer to [Composer Module development documentation](http://enterprise-docs.appgyver.com/docs/custom-module-getting-started) for in-depth instructions.

## Initial Setup:

Install dependencies:

    make install

Connect your module to an existing Composer application. [Retrieve your application-specific command from Composer:](https://composer2.appgyver.com/modules/connect)

    steroids module init <arguments from Composer>

When your Composer application configuration changes:

    steroids module refresh

## Development

The module development environment is used through `steroids connect`. Run the following command:

    steroids connect --watch=src

The mobile version of your module will be accessible as a regular Steroids application would be. The Steroids Connect screen has a *module* tab where you can work with the module as it would appear on the web.

## Bower dependencies

If you need to add Bower dependencies to your forked module, please note that the actual files (e.g. `supersonic.js`) used by the module are included individually in the `Gruntfile.coffee` file. This is to keep app size low, because Bower packages have a lot of unncessary files in them, and thus we don't want to copy over the whole `bower_components` folder.

## Deployment

Deploy your module to make it available for Composer applications:

    steroids module deploy

## Potential Issues

* Usemin requires that files be annotated whether they should be minified.

You get the following error if the annotation is missing:
  `In case Warning: Required config property "concat.generated" missing. Use --force to continue.`

Add the following annotation in src/index.html:
  <!-- build:js module.min.js -->
  <!-- endbuild -->

If you don't want minification, leave annotation empty. If you want minification,
add the `<script>` tags of the minifiable files between the tags `build:js` and `endbuild`.
