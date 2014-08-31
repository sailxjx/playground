gulp = require 'gulp'
taskCompile = require './tasks/compiles'

gulp.task 'default', ->
  taskCompile('ygbhygc')()
