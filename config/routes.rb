require "resque/server"
require "sidekiq/web"

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  mount Resque::Server.new, at: "/resque"
  mount Sidekiq::Web, at: "/sidekiq"
end
