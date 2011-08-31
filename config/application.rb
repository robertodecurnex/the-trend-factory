require 'rubygems'
require 'pakyow'

module PakyowApplication
  class Application < Pakyow::Application
    config.app.default_environment = :development
  
    configure(:development) do
    end
    
    routes do
      default :ApplicationController, :index

      get 'messages', :MessagesController, :index

      post 'messages', :MessagesController, :create

      get 'messages/edit/:id', :MessagesController, :edit

      post 'messages/:id', :MessagesController, :update
    end
    
    middleware do
    end
  end
end
