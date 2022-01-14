
module.exports = (grunt) ->
    # Project configuration
    grunt.initConfig
        pug:
            compile:
                files:
                    'build/index.html': [ 'src/pages/index.pug' ]
        coffee:
            compile:
                files:
                    'build/js/main.js': [ 'src/scripts/main.coffee' ]
        watch:
            pug:
                files: [ 'src/pages/**/*.pug' ]
                tasks: [ 'pug' ]
            coffee:
                files: [ 'src/scripts/**/*.coffee' ]
                tasks: [ 'coffee' ]
    # Load plugins
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-pug'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    # Default task
    grunt.registerTask 'default', [
        'pug', 'coffee', 'watch'
    ]
