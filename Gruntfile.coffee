
module.exports = (grunt) ->
    # Project configuration
    grunt.initConfig
        pug:
            compile:
                files:
                    'build/index.html': [ 'src/pages/index.pug' ]
        watch:
            pug:
                files: [ 'src/pages/**/*.pug' ]
                tasks: [ 'pug' ]
    # Load plugins
    grunt.loadNpmTasks 'grunt-contrib-pug'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    # Default task
    grunt.registerTask 'default', [
        'pug', 'watch'
    ]
