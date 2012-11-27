module Project
  class App < Sinatra::Base
    set :root, Project.root
    enable :sessions

    set :sprockets, Sprockets::Environment.new(root) { |env|
      env.append_path(root.join('assets', 'stylesheets'))
      env.append_path(root.join('assets', 'javascripts'))
      env.append_path(root.join('assets', 'images'))
    }

    configure :development do
      register Sinatra::Reloader
    end

    helpers do
      def asset_path(source)
        "/assets/" + settings.sprockets.find_asset(source).digest_path
      end
    end

    # Route setup and application details

    get '/' do
      erb :index
    end
  end
end