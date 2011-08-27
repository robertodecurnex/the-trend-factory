require 'rubygems'
require 'pakyow'

module PakyowApplication
  class Application < Pakyow::Application
    config.app.default_environment = :development
  
    configure(:development) do
    end
    
    routes do
      default :ApplicationController, :index

      post 'messages', :MessagesController, :create
    end
    
    middleware do
    end
  end
end
