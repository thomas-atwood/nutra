Nutra::Application.routes.draw do
  resources :patients


  get "social/parents"

  get "social/newsletter"

  get "social/story"

  get "social/friends"

  get "social/suggestions"

  get "supplement/order"

  get "supplement/list"

  get "supplement/show"

  get "evaluation/show"

  get "evaluation/list"

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