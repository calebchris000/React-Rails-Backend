# frozen_string_literal: true

Rails.application.routes.draw do
  get 'greetings/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope :api, defaults: { format: :json } do
    resources :greetings
  end
end
