require './lib/project'

map '/assets' do
  run Project::App.sprockets
end

map '/' do
  run Project::App
end
