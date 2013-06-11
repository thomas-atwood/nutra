Nutra::Application.routes.draw do
  get "science/show"

  get "company/about"

  get "company/contact"

  get "company/contact_create"

  get "consultation/new"

  get "consultation/create"

  get "consultation/show"

  get "child/new"

  get "child/create"

  get "child/show"

  get "child/list"

  get "profile/new"

  get "profile/create"

  get "profile/show"

  get "profile/edit"

  get "program/show"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end