module Project
  class App < Sinatra::Base
    set :root, Project.root
    enable :sessions

    configure :development do
      register Sinatra::Reloader
    end

    # Route setup and application details
  end
end