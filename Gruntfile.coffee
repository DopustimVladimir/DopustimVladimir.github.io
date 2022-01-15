
module.exports = (grunt) ->
    # Project configuration
    grunt.initConfig
        pug:
            compile:
                files:
                    'build/index.html': [ 'src/pages/index.pug' ]
        stylus:
            compile:
                files:
                    'build/css/main.css': [ 'src/styles/main.styl' ]
        coffee:
            compile:
                files:
                    'build/js/main.js': [ 'src/scripts/main.coffee' ]
        watch:
            pug:
                files: [ 'src/pages/**/*.pug' ]
                tasks: [ 'pug' ]
            stylus:
                files: [ 'src/styles/**/*.styl' ]
                tasks: [ 'stylus' ]
            coffee:
                files: [ 'src/scripts/**/*.coffee' ]
                tasks: [ 'coffee' ]
    # Load plugins
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-pug'
    grunt.loadNpmTasks 'grunt-contrib-stylus'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    # Build task
    grunt.registerTask 'build', [
        'pug', 'stylus', 'coffee'
    ]
    # Default task
    grunt.registerTask 'default', [
        'pug', 'stylus', 'coffee', 'watch'
    ]
