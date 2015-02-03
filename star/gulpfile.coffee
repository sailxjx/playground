gulp = require 'gulp'
plumber = require 'gulp-plumber'
coffee = require 'gulp-coffee'
less = require 'gulp-less'
concat = require 'gulp-concat'

paths =
  scripts: ["scripts/**/*.coffee"]
  styles: ["styles/**/*.less"]

gulp.task 'scripts', ->
  gulp
  .src paths.scripts
  .pipe plumber()
  .pipe coffee()
  .pipe concat 'app.js'
  .pipe gulp.dest 'scripts'

gulp.task 'styles', ->
  gulp
  .src paths.styles
  .pipe plumber()
  .pipe coffee()
  .pipe concat 'app.css'
  .pipe gulp.dest 'styles'

gulp.task 'watch', ['scripts', 'styles'], ->
  gulp.watch paths.scripts, ['scripts']
  gulp.watch paths.styles, ['styles']

gulp.task 'default', ['watch']
