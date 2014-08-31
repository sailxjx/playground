path = require 'path'
gulp = require 'gulp'
jade = require 'gulp-jade'

module.exports = (dir) ->
  return ->
    gulp
      .src "#{dir}/views/index.jade"
      .pipe jade()
      .pipe gulp.dest '../public/ygbhygc'

    gulp
      .src "index.css"
      .pipe gulp.dest './public/ygbhygc'
