slush-oxygene
==============

> A [slush](http://slushjs.github.io) generator for AngularJS with Modules Scaffolding for scalable apps created for my enterprise : [Oxygene Interactive](http://www.oxygene-interactive.com/).
> [Slush Oxygene](https://github.com/Argetloum/slush-oxygene) is also a fork of the great Slush package : [slush-angular](https://github.com/slushjs/slush-angular)

## Installation

Install `slush-oxygene` globally:

```bash
npm install -g slush-oxygene
```

Remember to install `slush` globally as well, if you haven't already:

```bash
npm install -g slush
```

## Usage

Create a new folder for your project:

```bash
mkdir my-angular-app
```

Run the generator from within the new folder:

```bash
cd my-angular-app

slush oxygene
```

You will now be prompted to give your new AngularJS app a name, which will be dasherized and used in its `bower.json` and `package.json` respectively. The chosen name will be camelized and used as the main angular module as well, inside `src/app/app.js`.

### CSS Preprocessor

You can choose between `LESS`, `Stylus`, and `Sass` to use as the CSS Preprocessor for your project.
The preprocessor scaffolding is inspired by Todd Motto [fireshell](https://github.com/toddmotto/fireshell)

### Project structure

The project structure with the Acme Module example included will look like this:

```
my-angular-app/
├── .bowerrc
├── .csslintrc
├── .editorconfig
├── .gitignore
├── .jshintrc
├── bower.json
├── gulpfile.js                             # See "Gulpfile" below
├── karma.conf.js
├── README.md
├── package.json
└── src
    └── app
        ├── app.js/coffee                   # Main app module and configuration
        ├── index.html                      # The index.html / app layout template
        ├── assets                          # A folder meant for images and such...
        │   └── .gitkeep
        ├── modules
        │   └── AcmeModule                  # The name of the module
        │       ├── controllers             # The controllers path
        │       ├── directives              # The directives path
        │       ├── filters                 # The filters path
        │       ├── services                # The services path
        │       ├── views                   # The partial views path
        │       └── AcmeModule.js/coffee    # The Acme module
        └── styles
            ├── mixins                      # The mixins path
            ├── modules                     # The breakpoints, typo, variables ... path
            ├── partials                    # The partial views stylesheets path
            ├── vendor                      # The vendor path
            └── app.styl/less/scss          # Main app stylesheet
```

### Gulpfile

#### Development

To start developing in your new generated project run:

```bash
gulp serve
```

Then head to `http://localhost:3000` in your browser.

The `serve` tasks starts a static file server, which serves your AngularJS application, and a watch task which watches your files for changes and lints, builds and injects them into your index.html accordingly.

#### Tests

To run tests run:

```bash
gulp test
```

#### Production ready build - a.k.a. dist

To make the app ready for deploy to production run:

```bash
gulp dist
```

Now you have a `./dist` folder with all your scripts and stylesheets concatenated and minified, also third party libraries installed with bower will be concatenated and minified into `vendors.min.js` and `vendors.min.css` respectively.

## License

MIT
