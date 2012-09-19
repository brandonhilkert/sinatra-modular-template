$: << File.expand_path('../lib', __FILE__)

require 'rubygems'
require 'project' # include project lib

map '/assets' do
  run Project::App.sprockets
end

map '/' do
  run Project::App # run project App
end
